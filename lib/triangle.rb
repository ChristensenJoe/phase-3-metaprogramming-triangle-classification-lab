class Triangle
  def initialize(side_one, side_two, side_three)
    if (side_one > 0 && side_two > 0 && side_three > 0) && (side_one + side_two > side_three && side_two + side_three > side_one && side_three + side_one > side_two)
      @side_one = side_one
      @side_two = side_two
      @side_three = side_three
    else
      raise TriangleError
    end
  end

  def kind
    if @side_one == @side_two && @side_two == @side_three
      :equilateral
    elsif @side_one == @side_two || @side_two == @side_three || @side_three == @side_one || @side_three == @side_two
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
    def message
      "Triangle Error"
    end
  end
end
