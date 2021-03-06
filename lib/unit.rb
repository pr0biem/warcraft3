class Unit
  attr_reader :health_points, :attack_power
  def initialize(hp, ap)
    @health_points = hp
    @attack_power = ap
    # Need to default the 2 instance variables here
    # Also also give code outside this class access to these variables (via attr_reader, attr_writer or attr_accessor)
  end

  def damage(ap)
    @health_points -= ap
  end

  def attack!(enemy)
    return nil if self.dead?
    return nil if enemy.dead?
    if enemy.is_a? Barracks
      enemy.damage((attack_power.to_f / 2).ceil)
    else 
      enemy.damage(attack_power)
    end
  end

  def dead?
    self.health_points <= 0
  end
end
