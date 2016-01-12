require_relative 'spec_helper.rb'

describe Unit do

  before :each do
    @unit = Unit.new(40, 5)
  end

  describe "#dead?" do
    it "should be alive when created" do
      expect(@unit.dead?).to be_falsey
    end
  end

  describe "#dead?" do
    it "should take lethal damage from an enemy" do
      @enemy = Unit.new(40, 500)
      @enemy.attack!(@unit)
      expect(@unit.dead?).to be_truthy
    end
  end
end
