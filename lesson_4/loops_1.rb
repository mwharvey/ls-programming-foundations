# Loops 1

# Runaway Loop
loop do 
  puts 'Just keep printing...'
  break
end

# Loopception
loop do
  puts 'This is the outer loop.'

  loop do
    puts 'This is the inner loop.'
    break
  end

  break
end

puts 'This is outside all loops.'

# Control the Loop
iterations = 1

loop do
  puts "Number of iterations = #{iterations}"
  iterations += 1
  break if iterations > 5
end

# Loop on Command
loop do
  puts 'Should I stop looping?'
  answer = gets.chomp
  break if answer == 'yes'
  puts "Wrong answer"
end

# Say Hello
say_hello = true
counter = 0

while say_hello 
  puts 'Hello!'
  counter += 1
  say_hello = false if counter == 5
end

# Print While
numbers = []

while numbers.size < 5
  numbers << rand(100)
end

puts numbers


# count up
count = 1

until count > 10
  puts count
  count += 1
end

# print until
numbers = [7, 9, 13, 25, 18]
counter = 0

until counter == numbers.size
  puts numbers[counter]
  counter += 1
end

# That's Odd
for i in 1..100 do
  puts i if i.odd?
end


# Greet your friends
friends = ['Sarah', 'John', 'Hannah', 'Dave']

for friend in friends do
  puts "Hello, #{friend}!"
end
