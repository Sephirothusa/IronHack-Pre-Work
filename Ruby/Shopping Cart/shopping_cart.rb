#-------Shopping Cart Exercise 

=begin 

class ShoppingCart
	def initialize
		@items = []
	end
	end

class Item
	def initialize(namem price)
		@name = name
		@price = price
		end

def price 
	xxxx

=end 

class ShoppingCart
	def initalize 
		@items = []
		@total_cart_item = 0
		@total_cart_price = 0
	end

def add_item(item)
	@items.push(item)
	@total_cart_item += item.unit 
	@total_cart_price += item.total_price 
end

def print_total_cart_price
	puts "Sr.Lady, your total is #{total_cart_price}£"
end

def print_total_cart_items
	puts "Your total amount of items are #{total_cart_items}"
end

class Item 
	attr_reader :total_price, :unit 
	def initialize(name, price, unit)
    	@name = name
    	@price = price
    	@unit = unit
    	@total_price = price * unit	
 	end

	def price
    	puts "#{@name} - This item dont have any discount, sorry"
	end

	def print_total_price_item
		puts "#{@name} - The total items price amount is : #{@total_price}€"
	end

	def get_total_price
		return @total_price
	end

	def get_unit
		return @unit
	end
end

class Houseware < Item
	def price
    	if @price > 100
    		@total_price = @total_price - ( @total_price * 0.05)
    		puts "#{@name} - All HouseWare´s items greaters than 100€ have a 5% off"
    	else
    		puts "#{@name} - This HoseWare item isnt greater than 100€ so you dont have discount, sorry"
		end
	end
end

class Fruit < Item
	@@time = Time.new #variable de clase
  	def price
	  	if @@time.wday == 0 ||  @@time == 6
	  		@total_price = @total_price - (@total_price * 0.1)
	  		puts "#{@name} - You have a 10% discount"
	  	else
	  		puts "#{@name} - Sorry these items only have discount in weekends"
	  	end
	end
end
joshs_cart = ShoppingCart.new
puts "---------FRUITS----------"
platano = Fruit.new("Bananas",10,1)
platano.print_total_price_item
platano.price 
platano.print_total_price_item
puts "--------HOUSEWARES-------"
aspiradora = Houseware.new("Vacuum cleaner",150,1)
aspiradora.print_total_price_item
aspiradora.price 
aspiradora.print_total_price_item
puts "------ANOTHER ITEMS--------"
zumo = Item.new("Orange Juice",10,3)
zumo.print_total_price_item
zumo.price 
arroz = Item.new("Rice",1,4)
arroz.print_total_price_item
arroz.price 
anchoas = Item.new("Anchovies",3,2)
anchoas.print_total_price_item
anchoas.price
puts "------------------------"
joshs_cart.add_item(platano)
joshs_cart.add_item(aspiradora)
joshs_cart.add_item(zumo)
joshs_cart.add_item(arroz)
joshs_cart.add_item(anchoas)
joshs_cart.print_total_cart_items
joshs_cart.print_total_cart_price
joshs_cart.cart_price
joshs_cart.print_total_cart_price

