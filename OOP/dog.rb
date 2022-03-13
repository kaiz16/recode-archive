class GoodDog
  attr_accessor :name
	# attr.writer for setters only
	# attr_reader for getters
	# attr_accessor takes symbols as parameters
	# define multiple states separted by commas 
  def initialize(name)
    @name = name
  end
 
  def speak
      "#{name} says Woof!"
  end
end

sparky = GoodDog.new("Sparky")
fido = GoodDog.new("Fido")
p sparky.speak, fido.speak
p sparky.name
p sparky.name = "Bobby"
p sparky.name
p sparky.speak
