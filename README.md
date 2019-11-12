# Week 2 Challenge

## Pet Shop CLI

### **Project Instructions**

Our goal for this challenge is to have a cli program that allows us to create pets and list the pets we've created.

This project will consist of two classes, the Cli class which will handle our user inputs and outputs to the terminal and our Pet class which will store the details of our pets.

To run the code, in terminal type `ruby pet_shop.rb`

## **The Pet Class**
- has a name
- has an age
- has species
- should keep track of all the pets created in an @@all array
- should have an all class method that returns the @@all array

## **The Cli Class**

## #start method
Should welcome the user to the pet shop cli and call the `#menu` method.

## #menu method
Should print:
```
    puts "Type '1' to view list of pets"
    puts "Type '2' to create a pet"
    puts "Type '3' to exit program"
```

Should call the `#menu_input` method.

## #menu_input method
- Should get `user_input`
- Should check user_input if they typed 1, 2, or 3, otherwise display `"Invalid Response, Please Try Again"` and call the `#menu` method again.
- If the user typed `"1"` it should call `#list_pets` and then call `#menu` again.
- If the user typed `"2"` it should call the `#create_pet` method and then call `#menu` again.
- If the user typed `"exit"` it should display `"Goodbye!"` and exit the program

## #list_pets method
This method should iterate through all of our pets and display their name, age, and species. The displaying of the information is purely up to you! Feel free to format in anyway you like.

## #create_pet

This method should take in user input for name, age, and species, and create a pet with this information. Once the pet is created, should display to the terminal `"Pet Created"`.