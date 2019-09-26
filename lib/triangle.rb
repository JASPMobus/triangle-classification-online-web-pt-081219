class Triangle
  attr_accessor :side1, :side2, :side3, :type
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    
    if side1 == side2 && side2 == side3
      @type = :equilateral
    elsif side1 == side2 || side1 == side3 || side2 == side3
      @type = :isosceles 
    else
      @type = :scalene 
    end
  end
end
