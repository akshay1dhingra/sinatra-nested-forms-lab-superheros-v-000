class SuperHero

  attr_accessor :name, :power, :bio

  SUPERHEROS = []

  def initialize(name, power, bio)
    @name = params[:name]
    @power = params[:power]
    @bio = params[:bio]
    SUPERHEROS << self
  end

  def self.all
    SUPERHEROS
  end

end
