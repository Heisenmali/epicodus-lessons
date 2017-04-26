class Vehicle

  @@vehicles = []

  attr_accessor :make
  attr_accessor :model
  attr_accessor :vehicle_year
  attr_accessor :id


  def initialize(make, model, year)
    self.make = make
    self.model = model
    self.vehicle_year = year
    self.id = @@vehicles.length + 1
  end

  def Vehicle.all
    @@vehicles
  end

  def save
    @@vehicles.push(self)
  end

  def Vehicle.find(searched_id)
    @@vehicles.each do |vehicle|
      if vehicle.id == searched_id
        return vehicle
      end
    end
    nil
  end

  def Vehicle.clear
    @@vehicles = []
  end

  def age
    current_year = Time.new.year
    current_year.-(vehicle_year)
  end

  def worth_buying?
    american_cars = ["Chrysler", "Ford", "GM"]
    american_cars.include?(make) && age <= 15
  end


end
