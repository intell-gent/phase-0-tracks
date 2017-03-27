class WordGuessGame
  attr_reader :guess_count, :is_over
  attr_accessor :word, :hide_word
  # One user can enter a word (or phrase, if you would like your game to support that), 
  def initialize(word = gets.chomp)
    puts "Give me a word for someone to guess."
    @word = word
    @hide_word = ""
    #the number of guesses available is related to the length of the word.
    @max_guess = @word.length
    @guess = []
    @guess_count = 0
    @is_over = false
    hide_word_builder
  end

  def hide_word_builder
    while @hide_word.length < @word.length * 2
      @hide_word += "_ "
    end
      @hide_word.chop!
  end

  # build a container to hold game logic 
  def check_guess(guess)
    @guess_count += 1
    if @guess.include?(guess)
      # Repeated guesses do not count against the user.
      puts "You already answer that letter"
      @guess_count -= 1
    end
    # The guessing player receives continual feedback on the current state of the word. 
    # So if the secret word is "unicorn", the user will start out seeing something 
    # like "_ _ _ _ _ _ _", which would become "_ _ _ c _ _ _" after the user enters a guess of "c".
    if @word.include?(guess) && guess.length == 1
      @hide_word = @hide_word.split(" ")
      i = @word.index(guess)
      @guess << guess
      @hide_word[i] = guess
      @hide_word =  @hide_word.join(" ")
    elsif guess.length > 1
      puts "Your answer is more that one character"
       @guess_count -= 1
    else
      puts "Sorry there are no: #{guess}"
    end
    # end condition
    if @guess_count == @max_guess
        @is_over = true
        p @hide_word
        @hide_word = @hide_word.split()
        @hide_word = @hide_word.join()
    else
        false
    end
    # The user should get a congratulatory message if they win, and a taunting message if they lose   
    puts "the word was: #{@word}"
    puts "Here is what you had: #{@hide_word}"
    if @word == @hide_word
        puts "Congratulations you WIN!!"
      else
        puts "Ha Ha you lost better luck next time."
    end
  end
  
end

def user_interface
  # build a user interface for interaction 
  # user interface
  puts "Welcome to the Word Guess Game!"
  game = WordGuessGame.new

  while !game.is_over
    puts "What is the word i am thinking of: #{game.hide_word}? Enter a letter of the alphabet"
    guess = gets.chomp.downcase
    game.check_guess(guess)
  end
end
user_interface