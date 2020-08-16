class Triangle
  attr_accesor :side_a, :side_b, :side_c
  # write code here
  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end

  def kind
  end

  class TriangleError < StandardError
    # triangle error code
  end

end

