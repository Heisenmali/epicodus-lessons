class Vehicle

  @@vehicles = []

  attr_accessor :make
  attr_accessor :model
  attr_accessor :vehicle_year


  def initialize(make, model, year)
    self.make = make
    self.model = model
    self.vehicle_year = year
  end

  def Vehicle.all
    @@vehicles
  end

  def save
    @@vehicles.push(self)
  end

  def clear
    @@vehicles = []
  end

  def age
    current_year = Time.new.year
    current_year.-(vehicle_year)
  end

  def worth_buying?
    american_cars = ["Chrysler", "Ford", "GM"]
    american = american_cars.include?(make)
    new_enough = age <= 15
    american && new_enough
  end
end
