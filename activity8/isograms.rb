def is_isogram(word)
    rand_string = word.downcase
    str_arr = []
    i = 0
    while i < rand_string.length do
        str_arr.each do |n|
            if n == rand_string[i]
                puts false
                return false            
            end
        end
        str_arr.push(rand_string[i])
        i += 1
    end
    # puts rand_string.length
    # puts str_arr
    puts true
end

is_isogram("Dermatoglyphics") # true
is_isogram("aba") # false
is_isogram("moOse") # true