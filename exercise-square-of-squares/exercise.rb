# class String
#     def numeric?
#       return true if self =~ /\A\d+\Z/
#       true if Float(self) rescue false
#     end
# end 

# puts "Enter an integer:"
# number = gets


# if number.numeric?
#     number = number.to_i
#     coin_of_truth = false
#     i = 0
#     while coin_of_truth == false
#         i += 1
#         square_checker = i * i
#         if square_checker == number
#             coin_of_truth = true
#             puts "Perfect square"
#         elsif square_checker > number
#             coin_of_truth = true
#             puts "Not a square"
#         else
#             coin_of_truth = false
#         end
#     end
# else
#     puts "NaN *in German accent*"
# end

puts "Enter an integer:"
number = gets.to_i
if number > 0
    coin_of_truth = false
    i = 0
    while coin_of_truth == false
        i += 1
        square_checker = i * i
        if square_checker == number
            coin_of_truth = true
            puts "Perfect square"
        elsif square_checker > number
            coin_of_truth = true
            puts "Not a square"
        else
            coin_of_truth = false
        end
    end
elsif number < 0
    puts "as negative: #{number}"
    number = number.abs
    puts "as positive: #{number}"
    coin_of_truth = false
    i = 0
    while coin_of_truth == false
        i += 1
        square_checker = - i * i
        if square_checker == number
            coin_of_truth = true
            puts "Perfect square"
        elsif square_checker > number
            coin_of_truth = true
            puts "Not a square"
        else
            coin_of_truth = false
        end
    end
else
    puts "NaN *in German accent*"
end

# Lesson: Non-number strings equal 0 when converted to integer