require_relative "spaceship"
describe Spaceship do
  let(:ship) {Spaceship.new("USS Enterprise", 200000)}
  # naming
  it "can read the name and write a new one" do
    expect(ship.name).to eq "USS Enterprise"
    ship1.name = "SSS S S S"
  end
  # # read speed
  # it "Placeholder" do
  #   expect(ship.cod()).to eq "foo"
  #   p ship1.speed
  # end

  # # shields
  # it "Placeholder" do
  #   expect(ship.cod()).to eq "foo"
  #   ship2.enable_shield
  #   ship2.disable_shield
  # end
  # # warp
  # it "Placeholder" do
  #   expect(ship.cod()).to eq "foo"
  #   ship2.warp_to("Mars")
  # end
  # # Beam
  # it "Placeholder" do
  #   expect(ship.cod()).to eq "foo"
  #   ship1.tractor_beam("cow")
  #   ship1.tractor_beam("giant cow")
  # end
  # # pick up
  # it "Placeholder" do
  #   expect(ship.cod()).to eq "foo"
  #   ship2.pickup("cow","Mars")
  #   ship2.pickup("cat","Space")
  #   ship2.pickup("bird","Venus")
  # end
  # # total weight
  # it "Placeholder" do
  #   expect(ship.cod()).to eq "foo"
  #   ship2.pickup("cow","Mars")
  #   ship2.pickup("cat","Space")
  #   ship2.pickup("bird","Venus")
  #   ship2.total_weight
  # end

end