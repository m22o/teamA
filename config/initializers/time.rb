class Time
  def between_over_midnight?(time_before_midnight, time_after_midnight)
    if (0..time_after_midnight.hour).cover? self.hour
      # 検証時刻がmidnight以後
      date_from = self - 1.day
    else
      # 検証時刻がmidnight以前
      date_from = self
    end

    date_to = date_from + 1.day

    time_from = Time.new(date_from.year, date_from.month, date_from.day,
                         time_before_midnight.hour, time_before_midnight.min, time_before_midnight.sec)
    time_to   = Time.new(date_to.year, date_to.month, date_to.day,
                         time_after_midnight.hour, time_after_midnight.min, time_after_midnight.sec)

    (time_from..time_to).cover? self
  end
end
