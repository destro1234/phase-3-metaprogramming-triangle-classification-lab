class Triangle
  attr_reader :sideA, :sideB, :sideC
  # triangle code

  def initialize( sideA, sideB, sideC)
    @sideA = sideA
    @sideB = sideB
    @sideC = sideC
  end

  def kind
    validate
    if @sideA == @sideB && @sideB == @sideC
      :equilateral
    elsif @sideA == @sideB || @sideB == @sideC || @sideA == @sideC
      :isosceles
    else
      :scalene
     end

  end

  def sides_larger_than_zero
    @sideA > 0 && @sideB > 0 && @sideC > 0 ? true : false
  end

  def inequality
    @sideA + @sideB > @sideC && @sideB + @sideC > @sideA && @sideA + @sideC > @sideB ? true : false
  end
  
  def validate
    if sides_larger_than_zero && inequality
      nil
    else
      raise TriangleError
    end
  end

  class TriangleError < StandardError
    # triangle error code
  end
end
