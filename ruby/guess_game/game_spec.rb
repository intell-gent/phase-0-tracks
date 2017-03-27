require_relative 'game'
describe WordGuessGame do
  let(:game) {WordGuessGame.new("gold")}

  it "Updates the output if correct guess" do
    expect(game.check_guess("g")).to eq "g _ _ _"
    expect(game.check_guess("o")).to eq "g o _ _"
    expect(game.check_guess("l")).to eq "g o l _"
    expect(game.check_guess("d")).to eq "g o l d"
  end
  it "returns error if letter is not part of the word or is a repeated letter" do
    expect(game.check_guess("p")).to eq "Sorry there are no: p"
    expect(game.check_guess("p")).to eq  "repeated letter"
  end
  
  it "returns error is you try to enter more than one letter" do
    expect(game.check_guess("pz")).to eq  "Your answer is more that one character"
  end
end