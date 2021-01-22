class Triangle
  attr_accessor :leg1, :leg2, :leg3

  def initialize(leg1, leg2, leg3)
    @leg1 = leg1
    @leg2 = leg2
    @leg3 = leg3
  end

  def kind
    if @leg1 + @leg2 <= @leg3 || @leg1 + @leg3 <= @leg2 || @leg2 + @leg3 <= @leg1 || @leg1 == 0 || @leg2 == 0 || @leg3 == 0
      begin
        raise TriangleError
      end
    elsif @leg1 == @leg2 && @leg1 == @leg3
      return :equilateral
    elsif @leg1 == @leg2 || @leg1 == @leg3 || @leg2 == @leg3
      return :isosceles
    else
      return :scalene      
    end
  end

  class TriangleError < StandardError
  end
end