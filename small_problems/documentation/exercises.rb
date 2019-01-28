# Class and Instance Methods
File::path is a class method for the File class
File#path is an instance method 


# Optional Arguments Redux
require 'date'

puts Date.new               # => 4712-01-01
puts Date.new(2016)         # => 2016-01-01
puts Date.new(2016, 5)      # => 2016-05-01
puts Date.new(2016, 5, 13)  # => 2016-05-13


# Default Arguments in the Middle
def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6)
# [4, 5, 3, 6]


# Mandatory Blocks
a = [1, 4, 8, 11, 15, 19]

element = a.bsearch { |num| num > 8 }


# Multiple Signatures
a = %w(a b c d e)
puts a.fetch(7)                       # Error
puts a.fetch(7, 'beats me')           # 'beats me'
puts a.fetch(7) { |index| index**2 }  # 49


# Keyword Arguments
5.step(to: 10, by: 3) { |value| puts value }
# 5
# 8


# Included Modules
a = [5, 9, 3, 11]
puts a.min(2)

