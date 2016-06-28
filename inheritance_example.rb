class Vehicle

  def initialize(speed, direction)
    @speed = speed
    @direction = direction
  end

  def brake
    @speed = 0
  end

  def accelerate(speed)
    @speed += speed
  end

  def turn(new_direction)
    @direction = new_direction
  end

end

class Car < Vehicle
  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  def ring_bell
    puts "Ring ring!"
  end
end

car = Car.new(0, 'north')
car.accelerate(10)
car.honk_horn

bike = Bike.new(0, 'north')
bike.accelerate(10)
bike.ring_bell
