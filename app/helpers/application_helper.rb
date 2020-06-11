module ApplicationHelper
  def logged_in?
    !@current_user.nil?
  end

  def show_gender(gender)
    case gender when 1
                  '男'
      when 2
        '女'
      else
        ''
    end
  end

  def show_status(boolean)
    raw(boolean ? '<label class="label label-danger">是</label>' : '<label class= "label label-default">否</label>')
  end

  def on_line_status(integer_status)
    raw(integer_status == 1 ? '<label class="label label-primary">是</label>' : '<label class= "label label-default">否</label>')
  end

  def pv_trans(pv)
    pv = pv.to_i
    case pv when 0..999
              pv
      when 1000..9999
        "#{(pv/1000.to_f).round(1)}千"
      else
        "#{(pv/10000).round(1)}万"
    end
  end
end
