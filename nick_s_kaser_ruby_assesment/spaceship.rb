class Spaceship
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