module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end
  def self.yell_happily(words)
    words.upcase + "!" + " :)"
  end
  # Driver Code
  yell_happily("hello")
  yell_angrily("good buy")
end