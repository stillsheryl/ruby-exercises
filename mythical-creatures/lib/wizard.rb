class Wizard

  attr_accessor :name, :bearded, :rested, :spell
  def initialize(name, bearded: true)
    @name = name
    @bearded = bearded
    @rested = true
    @spell = 0
  end

  def bearded?
    bearded
    # return false if @bearded == false
    # true
  end

  def incantation(power)
    p "sudo #{power}"
  end

  def rested?
    return false if @spell >= 3
      true
  end

  def cast
    @spell += 1
    "MAGIC MISSILE!"
  end
end
