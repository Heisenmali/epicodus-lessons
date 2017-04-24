# ruby code
class Triangle
  def initialize(side1, side2, side3)
    @a = side1
    @b = side2
    @c = side3
  end

  def triangle_type?
    if triangle?
      if equilateral?
        'equilateral'
      elsif isosceles?
        'isosceles'
      else
        'scalene'
      end
    else
      'is not a triangle'
    end
  end

  def triangle?
    !((@a + @b) <= @c || (@a + @c) <= @b || (@b + @c) <= @a)
  end

  def equilateral?
    (@a == @b) && (@a == @c)
  end

  def isosceles?
    (@a == @b) || (@a == @c) || (@b == @c)
  end

  def scalene?
    (@a != @b) && (@a != @c) && (@b != @c)
  end
end
