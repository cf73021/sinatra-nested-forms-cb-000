class Ship
  attr_reader :name, :type, :booty

 @SHIPS = []

  def initialize(name, type, booty)
    @name = name
    @grade = type
    @booty = booty
    @SHIPS << self
  end

  def self.all
    @SHIPS
  end

  def self.clear
    @SHIPS = []
  end
end
