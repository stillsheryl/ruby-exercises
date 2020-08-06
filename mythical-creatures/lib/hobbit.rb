class Hobbit

  attr_reader :name, :disposition, :age, :adult
  def initialize(name, disposition = "homebody")
    @name = name
    @disposition = disposition
    @age = 0
    @adult = false
  end

  def disposition
    disposition = @disposition
  end

  def celebrate_birthday
    @age += 1

  end

  def adult?
    if @age > 32
      @adult = true
    end
  end

  def old?
    return true if @age > 100
    false
  end

  def has_ring?
    return true if @name == "Frodo"
    false
  end

  def is_short?
    true
  end

end
