class Person < Struct.new(:name, :age)
    # attr_accessor :name, :age

    def self.suggested_names
        ["Ivette", "Robert", "Silvia"]
    end

    # # Constructor
    # def initialize(name, age)
    #     @name = name
    #     @age = age
    # end

    # # Getters
    # def name
    #     @name
    # end

    # def age
    #     @age
    # end

    # # Setters
    # def name=(name)
    #     @name = name
    #     self
    # end

    # def age=(age)
    #     @age = age
    #     self
    # end
end

person = Person.new("Ivette", 28)
puts person.name
puts person.age

puts Person.suggested_names
