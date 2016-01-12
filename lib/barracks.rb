class Barracks
  attr_accessor :food, :gold
  def initialize
    @gold = 1000
    @food = 80
  end

  def gold
    @gold
  end

  def food
    @food
  end

  def can_train_footman?
    self.food >= 2 && self.gold >= 135
  end

  def train_footman
    return nil if can_train_footman? == false
    self.gold -= 135
    self.food -= 2
    Footman.new
  end

  def train_peasant
    return nil if can_train_peasant? == false
    self.gold -= 90
    self.food -= 5
    Peasant.new
  end

  def can_train_peasant?
    self.food >= 5 && self.gold >= 90
  end

end
