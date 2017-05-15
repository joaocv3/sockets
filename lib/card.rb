class Card
  attr_reader :id, :name, :dribbling, :shot_power, :sprint_speed, :passing, :stamina

  def initialize id, name, dribbling, shot_power, sprint_speed, passing, stamina
    @id = id
    @name = name
    @dribbling = dribbling
    @shot_power = shot_power
    @sprint_speed = sprint_speed
    @passing = passing 
    @stamina = stamina
  end
end
