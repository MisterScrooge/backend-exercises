class Profile
    attr_reader :full_name, :age, :address, :work
    attr_writer :full_name, :age, :work
    # attr_accessor :full_name, :age, :address, :work

    def initialize(full_name, age, address, work)
        @full_name = full_name
        @age = age
        @address = address
        @work = work
    end
end

my_profile = Profile.new('Juan', 18, 'Bulacan', 'Instructor')

puts my_profile.full_name
my_profile.full_name = 'Juan Cruz'

my_profile.age = 25
my_profile.work = 'Software Engineer'

puts my_profile.full_name
puts my_profile.age
puts my_profile.work
puts my_profile.address

# Additional code ; Unrelated to activity ; Self examples
# class Employee
#     attr_accessor :age, :sex
#     def initialize(age, sex)
#         @age = age
#         @sex = sex
#         @active = true
#         @rating = nil
#     end
    
#     def resign
#         @active = false
#     end

#     def resigned?
#         !@active
#     end
# end

# class CTO < Employee
#     attr_reader :equity

#     def initialize(age, sex, equity)

#         # choose one super
#         super(age, sex)
#         # super # =>  super(age, sex, equity)
#         # super() # no inputs
#         @equity = equity
#     end

#     def resign
#         puts "Some addt'l paper work needed before resigning..."
#         super
#     end

#     def foobar
#         puts "CTO's age is #{self.age()}" # self refers to instance, in sample below "john" is the instance
#         puts "CTO's age is #{age}" # this is same as above due to poetry mode; AKA implicit self
#     end
# end

# module OvertimePayable
#     def calculate_overtime_pay
#         base_salary * 2
#     end
# end

# class Accountant < Employee
#     attr_accessor :base_salary

#     def initialize(age, sex, base_salary)
#         super(age, sex)
#         @base_salary = base_salary
#     end

#     # def calculate_overtime_pay
#     #     base_salary * 2
#     # end

#     # instead of doing above, we can use module, for recurring short additions

#     include OvertimePayable
# end

# john = CTO.new(25, "M", 40)

# puts john.resigned?
# john.resign
# puts john.resigned?
# john.foobar

# erika = Accountant.new(26, "F", 25000)

# puts erika.calculate_overtime_pay


# Notes:
# CTO.ancestors - shows inheritance hierarchy; from child to parent class
# CTO.superclass - shows parent class
# Modules can be related to (or is) mixins


# Namespacing
# irb(main):008:1* module Baz
# irb(main):009:2*   class Bar
# irb(main):010:1*   end
# irb(main):011:0> end
# => nil
# irb(main):012:1* module Foo
# irb(main):013:2*   class Bar
# irb(main):014:1*   end
# irb(main):015:0> end
# => nil
# irb(main):016:0> Foo::Bar.new
# => #<Foo::Bar:0x00007ff75f6f7bc0>
# => #<Baz::Bar:0x00007ff75f7e9290>
# irb(main):018:0> class Foobar; end
# => nil
# irb(main):019:0> class Foobar; end
# => nil
# irb(main):020:0> # modules are also used for namespacing to avoid name collision (aka to be able to reuse identifiers/names)


# 4 Pillars of OOP
# 1 Abstraction
#     compartmentalizing unnecessary code
# 2 Encapsulation
# 3 Inheritance
#     code recycling
# 4 Polymorphism