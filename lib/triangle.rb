class Triangle
  attr_accessor :side_a, :side_b, :side_c
  # write code here
  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end

  def kind
    if side_a == side_b && side_b == side_c
      return :equilateral
    elsif side_a == side_b || side_b == side_c || side_a == side_c
      return :isosceles
    elsif side_a != side_b && side_b != side_c
      return :scalene
    elsif (side_a + side_b) <= side_c || (side_a + side_c) <= side_b || (side_b + side_c) <= side_a
      begin
        raise TriangleError
      end
    end
  end

  class TriangleError < StandardError

      end

end
