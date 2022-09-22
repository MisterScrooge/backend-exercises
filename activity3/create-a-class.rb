class Hooman
    attr_accessor :name, :age, :stats, :eyes

    def initialize(name, age, stats, eyes)
        @name = name
        @age = age
        @stats = stats
        @eyes = eyes
    end
end

human1 = Hooman.new("Kim", 24, [37, 27, 42], "blue")
puts human1