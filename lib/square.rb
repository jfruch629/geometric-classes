class Square
  attr_reader :length, :x, :y, :width

  def initialize(length, x = 0, y = 0)
    @length = length
    @x = x
    @y = y
    @width = length
  end

  def diameter
    length*(Math.sqrt(2))
  end

  def perimeter
    length * 4
  end

  def area
    length ** 2
  end

  def contains_point?(x_input,y_input)
    if (((@x - length/2.0) <= x_input) && ((@x + length/2.0) >= x_input) && ((@y - length/2.0) <= y_input) && ((@y + length/2.0) >= y_input))
      true
    else
      false
    end
  end
end
