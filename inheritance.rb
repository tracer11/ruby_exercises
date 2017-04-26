class Vehicle
  def initialize
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
  def initialize(input_options)
    super()
    @fuel = input_options[:fuel]
    @make = input_options[:make]
    @model = input_options[:model]
  end

  attr_reader :fuel, :make, :model

  def honk_horn
    puts "Beeeeeeep!"
  end
end



class Bike < Vehicle

  def initialize(input_options)
  super() 
    @type = input_options[:type]
    @weight = input_options[:weight]
  end

  attr_reader :type, :weight

  def ring_bell
    puts "Ring ring!"
  end
end

bike = Bike.new(
                type: "super")

car = Car.new(
              fuel: "gas",
              make: "Toyota",
              model: "Supra")

p car.make
p car.model


