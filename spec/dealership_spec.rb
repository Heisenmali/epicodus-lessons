require "dealership"
require "rspec"
require "pry"


describe(Vehicle) do
  describe("#initialize") do
    it("returns a new instance of the vehicle") do
      test_vehicle = Vehicle.new("Toyota", "Prius", 2000)
      expect(test_vehicle.make).to(eq("Toyota"))
    end
  end

    describe(".all") do
    it("returns all stored vehicles in the array") do
      test_vehicle = Vehicle.new("Chrysler", "Prius", 2000)
      expect(Vehicle.all).to(eq([]))
    end
    it("returns all stored vehicles in the array") do
      test_vehicle = Vehicle.new("Chrysler", "Prius", 2000)
      test_vehicle.save
      expect(Vehicle.all).to(eq([test_vehicle]))
    end
    it("returns resets the array") do
      test_vehicle = Vehicle.new("Chrysler", "Prius", 2000)
      test_vehicle.save
      test_vehicle.clear
      expect(Vehicle.all).to(eq([]))
    end
  end

  describe("#age") do
    it("returns the vehicles age") do
      test_vehicle = Vehicle.new("Toyota", "Prius", 2000)
      expect(test_vehicle.age()).to(eq(17))
    end
  end

  describe("#worth_buying?") do
    it("returns if the vehicle is american and less than 15 years old") do
      test_vehicle = Vehicle.new("Toyota", "Prius", 2000)
      expect(test_vehicle.worth_buying?).to(eq(false))
    end
    it("returns if the vehicle is american and less than 15 years old") do
      test_vehicle = Vehicle.new("Chrysler", "Prius", 2000)
      expect(test_vehicle.worth_buying?).to(eq(false))
    end
    it("returns if the vehicle is american and less than 15 years old") do
      test_vehicle = Vehicle.new("Chrysler", "Prius", 2010)
      expect(test_vehicle.worth_buying?).to(eq(true))
    end
  end


end
