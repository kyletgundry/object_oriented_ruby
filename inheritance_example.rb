class Vehicle
  def initialize(input_hash)
    @speed = 0
    @direction = 'north'
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Car < Vehicle 

  attr_reader :fuel
  def initialize(input_hash)
    super
    @fuel = input_hash[:fuel]
    @make = input_hash[:make]
    @model = input_hash[:model]
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle



  def initialize(input_hash)
    super
    @speed = input_hash[:speed]
    @type = input_hash[:type]
    @weight = input_hash[:weight]
  end

  def ring_bell
    puts "Ring ring!"
  end
end

car = Car.new fuel: "premium", make: "Cadillac", model: "CTS" 
bike = Bike.new speed: "10 speed", type: "Huffy", weight: "20 lbs"

car.honk_horn
bike.ring_bell

p car.fuel