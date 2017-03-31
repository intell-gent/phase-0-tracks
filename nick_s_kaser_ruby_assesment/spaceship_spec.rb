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
  it "can beam items aboard and if it is not too large" do
    expect(ship.tractor_beam("cow")).to eq true
    expect(ship.tractor_beam("giant cow")).to eq false
  end
  # pick up
  it "can pick up items and add to inventory" do
    expect(ship.pickup("cow","Mars")).to eq true
  end
  # total weight
  it "can return the total weight of cargo" do
    ship.pickup("cow","Mars")
    ship.pickup("cat","Space")
    ship.pickup("bird","Venus")
    expect(ship.total_weight).to eq 1058
  end

end