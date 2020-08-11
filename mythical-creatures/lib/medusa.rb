class Medusa

  attr_accessor :name, :statues, :victim
  def initialize(name)
    @name = name
    @statues = []
  end

  def stare(victim)
    victim.stoned = true
    @statues << victim
    if statues.count == 4
      @statues.shift.stoned = false
    end
  end
end

class Person
  attr_accessor :name, :stoned
  def initialize(name)
    @name = name
    @stoned = false
  end

  def stoned?
    @stoned
  end

end
