class Confection
    attr_accessor :order

    def initialize(order)
        @order = order
    end

    def prepare
        puts "Baking #{order} at 350 degrees for 25 minutes."
    end
end

class Cupcake < Confection
    def prepare
        super
        puts "Applying frosting..."
    end
end

class BananaCake < Confection
end

order1 = Cupcake.new("order1")

puts order1.prepare



