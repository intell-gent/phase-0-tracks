require_relative "spaceship"
describe Spaceship do
  let(:ship) {Spaceship.new("USS Enterprise", 200000)}
  # naming
  it "can read the name and updates when given a new one" do
    expect(ship.name).to eq "USS Enterprise"
    ship.name = "USS Doomed"
    expect(ship.name).to eq "USS Doomed"
  end
  # read speed
  it "Can read the speed outside the class" do
    expect(ship.speed).to eq 200000
  end

  # shields
  it "Can change the state of shields" do
    expect(ship.disable_shield).to eq false
    expect(ship.enable_shield).to eq true
  end
  # warp
  it "Can warp to new locations" do
    expect(ship.warp_to("Mars")).to eq "Mars"
  end
  # Beam
  it "can beam items aboard and it it is not too large" do
    expect(ship.tractor_beam("cow")).to eq true
    expect(ship.tractor_beam("giant cow")).to eq false
  end
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