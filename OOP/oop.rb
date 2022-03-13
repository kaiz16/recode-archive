class Song
    attr_accessor :lyrics, :title
    def initialize(title, lyrics)
        @title = title
        @lyrics = lyrics
    end
    def sing
       puts title
       puts lyrics
    end
end

# nate_reuss = Song.new("Nothing without Love", "I am nothing without love... \nI am but a ship stuck in a sink") # Song title, lyrics
# nate_reuss.sing

class Dog
    attr_accessor :name, :breed, :age, :bark, :favourite_foods
    def initialize(name, breed, age, bark, food)
        @name = name
        @breed = breed
        @age = age
        @bark = bark
        return p "Enter food as an array" if food.class != Array
        @favourite_foods = food
    end
end

noodles = Dog.new("Noodles","German", 4, "Bork!", ["Sausage", "Beef"])
p noodles.name