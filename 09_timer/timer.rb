class Timer
  attr_writer :seconds
  attr_writer :time_string

  def seconds
    @seconds = 0
  end

  def time_string()
    case @seconds
    when 0
      @time_string = '00:00:00'
    when 0..59
      @time_string = '00:00:' + padded(@seconds)
    when 60..3599
      @time_string = '00:' + padded(@seconds / 60) + ':' + padded(@seconds % 60)
    else
      @time_string = padded(@seconds / 3600) + ':' + padded((@seconds - 3600 * (@seconds / 3600)) / 60) + ':' + padded((@seconds - 3600 * ((@seconds / 3600))) % 60)
    end

    @time_string
  end

  def padded(sec)
    str = ''
    if sec < 10
      str = '0' + sec.to_s
    else
      str = sec.to_s
    end
  end

end
