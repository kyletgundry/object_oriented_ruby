shoe1 = {"Brand" => "Nike", "Color" => "Black", "Price" => 99.99}
shoe2 = {Brand: "Adidas", Color: "Silver", Price: 79.99}
shoe3 = {:Brand => "Converse", :Color => "White"}

shoe3[:Price] = 59.99

puts "I have " + shoe1["Color"] + " " + shoe1["Brand"] + " shoes that cost $" + shoe1["Price"].to_s + "."
puts "I have #{shoe2[:Color]} #{shoe2[:Brand]} shoes that cost $#{shoe2[:Price]}."
puts "I have #{shoe3[:Color]} #{shoe3[:Brand]} shoes that cost $#{shoe3[:Price]}."

puts shoe3

