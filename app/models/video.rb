class Video < ApplicationRecord
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks
  belongs_to :user, counter_cache: :videos_count
  has_many :comments
  has_many :video_column_ships, dependent: :destroy

  mount_uploader :cover, CoverUploader
  mount_uploader :src, VideoUploader

  validates :name, presence: true, uniqueness: true
  validates :user_id, :column_ids, presence: true
  validates :status, presence: true, inclusion: [0, 1, 2]
  validates :video_cover, presence: true, if: 'cover.blank?'
  validates :video_src, presence: true, if: 'src.blank?'
  before_validation :check_column_ids
  after_create :add_video_column
  after_update :update_column, :update_search_date
  after_save :update_video_cover_or_src, :update_video_duration

  mapping dynamic: false do
    indexes :name
    indexes :status
    indexes :created_at, type: :date
    indexes :user_id, type: :integer
  end

  def as_indexed_json(_options = {})
    as_json(include: {:user => {:only => [:id, :nickname, :avatar]}})
  end

  def related_videos(size = 5)
    opts = {
        query: {
            more_like_this: {
                fields: [:name],
                docs: [
                    {
                        _index: self.class.index_name,
                        _type: self.class.document_type,
                        _id: id
                    }
                ],
                min_term_freq: 1,
                min_doc_freq: 1
            }
        },
        sort: {
            created_at: {order: :desc}
        },
        size: size,

    }
    videos = Elasticsearch::Model.search(opts, Video)
    videos = JSON.parse(videos.to_json)
    videos.map { |x| {
        id: x["_id"],
        user_id: x["_source"]["user_id"],
        name: x["_source"]["name"],
        full_name: x["_source"]["name"],
        pv: x["_source"]["pv"],
        video_cover: x["_source"]["video_cover"],
        video_duration: x["_source"]["video_duration"],
        duration: x["_source"]["duration"],
        favorites_count: x["_source"]["favorites_count"],
        likes_count: x["_source"]["likes_count"],
        nickname: x["_source"]["user"]["nickname"],
        author_avatar: x["_source"]["user"]["avatar"],
        created_at: x["_source"]["created_at"],
    } }
  end

  def update_search_date
    if user_id_changed?
      __elasticsearch__.index_document
    end
  end

  def check_column_ids
    column_ids = self.column_ids.map(&:to_i)
    if column_ids.include? 0
      errors[:base] << '栏目参数不规范'
    end
  end


  def update_video_cover_or_src
    if cover_changed? || src_changed?
      self.video_cover = cover_url if cover_changed?
      self.video_src = src_url if src_changed?
      clear_attribute_changes([:cover, :src])
      self.save
    end
  end

  def update_video_duration
    return unless video_src_changed?
    return if video_src.blank?
    return if Rails.env == 'test'
    require 'net/http'
    uri = URI("#{video_src}?avinfo")
    res = Net::HTTP.get(uri) rescue nil
    if res.nil?
      Rails.logger.debug "get video duration fail (video_id:#{self.id}) due to net::http"
      return
    end

    json = JSON.parse(res)
    if json["format"] && json["format"]["duration"]

      t = json["format"]["duration"].to_i
      case t
        when 0..59
          duration = "00:"+("0#{t}")[-2..-1]
        when 60..3599
          m = t/60
          s = t-m*60
          duration = "#{("0#{m}")[-2..-1]}:#{("0#{s}")[-2..-1]}"
        when 3600..359999
          h = t/3600
          m = (t - (h*3600))/60
          s = t-m*60-h*3600
          duration = "#{("0#{h}")[-2..-1]}:#{("0#{m}")[-2..-1]}:#{("0#{s}")[-2..-1]}"
        else
          duration = '--:--'
      end
      clear_attribute_changes([:video_src, :video_duration, :duration])
      self.update(video_duration: t, duration: duration)
    else
      Rails.logger.debug "get video duration fail (video_id:#{self.id}) due to has no json result"
    end
  end


  def add_video_column
    if column_ids.present?
      column_ids.each do |column_id|
        VideoColumnShip.create!(column_id: column_id, video_id: id)
      end
    end
  end

  def update_column
    if column_ids_changed?
      column_ids = self.column_ids.map(&:to_i)
      common_ids = column_ids_was & column_ids
      remove_ids = column_ids_was - common_ids
      add_ids = column_ids - common_ids

      if remove_ids.present?
        VideoColumnShip.transaction do
          VideoColumnShip.where(column_id: remove_ids, video_id: id).destroy_all
        end
      end

      if add_ids.present?
        VideoColumnShip.transaction do
          add_ids.each do |column_id|
            VideoColumnShip.find_or_create_by!(column_id: column_id, video_id: id)
          end
        end
      end
    end
  end
end
