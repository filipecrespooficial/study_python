class Microwave
  def initialize(time)
    @time = time
  end

  def timer
    if @time <= 90
      minute = @time / 60
      second = @time % 60

      minute = minute < 10 ? "0#{minute}" : minute
      second = second < 10 ? "0#{second}" : second
    else
      v = @time.to_s.chars
      if v.size <= 3
        minute = "0#{v[0]}"
        second = "#{v[1]}#{v[2]}"
      else
        minute = "#{v[0]}#{v[1]}"
        second = "#{v[2]}#{v[3]}"
      end
    end
    "#{minute}:#{second}"
  end
end