class Darts

  def initialize(x, y)
    @x = x
    @y = y
  end

 def score
  if @x <= 1 && @y <= 1
    10
  elsif @x <= 5 && @y <= 5
    5
  elsif @x <= 10 && @y <= 10
    1
  else
    0
  end
 end

end