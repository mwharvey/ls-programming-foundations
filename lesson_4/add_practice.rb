# 1
flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
flintstones_hash = {}
flintstones.each_with_index do |name, index|
  flintstones_hash[name] = index
end
puts flintstones_hash

# 2
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
total_ages = 0
ages.each do | name, age |
  total_ages += age
end
total_ages

# 3
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages.select! do | name, age |
  age <= 100
end


# 4
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
ages.values.min

# 5
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.index { | name | name[0, 2] == "Be" }

# 6
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.map! { |name| name[0, 3] 

# 7
statement = "The Flintstones Rock"
letters = statement.split('')
result = {}

letters.each do |letter|
  letter_count = statement.scan(letter).count
  result[letter] = letter_count if letter_count > 0
end

puts result

# 8


# 9
words = "the flintstones rock"
separate_words = words.split

capitalize_words = separate_words.each { |word| word.capitalize! } 

capitalize_words.join(' ')


# 10
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |name, demographics|
  case demographics["age"]
  when 0..18
    demographics["age_group"] = "kid"
  when 18..65
    demographics["age_group"] = "adult"
  else
    demographics["age_group"] = "senior"
  end
end

puts munsters



