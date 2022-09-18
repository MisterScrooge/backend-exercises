# solution for 4
puts "solution for 4"
puts "Enter current age: "
current_age = gets.to_i
puts "How many years would you like to see into the future?"
future_sight = gets.to_i

if future_sight > 10
    c = future_sight / 10
    i = 0
    while i < c do
        i += 1
        estimated_age = current_age + (i * 10)
        if estimated_age > 122 && estimated_age <= 130
            puts "--------- WORLD RECORD 122 Y.O. -----------"
        end
        puts "in #{i * 10} years you will be #{estimated_age}"   
    end
end

if current_age % 10 != 0 || future_sight % 10 != 0
    puts "in #{future_sight} years you will be #{current_age + future_sight}"
end