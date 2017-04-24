
class Parcel
  def initialize(length, width, weight)
    @length = length
    @width = width
    @weight = weight
  end

  def volume?
    volume = @length * @width
  end

  def shipping_cost?
    cost = @length * @width * @weight / 4
  end
end
