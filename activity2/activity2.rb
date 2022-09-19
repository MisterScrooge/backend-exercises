# solution for 1
puts "--solution for 1--"
arr = [1, 3, 5, 7, 9, 11]
number = 3

arr.each do |n|
    # puts "n = #{n}"
    # puts "number = #{number}"
    if n == number
        puts "3 is present within array"
    end
end

#solution for 2
puts "--solution for 2--"
puts "Enter number from 0 to a 100, real quick: "
number_input = gets.to_i
if number_input >= 0 && number_input <= 50
    puts "Input is between 0 and 50"
end
if number_input >= 51 && number_input <= 100
    puts "Input is between 51 and 100"
end
if number_input > 100
    puts "Input is OVER 100"
end

# solution for 3
puts "--solution for 3--"
safe_word = ""
while safe_word != "STOP" && safe_word != "Stop" && safe_word != "stop"  do
    # puts "safe_word = #{safe_word}"
    puts "Enter any:"
    safe_word = gets.chomp
end

# solution for 4
puts "--solution for 4--"
arr = [6, 3, 1, 8, 4, 2, 10, 65, 102]
even_arr = []

arr.each do |n|
    # if n % 2 = 0
    if n.even?
        even_arr.push(n)
    end
end
puts "Even-only array: #{even_arr}"

puts "--Alternate solution for 4--"
alt_even_arr = arr.select { |n| n.even? }
puts "Alternate even-only array: #{alt_even_arr}"