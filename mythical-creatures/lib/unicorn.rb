class Unicorn

  attr_accessor :name, :color

  def initialize(name, color = "white")
    @name = name
    @color = color
  end

  # def white?
  #   if @color == "white"
  #     true
  #   else
  #     false
  #   end

  def white?
    return true if color == "white"
    false
  end

  def say(words)
    "**;* #{words} **;*"
  end
end
