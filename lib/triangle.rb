class Triangle
  attr_accessor :side1, :side2, :side3, :kind
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    
    if side1 == 0 or side2 == 0 or side3 == 0
      begin
        raise TriangleError
      rescue TriangleError => error
        puts error.zero_length_message
      end
    elsif side1 == side2 && side2 == side3
      @kind = :equilateral
    elsif side1 == side2 || side1 == side3 || side2 == side3
      @kind = :isosceles 
    else
      @kind = :scalene 
    end
  end
  
  class TriangleError < StandardError
    def zero_length_message
      "All side lengths must be nonzero!"
    end 
  end
end
