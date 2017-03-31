class Spaceship
  attr_accessor :name
  attr_reader :speed
  def initialize(name, speed)
    @name = name
    @speed = speed
    @shield_active = false
    @location = "Earth"
  end
  def disable_shield
    puts "Dropping Shields..."
    @shield_active = false
  end
  def enable_shield
    puts "Raising SHields..."
    @shield_active = true
  end
  def warp_to(location)
    puts "Traveling at #{@speed} MPH to #{location}."
    @location = location
  end
end

# Driver code
ship1 = Spaceship.new( "USS Enterprise", 200000)
p ship1
ship2 = Spaceship.new( "HMS Andromeda", 108277)
p ship2

p ship1.name
ship1.name = "SSS S S S"
p ship1.name
p ship1.speed
# ship1.speed = 2000 works as intended by throwing and error
p ship1

ship2.enable_shield
ship2.disable_shield

ship2.warp_to("Mars")
