class Centaur

  attr_accessor :name, :breed, :shoot, :run, :cranky, :standing, :exercise, :rested, :sick
  def initialize(name, breed)
    @name = name
    @breed = breed
    @shoot = "Twang!!!"
    @run = "Clop clop clop clop!!!"
    @cranky = false
    @standing = true
    @exercise = 0
    @rested = true
    @sick = false
  end

  def shoot
    if @laying == true
      p "NO!"
    elsif
      @exercise < 3
      @exercise += 1
      @shoot
    else
      p "NO!"
    end
  end

  def run
    if @laying == true
      p "NO!"
    elsif @exercise < 3
      @exercise += 1
      @run
    else
      p "NO!"
    end
  end

  def cranky?
    true if @exercise >= 3
  end

  def standing?
    @standing
  end

  def sleep
    if @standing == true
      p "NO!"
    else
      @exercise = 0
    end
  end

  def laying?
    @laying
  end

  def lay_down
    @laying = true
    @standing = false
  end

  def stand_up
    @standing = true
    @laying = false
  end

  def drink_potion
    if @standing == true && @rested == false
      @rested = true
    elsif @standing == true && @rested == true
      @sick = true
    elsif @laying == true
      false
      # p "Can't drink while laying down."
    end
  end

end
