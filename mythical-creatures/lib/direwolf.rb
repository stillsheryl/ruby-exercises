class Direwolf

  attr_accessor :name, :home, :size, :starks_to_protect
  def initialize(name, home = "Beyond the Wall", size = "Massive")
    @name = name
    @home = home
    @size = size
    @starks_to_protect = []
  end

  def protects(stark)
    if stark.location == @home && @starks_to_protect.length < 2
      @starks_to_protect << stark
      stark.safe = true
    end
  end

  def leaves(stark)
    if @starks_to_protect.include?(stark)
      @starks_to_protect.delete_at(0)
      stark.safe = false
    else
      return stark
    end

  end

  def hunts_white_walkers?
    true if @starks_to_protect == []
  end

end

class Stark
  attr_accessor :name, :location, :house_words, :safe
  def initialize(name, location = "Winterfell")
    @name = name
    @location = location
    @house_words = "Winter is Coming"
  end

  def safe?
    @safe && @house_words = "The North Remembers"
  end

end
