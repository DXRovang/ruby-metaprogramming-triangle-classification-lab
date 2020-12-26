require "pry"

class Triangle

  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a 
    @b = b 
    @c = c   
      #binding.pry
  end

  def valid?
    if self.a > 0 && self.b >0 && self.c > 0
      if (@a + @b > @c) && (@b + @c > @a) && (@c + @a > @b)
        true
      end
    end
  end

  def kind
    if valid?
      if (self.a == self.b) && (self.b == self.c) 
        triangle = :equilateral
      elsif (self.a != self.b) && (self.b != self.c) && (self.c != self.a)
        triangle =  :scalene
      else
        triangle = :isosceles
      end
      triangle
    else
      raise TriangleError
    end        
  end

  class TriangleError < StandardError
    # triangle error code
  end
 
end
