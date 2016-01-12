require_relative 'spec_helper.rb'

describe Barracks do

  before :each do
    @barracks = Barracks.new
  end

  describe "#health_points" do
    it "should initialize a new barracks with 500 health points" do
      expect(@barracks.health_points).to eq(500)
    end
  end

  describe '#damage' do
    it "should lose hp for half (rounded up) of the enemy unit's damage " do
      @enemy_unit = Unit.new(40, 5)
      expect(@barracks).to receive(:damage).with(3)
      @enemy_unit.attack!(@barracks)
    end
  end

end
