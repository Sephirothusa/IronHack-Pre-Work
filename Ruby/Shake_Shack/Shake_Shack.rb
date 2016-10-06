# --- EXERCISE SHAKE SHACK --------

class ShakeShope
	def initialize
		@menu_milkshakes = []
	end
def add_milkshakes(milkshake)
	@menu_milkshakes.push(milkshake)
end
def show_milkshakes_list
	@menu_milkshakes.each do |milkshake|
		puts "#{milkshake.milkshake_name}-#{milkshake.get_price_of_milkshake}"
		end
	end
end

class Milkshake
	attr_reader :milkshake_name

	def initialize (name)
		@milkshake_name = name 
		@base_price = 3
		@total_price = 0
		@ingredients = []
	end

	def add_ingredient(ingredient)
		@ingredients.push(ingredient)
	end

	def get_price_of_milkshake
		@total_price = @base_price
		@ingredients.each do |ingredient|
			@total_price += ingredient.price 
		end
		@total_price
	end
end

class Ingredient
	attr_reader :name, :price 
  def initialize(name, price)
    @name = name
    @price = price
  end
end


banana = Ingredient.new("Banana", 2)
chocolate_chips = Ingredient.new("Chocolate Chips", 1)
mint = Ingredient.new("Mint",1)
cookies = Ingredient.new("Cookies",2)
vainilla = Ingredient.new("Vainilla",2)
crunch = Ingredient.new("Crunchs",3)

paulo_milkshake = MilkShake.new("nizars")
paulo_milkshake.add_ingredient(banana)
paulo_milkshake.add_ingredient(chocolate_chips)
paulo_milkshake.add_ingredient(mint)

pedro_milkshake = MilkShake.new("chris") 
pedro_milkshake.add_ingredient(vainilla)
pedro_milkshake.add_ingredient(cookies)
pedro_milkshake.add_ingredient(crunch)
#this prints out prices
#puts paulo_milkshake.get_price_of_milkshake
#puts pedro_milkshake.get_price_of_milkshake

josh_shop = ShakeShope.new
josh_shop.add_milkshakes(paulo_milkshake)
josh_shop.add_milkshakes(pedro_milkshake)

#print the names
josh_shop.show_milkshakes_list
