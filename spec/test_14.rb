require_relative 'spec_helper.rb'

describe SiegeEngine do

  before :each do
    @siege_engine = SiegeEngine.new
  end

  describe "#health_points" do
    it "should initialize a new siege engine with 400 health points" do
      expect(@siege_engine.health_points).to eq(400)
    end
  end

  describe "#health_points" do
    it "should initialize a new siege engine with 50 attack power" do
      expect(@siege_engine.attack_power).to eq(50)
    end
  end


  describe '#damage' do
    it "should lose hp for the enemy unit's damage" do
      @enemy_unit = Unit.new(40, 5)
      expect(@siege_engine).to receive(:damage).with(5)
      @enemy_unit.attack!(@siege_engine)
    end
  end

    describe '#damage' do
    it "should not be able to attack an enemy footman" do
      @enemy_footman = Footman.new
      expect(@siege_engine.attack!(@enemy_footman)).to eq(nil)
    end
  end

  describe '#damage' do
    it "should not be able to attack an enemy peasant" do
      @enemy_peasant = Peasant.new
      expect(@siege_engine.attack!(@enemy_peasant)).to eq(nil)
    end
  end

  describe '#damage' do
    it "should be able to attack an enemy siege engine" do
      @enemy_siege_engine = SiegeEngine.new
      expect(@siege_engine.attack!(@enemy_siege_engine)).to be_truthy
    end
  end

  describe '#damage' do
    it "should damage barracks for double it's attack power" do
      @enemy_barracks = Barracks.new
      expect(@enemy_barracks).to receive(:damage).with(100)
      @siege_engine.attack!(@enemy_barracks)
    end
  end

end
