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

        def puke
        	@stom.clear
        	puts "Bleeehhhhhh!!"
        end

        def eat 
                begin
                @stom.each do |key, value|
                        food_consumed = value
                        if food_consumed.include?(@allergies)
                        		self.puke
                                raise AllergyError.new("ALLERGYERROR: Oh No! You just ate #{@allergies}")    
                        end
                end
                puts 'Have a good meal!'
                rescue AllergyError => e
                        puts "#{e}"
                end
        end
end

class AllergyError < NoMethodError; end

        
# end

chris = Person.new(food_order, "gluten")
puts "CHRIS:"
chris.eat
puts " "
puts "BETH:"
beth = Person.new(food_order, "o")
beth.eat
#rescue AllergyError => e
        #puts "#{e}"
#end