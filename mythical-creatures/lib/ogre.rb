class Ogre
  attr_accessor :name, :home, :swings, :encounter_counter
  def initialize(name, home =  "Swamp")
    @name = name
    @home = home
    @swings = 0
    @encounter_counter = 0
  end

  def encounter(human)
    @encounter_counter += 1
    human.encounter_counter += 1
    if human.notices_ogre?
      swing_at(human)
    end
  end

  def swing_at(human)
    @swings += 1
    if @swings % 2 == 0
      human.knocked_out = true
    end
  end

  def apologize(human)
    human.knocked_out = false
  end

end

class Human
  attr_reader :name
  attr_accessor :encounter_counter, :knocked_out
  def initialize
    @name = "Jane"
    @encounter_counter = 0
    @knocked_out = false
  end

  def notices_ogre?
    @encounter_counter % 3 == 0
  end

  def knocked_out?
    @knocked_out
  end

end
