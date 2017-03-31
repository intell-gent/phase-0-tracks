class Spaceship
  attr_accessor :name
  attr_reader :speed
  def initialize(name, speed)
    @name = name
    @speed = speed
    @shield_active = true
    @location = "Earth"
    @inventory = {}
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
  def tractor_beam(string_desc)
    weight = get_weight(string_desc)
    disable_shield
    if weight < 500
      puts "Beaming up #{string_desc}"
      @inventory[string_desc] = @location
      true
    else
      puts "sorry can not beam aboard the: #{string_desc} is too heavy."
      enable_shield
      return false
    end
    enable_shield
  end
  def pickup(desc, location)
    warp_to(location)
    tractor_beam(desc)
  end
  def print_invintory
    puts "Here is a list of the ships Cargo hold: "
    puts "----------------------------------------"
    @inventory.each do |item, location|
      puts "A #{item} was picked up at: #{location}"
    end
    puts "----------------------------------------"
  end
  def total_weight
    weight = 0
    @inventory.each do |item, location|
      weight += get_weight(item)
    end
    weight
  end
  private
  def get_weight(string)
    weight = 0
    string = string.chars
    string.each do |letter|
      weight += letter.ord
    end
    weight
  end

end

# Driver code
# ship1 = Spaceship.new( "USS Enterprise", 200000)
# p ship1
# ship2 = Spaceship.new( "HMS Andromeda", 108277)
# p ship2

# p ship1.name
# ship1.name = "SSS S S S"
# p ship1.name
# p ship1.speed
# # ship1.speed = 2000 works as intended by throwing and error
# p ship1

# ship2.enable_shield
# ship2.disable_shield

# ship2.warp_to("Mars")
# p ship2

# ship1.tractor_beam("cow")
# ship1.tractor_beam("giant cow")

# ship2.pickup("cow","Mars")
# ship2.pickup("cat","Space")
# ship2.pickup("bird","Venus")

# ship2.print_invintory

# p ship1.total_weight
# p ship2.total_weight