p self
p self.class
    class Cat
        #attr_accessor :name , :age
        def initialize(name, age)
            @name = name
            @age = age
        end

        def change_info(name, age)
        self.name = name
         self.age = age
        end
    end

    cat = Cat.new("Cat", 1)
    p cat
    cat.change_info("Dog", 9)
    p cat
