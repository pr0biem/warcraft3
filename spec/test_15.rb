require_relative 'spec_helper.rb'
describe Barracks do

  before :each do
    @barracks = Barracks.new
  end

  describe "#can_train_siege_engine?" do
    it "returns true if there are enough resources to train a siege engine" do
      expect(@barracks.can_train_siege_engine?).to be_truthy
    end

    it "returns false if there isn't enough food" do
      expect(@barracks).to receive(:food).and_return(1)
      expect(@barracks.can_train_siege_engine?).to be_falsey
    end

    it "returns false if there isn't enough gold" do
      expect(@barracks).to receive(:gold).and_return(134)
      expect(@barracks.can_train_siege_engine?).to be_falsey
    end

  it "returns false if there isn't enough lumber" do
      expect(@barracks).to receive(:lumber).and_return(59)
      expect(@barracks.can_train_siege_engine?).to be_falsey
    end
  end
end