# http://classic.battle.net/war3/human/units/footman.shtml

class Footman < Unit
  attr_accessor :hp, :ap
  def initialize
    @hp = 60
    @ap = 10
    # Need to default the 2 instance variables here
    # Also also give code outside this class access to these variables (via attr_reader, attr_writer or attr_accessor)
  end

  def attack!(enemy)
    enemy.damage(ap)
  end

  def damage(ap)
    self.hp -= ap
  end
end
