module Moveable

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

class Car
  include Moveable
  
  attr_reader :fuel
  
  def initialize(input_hash)
    @speed = 0
    @direction = 'north'
    @fuel = input_hash[:fuel]
    @make = input_hash[:make]
    @model = input_hash[:model]
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike
  include Moveable
  def initialize(input_hash)
    @speed = 0
    @direction = 'north'
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