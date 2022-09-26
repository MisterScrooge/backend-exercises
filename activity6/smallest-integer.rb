# activity 6

# def get_smallest(array)
#     x = array[0]
#     array.each do |n|
#         if n < x
#             x = n
#         end
#     end
#     puts "Smallest value is #{x}"
# end

# get_smallest([34, 15, 88, 2])
# get_smallest([34, -345, -1, 100])


# ----------------Continuation of OOP ----------------
# @string - is called an instance variable
# @@string - is called class variable
# class methods - 

class Employee
    @@employee_count = 0

    def initialize(age, sex)
        @age = age
        @sex = sex
        @active = true # employed
        @rating = nil
        @@employee_count += 1
    end

    def resign
        @active = false
    end

    def Employee.total
        @@employee_count
    end
end

class SoftwareEngineer < Employee
end

# puts Employee.total
# puts SoftwareEngineer.total
# abdul = Employee.new(31, "M")
# vincent = Employee.new(25, "M")
# shawn = Employee.new(25, "M")
# germee = Employee.new(25, "F")
# puts Employee.total
# puts SoftwareEngineer.total

class Employee
    @@employees = []

    def initialize(age, sex)
        @age = age
        @sex = sex
        @active = true # employed
        @rating = nil
        @@employees << self
    end

    def resign
        @active = false
    end

    def self.all
        "self.all = #{@@employees}"
    end

    def self.size
        "self.size = #{@@employees.size}"
    end
end

puts Employee.all
puts Employee.size
abdul = Employee.new(31, "M")
vincent = Employee.new(25, "M")
shawn = Employee.new(25, "M")
germee = Employee.new(25, "F")
puts Employee.all
puts Employee.size

