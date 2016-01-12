class Barracks < Building
  attr_accessor :food, :gold, :lumber
  def initialize
    super
    @gold = 1000
    @food = 80
    @lumber = 500
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

  def train_siege_engine
    return nil if can_train_siege_engine? == false
    self.gold -= 200
    self.food -= 3
    self.lumber -= 60
    SiegeEngine.new
  end

  def can_train_siege_engine?
    self.food >= 3 && self.gold >= 200 && self.lumber >= 60
  end
end
