require 'pry'
class Cli

    def start

        puts "-----------------------------"
        puts "           Welcome "
        puts "-----------------------------"
        menu
    end 

    def menu 
        puts "Type '1' to view list of pets"
        puts "Type '2' to create a pet"
        puts "Type 'exit' to exit program"
        menu_input
    end 

    def menu_input
        input = gets.strip.downcase
        if input == "1"
            list_pets 
            menu 
        elsif input == "2"
            create_pet
            menu
        elsif input == 'exit' 
        puts "-----------------------------"
        puts "           Goodbye"
        puts "-----------------------------" 
        else 
            puts "Invalid Response, Please Try Again"
            menu
        end 
    end 
    

    def create_pet 
        puts "What is the pets name?"
        pet_name = gets.strip
        puts "What is the pets age?"
        pet_age = gets.strip.downcase
        puts "What is the pets species?"
        pet_species = gets.strip.downcase

        pet = Pet.new
        pet.age = pet_age
        pet.name = pet_name
        pet.species = pet_species
       #binding.pry
        puts "Pet Created"
        
    end 

    def list_pets
        Pet.all.each do |pet|
            puts "-----------------------------------------------------------------"
            puts " Hi, my name is #{pet.name}. I am #{pet.species} and I am #{pet.age} years old."
            puts "-----------------------------------------------------------------"
        end 
    end 



    class Pet

        @@all = []

        attr_accessor :name, :age, :species 

        def initialize
            @@all << self
        end 

        def self.all 
            @@all
        end 
    end
end 

# comment this in when you are ready to start the program
Cli.new.start