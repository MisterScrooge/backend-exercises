def disemvowel(str)
    vowels = ['A', 'a', 'E', 'e', 'I', 'i', 'O', 'o', 'U', 'u']
    str.length.times do |char|
        if vowels.include? str[char]
            # puts char
            # puts str[char]
            str.slice!(char)
        end
    end
    str
end

puts disemvowel("This website is for losers LOL!")