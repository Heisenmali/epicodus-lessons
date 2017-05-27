
class Parcel
  @@all_parcels = []

  def initialize(length, width, weight)
    @length = length
    @width = width
    @weight = weight
  end

  def Parcel.clear
    @@all_parcels = []
  end

  def Parcel.all
    @@all_parcels
  end

  def volume?
    volume = @length * @width
  end

  def shipping_cost?
    cost = @length * @width * @weight / 4
  end

  def save
    @@all_parcels.push(self)
  end

end
