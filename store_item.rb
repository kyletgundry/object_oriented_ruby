shoe1 = {"Brand" => "Nike", "Color" => "Black", "Price" => 99.99}
shoe2 = {Brand: "Adidas", Color: "Silver", Price: 79.99}
shoe3 = {:Brand => "Converse", :Color => "White"}

shoe3[:Price] = 59.99

puts "I have " + shoe1["Color"] + " " + shoe1["Brand"] + " shoes that cost $" + shoe1["Price"].to_s + "."
puts "I have #{shoe2[:Color]} #{shoe2[:Brand]} shoes that cost $#{shoe2[:Price]}."
puts "I have #{shoe3[:Color]} #{shoe3[:Brand]} shoes that cost $#{shoe3[:Price]}."

puts shoe3
puts 

class Shoes
  attr_reader :brand, :color, :price #make the getters to return the value
  attr_writer :brand, :color, :price #make the methods to update the values

  def initialize(brand, color, price)
    @brand = brand
    @color = color
    @price = price
  end

  def info
    "I have #{@color} #{@brand} shoes that cost me $#{@price}."
  end

end

shoe1 = Shoes.new("Vince", "black", 229.99)
shoe2 = Shoes.new("Nike", "white", 99.99)

shoe2.color = "blue"
puts shoe1.info
puts shoe2.info
