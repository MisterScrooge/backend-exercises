# solution for 1
puts "solution for 1"
numbers = [1,2,3,4,5,6,7,8,9,10]
numbers.each do |n|
    puts n
end

# solution for 2
puts "solution for 2"
h={a:1, b:2, c:3, d:4}
puts h[:b]
h[:e] = 5
puts h

# solution for 3
puts "solution for 3"
contact_data = [["john@email.com", "123 Main st.", "555-123-4567"],
            ["avion@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"John Cruz" => {}, "Avion School" => {}}

puts contacts = {
    "John Cruz" => {:email => contact_data[0][0], :address => contact_data[0][1], :phone => contact_data[0][2]}, 
    "Avion School" => {:email => contact_data[1][0], :address => contact_data[1][1],  :phone => contact_data[1][2]}
}

# contacts.each {puts}
# puts contacts

# Expected output:
#  {
#    "John Cruz"=>{:email=>"john@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"},
#    "Avion School"=>{:email=>"avion@email.com", :address=>"404 Not Found Dr.",  :phone=>"123-234-3454"}
#  }

# solution for 4
puts "solution for 4"