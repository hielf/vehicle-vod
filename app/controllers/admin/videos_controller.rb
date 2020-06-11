class Admin::VideosController < AdminController
  before_action :set_video, only: [:edit, :show, :update, :destroy]

  # GET /admin/videos
  # GET /admin/videos.json
  def index
    name = params[:name]
    status = params[:status]
    column_name = params[:column_name]
    videos = Video.find_by_sql("select v.*,string_agg(c.name,',') as column_names,u.nickname from videos v left join users u on u.id = v.user_id left join video_column_ships v_c on v_c.video_id = v.id left join columns c on c.id = v_c.column_id where #{status.present? ? "v.status = #{status}" : 'v.status in (0,1,2)'}#{name.present? ? "and v.name like '%#{name}%'" : ''}#{column_name.present? ? "and c.name = '#{column_name}'" : ''} GROUP BY v.id,u.nickname")
    @videos = Kaminari.paginate_array(videos).page(params[:page]).per(params[:per])
  end

  # GET /admin/videos/1
  # GET /admin/videos/1.json
  def show
  end

  # GET /admin/videos/new
  def new
    @video = Video.new
  end

  # GET /admin/videos/1/edit
  def edit

  end

  # POST /admin/videos
  # POST /admin/videos.json
  def create
    @video = Video.new(video_params)
    @video.user_id = @current_user.id
    respond_to do |format|
      if @video.save
        format.html { redirect_to [:admin, @video], notice: t('activerecord.models.video') + ' 已成功创建.' }
        format.json { render action: 'show', status: :created, location: @video }
      else
        format.html { render action: 'new' }
        format.json { render json: @video.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/videos/1
  # PATCH/PUT /admin/videos/1.json
  def update
    respond_to do |format|
      if @video.update(video_params)
        format.html { redirect_to [:admin, @video], notice: t('activerecord.models.video') + ' 已成功更新.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @video.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/videos/1
  # DELETE /admin/videos/1.json
  def destroy
    @video.destroy
    respond_to do |format|
      format.html { redirect_to admin_videos_url, notice: t('activerecord.models.video') + ' 已成功删除.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_video
    @video = Video.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def video_params
    params.require(:video).permit(:name, :src, :cover, {:column_ids => []}, :status, :cover_cache, :src_cache)
  end
end