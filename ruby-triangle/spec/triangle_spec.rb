require 'rspec'
require 'triangle'


describe(Triangle) do
  describe("#triangle?")
  it ('checks that input equates to a triangle') do
    test_triangle = Triangle.new(3, 3, 3)
    expect(test_triangle.triangle?).to(eq(true))
  end

  it ('checks that input equates to a triangle') do
    test_triangle = Triangle.new(2, 8, 8)
    expect(test_triangle.triangle?).to(eq(true))
  end

  describe("#equilateral?")
  it ('checks that input is an equilateral triangle') do
    test_triangle = Triangle.new(2, 2, 2)
    expect(test_triangle.equilateral?).to(eq(true))
  end
  it ('checks that input is not an equilateral triangle') do
    test_triangle = Triangle.new(2, 8, 8)
    expect(test_triangle.equilateral?).to(eq(false))
  end

  describe("#isosceles?")
  it ('checks that input is an isosceles triangle') do
    test_triangle = Triangle.new(2, 8, 8)
    expect(test_triangle.isosceles?).to(eq(true))
  end
  it ('checks that input is not an isosceles triangle') do
    test_triangle = Triangle.new(2, 3, 8)
    expect(test_triangle.isosceles?).to(eq(false))
  end

  describe("#scalene?")
  it ('checks that input is an scalene triangle') do
    test_triangle = Triangle.new(2, 3, 4)
    expect(test_triangle.scalene?).to(eq(true))
  end
  it ('checks that input is not an scalene triangle') do
    test_triangle = Triangle.new(2, 2, 8)
    expect(test_triangle.scalene?).to(eq(false))
  end

  describe("#triangle_type?")
  it ('runs all the logic to determine what triangle the input is') do
    test_triangle = Triangle.new(2, 2, 2)
    expect(test_triangle.triangle_type?).to(eq('equilateral'))
  end
  it ('runs all the logic to determine what triangle the input is') do
    test_triangle = Triangle.new(2, 8, 8)
    expect(test_triangle.triangle_type?).to(eq('isosceles'))
  end

  it ('runs all the logic to determine what triangle the input is') do
    test_triangle = Triangle.new(2, 3, 4)
    expect(test_triangle.triangle_type?).to(eq('scalene'))
  end

  it ('runs all the logic to determine what triangle the input is') do
    test_triangle = Triangle.new(1, 2, 3)
    expect(test_triangle.triangle_type?).to(eq('is not a triangle'))
  end


end
