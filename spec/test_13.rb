require_relative 'spec_helper.rb'

describe Unit do
  
  describe "#dead?" do
    it "should not be able to attack when dead" do
      @unit = Unit.new(0, 5)
      @enemy = Unit.new(40, 5)
      expect(@enemy.attack!(@unit)).to eq(nil)
    end
  end

  describe "#dead?" do
    it "should not be able to attack dead enemy" do
      @unit = Unit.new(40, 5)
      @enemy = Unit.new(0, 5)
      expect(@unit.attack!(@enemy)).to eq(nil)
    end
  end
end