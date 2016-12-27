class Restaurant < ActiveRecord::Base

  def time_range_include_now?
    now = Time.zone.now
    if start_time < end_time
      # 同日内範囲
      now.between?(start_time, end_time)
    else
      # 日付またぎ範囲
      now.between_over_midnight?(start_time, end_time)
    end
  end

end
