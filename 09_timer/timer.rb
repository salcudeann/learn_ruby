class Timer
  attr_writer :seconds
  attr_writer :time_string

  def seconds
    @seconds = 0
  end

  def time_string()
    case @seconds
    when 0
      "00:00:00"
    when 0..59
      "00:00:#{left_pad(@seconds)}"
    when 60..3599
      "00:#{left_pad(@seconds / 60)}:#{left_pad(@seconds % 60)}"
    else
      "#{left_pad(hours)}:#{left_pad(minutes)}:#{left_pad(secs)}"
    end
  end

  def left_pad(sec)
    sec.to_s.rjust(2, '0')
  end

  def hours
    @seconds / 3600
  end

  def minutes
    (@seconds - 3600 * hours) / 60
  end

  def secs
    (@seconds - 3600 * hours) % 60
  end
end
