class Building
  attr_accessor :health_points
  def initialize
    @health_points = 500
  end

  def dead?
    self.health_points <= 0
  end
end