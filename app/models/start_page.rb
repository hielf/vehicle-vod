class StartPage < ApplicationRecord

  validates :name, :start_time, :end_time, :cover, presence: true
  validates :url, presence: true, format: {with: /\A((ht|f)tps?):\/\/([\w\-]+(\.[\w\-]+)*\/)*[\w\-]+(\.[\w\-]+)*\/?(\?([\w\-\.,@?^=%&:\/~\+#]*)+)?/i, message: '不规范'}
  before_validation :check_time
  mount_uploader :cover, CoverUploader

  private

  def check_time
    if start_time.present? && end_time.present?
      if end_time < start_time
        errors[:end_time] << " 不能早于 开始时间"
      end
      repeat = false
      repeat_a = StartPage.where(start_time: start_time..end_time)
      repeat_b = StartPage.where(end_time: start_time..end_time)
      repeat_c = StartPage.where('start_time <= ?', start_time).where('end_time >= ?', start_time)

      if id.present?
        if (repeat_a.to_a - [self]).present? || (repeat_b.to_a - [self]).present? || (repeat_c.to_a - [self]).present?
          repeat = true
        end
      else
        if repeat_a.present? || repeat_b.present? || repeat_c.present?
          repeat = true
        end
      end

      if repeat.present?
        errors[:base] << "时间存在重叠"
      end
    else
      errors[:base] << "上线起始时间不能为空"
    end
  end
end
