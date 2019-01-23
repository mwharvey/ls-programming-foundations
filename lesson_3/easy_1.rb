# Question 3: Replace the word "important" with "urgent" in this string:
advice = "Few things in life are as important as house training your pet dinosaur."

new_string = advice.split.map! do |word|
              if word == "important"
                "urgent"
              else
                word
              end
end

p new_string.join(" ")

# Correct Answer: advise.gsub!('important', 'urgent')



# Question 4: What do the following method calls do (assume we reset numbers to 
# the original array between method calls)?
numbers = [1, 2, 3, 4, 5]

numbers.delete_at(1)
# [1, 3, 4, 5]
numbers.delete(1)
# [2, 3, 4, 5]



# Question 5: Programmatically determine if 42 lies between 10 and 100. hint: 
# Use Ruby's range object in your solution.
[10..100].each do |num| 
  if num.include?(42)
    puts "42 is here"
  else
    puts "42 not found"
  end
end

# Correct Answer: (10..100).cover?(42)



# Question 6: Starting with the string: famous_words = "seven years ago..."
# show two different ways to put the expected "Four score and " in front of it.
famous_words = "seven years ago..."
famous_words.prepend("Four score and ")

famous_words = "seven years ago..."
"Four score and " << famous_words




def add_eight(number)
  number + 8
end

number = 2

how_deep = "number"
5.times { how_deep.gsub!("number", "add_eight(number)") }

p how_deep
eval(how_deep)
# 42



# Question 8: Make nested array into un-nested array
flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]

flintstones.flatten!



# Question 9: Turn this into an array containing only 2 elements: Barney's name and Barney's number
flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

flintstones.delete_if { |key, value| key != "Barney"}

# Correct Answer: flintstones.assoc("Barney")
