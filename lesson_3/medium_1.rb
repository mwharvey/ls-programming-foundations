# Question 1: Write one line program that outputs 10 times with line indented 1 space to the right,
10.times { |tab| puts (" " * tab) + "The Flintstones Rock!" }

# Question 2: Fix error
puts "the value of 40 + 2 is " + (40 + 2).to_s

puts "the value of 40 + 2 is " + "#{40 + 2}"


# Question 3: Fix error
def factors(number)
  divisor = number
  factors = []
  
  while divisor > 0
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
  factors
end


# Question 6: Refactor
