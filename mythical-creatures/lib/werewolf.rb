class Werewolf

  attr_accessor :name, :location, :human, :wolf, :hungry
  def initialize(name, location = "")
    @name = name
    @location = location
    @human = true
    @wolf = false
    @hungry = false
  end

  def human?
    @human
  end

  def wolf?
    @wolf
  end

  def change!
    @human = !@human
    @wolf = !@wolf
    @hungry = !@hungry
  end

  def consume(victim)
    if @wolf == true
      victim.status = :dead
      @hungry = false
    else
      p "Humans can't consume humans."
    end
  end

end

class Victim
  attr_accessor :status

  def initialize
    @status = :alive
  end
end
