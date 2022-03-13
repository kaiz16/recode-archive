class Car
    @@total_cars = 0
    attr_reader :name, :model
    attr_accessor :speed, :color, :driving
    def initialize(n, m, c)
        @name = n
        @model = m
        @speed = 0
        @color = c
        @driving = false
        @@total_cars += 1
    end

    def set_speed(s)
        self.speed = s
        self.driving = true
        if s == "0mph"
            self.driving = false
        end
    end

    def change_color(c)
        self.color = c
    end
    
    def self.total_car_objects
        return @@total_cars
    end

    def what_is_self
        return self
    end

    def to_s #puts calls to_s method automatically
        "Your car:  Name : #{name}, Model : #{model}, Color : #{color}, Driving state : #{driving}"
    end
    puts self
end
p Car.total_car_objects
lamborghini = Car.new("Sick Lamborghini", "Whatever", "Black")
p Car.total_car_objects
p lamborghini.itself
puts lamborghini