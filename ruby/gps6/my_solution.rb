# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'

class VirusPredictor

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  
  def virus_effects
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
    print_report(@state)
  end

  private

  def predicted_deaths(population_density, population, state)
    # predicted deaths is solely based on population density
    if @population_density >= 200
      @number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      @number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      @number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      @number_of_deaths = (@population * 0.1).floor
    else
      @number_of_deaths = (@population * 0.05).floor
    end

  end

  def speed_of_spread(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    @speed = 0.0

    if @population_density >= 200
      @speed += 0.5
    elsif @population_density >= 150
      @speed += 1
    elsif @population_density >= 100
      @speed += 1.5
    elsif @population_density >= 50
      @speed += 2
    else
      @speed += 2.5
    end

  end

  def print_report(state)
    puts "#{state} will lose #{@number_of_deaths} people in this outbreak"
    puts " and will spread across the state in #{@speed} months.\n\n"
  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects
STATE_DATA.each do |state, population_data|

  current_state = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
  current_state.virus_effects

end


#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?
  # one has a variable assigned to it the other inherits the key for its label 
# What does require_relative do? How is it different from require?
  # it is the relative path to a file that allows you to reference data
  # require is for referencing a library like rSPEC
# What are some ways to iterate through a hash?
  # each and using do
# When refactoring virus_effects, what stood out to you about the variables, if anything?
  # they were being passed similar values.
# What concept did you most solidify in this challenge?
  #use of each and how to make your code more DRY.