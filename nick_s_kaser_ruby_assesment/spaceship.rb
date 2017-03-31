class Spaceship
  attr_accessor :name
  attr_reader :speed
  def initialize(name, speed)
    @name = name
    @speed = speed
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