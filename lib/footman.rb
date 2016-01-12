# http://classic.battle.net/war3/human/units/footman.shtml

class Footman < Unit

  def initialize
    @hp = 60
    @ap = 10
    # Need to default the 2 instance variables here
    # Also also give code outside this class access to these variables (via attr_reader, attr_writer or attr_accessor)
  end

  def health_points
    @hp
  end

  def attack_power
    @ap
  end

end
