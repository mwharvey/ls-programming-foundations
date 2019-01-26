# Question 1: See if "Spot" is present in hash of people and their ages.
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.include?("Spot")

# answer also could be ages.key?("Spot") or ages.member?("Spot")



# Question 2: Convert string
munsters_description = "The Munsters are creepy in a good way."

munsters_description.swapcase!
munsters_description.capitalize!
munsters_description.downcase!
munsters_description.upcase!



# Question 3: Add ages for Marilyn & Spot to existing hash
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }

additional_ages = { "Marilyn" => 22, "Spot" => 237 }

ages.merge!(additional_ages)



# Question 4: See if "Dino" appears in string
advice = "Few things in life are as important as house training your pet dinosaur."

advice.include?("Dino")

# answer is advice.match("Dino")



# Question 5: Show an easier way to write array
flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)



# Question 6: How can we add "Dino" to array?
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.push("Dino")

# answer can also be flintstones << "Dino" 



# Question 7: Add multiple items to array (Dino and Hoppy)
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones << "Dino" << "Hoppy"

# Correct answer - flintstones.push("Dino").push("Hoppy") or flintstones.concat(%w(Dino Hoppy))



# Question 8: Use String#slice! to remove part of string. 
advice = "Few things in life are as important as house training your pet dinosaur."

advice.slice!(0, advice.index('house'))



# Question 9: Write a one-liner to count the number of lower-case 't' characters in the following string:
statement = "The Flintstones Rock!"

statement.count('t')



# Question 10: Center string over 40 characters
title = "Flintstone Family Members"

title.center(40)

