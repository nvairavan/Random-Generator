# Random-Generator
### Description
Aim of this lab is to get better understanding of API(Application programming interface) testing. Here, I have used Postcode API from postcodes.io to generate random postcodes and tested them.

### Technology used
* Ruby
* RSpec
* Github

### How to download
1. To download a copy click on 'clone or download' and you can download it as a zip file.
2. Unzip the file
3. Run rspec in the terminal and install gems if requireds

### How to use
1. Create lib folder
2. Put the code into the lib folder
4. Instantiate the super class Generator.rb in your _spec.rb file
        e.g. @postcodes_array = Generator.new.postcodes.random_array(random_number)
5. Open your spec_helper.rb and require_relative with the given path of the Generator.rb file
        eg. require 'rspec'
            require_relative '../Generator'
6. Run the method within that Generator.rb superclass
7. Create a variable to store the result using the random number array you create
        e.g. random_number = rand(2..10)

### Challenges
1. Thinking of exit criteria.
2. Creating different types of test

### Learning points
1. Setting up the file structure so that it is easily accessible.
2. Understanding what's need to be tested and how. 
3. Practicing API calling and understanding super class.