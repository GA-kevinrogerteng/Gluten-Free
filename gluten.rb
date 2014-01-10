require 'pry'

food_order = {"pizza" => "cheese, gluten, tomatoes",
"pan_seared_scallops" => "scallops, lemons ,pasta ,olive oil",
"water" => "h, h, o"}
 

class Person 

	attr_accessor :food_order, :stom, :allergies 
	def initialize (stom = [], allergies)
		@stom = stom
		@allergies = allergies
		@food = food_order
	end

	def eat 
		@food = @stom
		food_order = @food
		food_consumed = food_order.values.join
		# @stomach << foods
		# puts "This is #{food_consumed}"
		# p "#{food_consumed}"
		#puts "This is his allergy: #{@allergies}"
		begin
		if food_consumed.include?(@allergies)
		raise AllergyError.new("ALLERGYERROR: Oh No! You just ate #{@allergies}")
		else
			puts 'You had a good meal!'
		end
		rescue AllergyError => e
		puts "#{e}"
		end
	end
end

class AllergyError < NoMethodError; end

	
# end

begin
chris = Person.new(food_order, "gluten")
chris.eat
rescue AllergyError => e
	puts "#{e}"
end