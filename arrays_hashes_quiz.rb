### A. Given the following data structure:

lines = ['Gyle Centre', 'Edinburgh Park', 'Murrayfield Stadium', 'Haymarket', 'Princes Street']

# 1. Work out how many stops there are in the array
puts lines.length()

# 2. Return 'Edinburgh Park' from the array
puts lines[1]


# 3. How many ways can we return 'Princes Street' from the array?
puts lines.last
puts lines[4]
# puts lines.pop   
# dummy = lines.shift(4) # destructive, returns what you extract leaving behind 'Princes St'
# missed to following options
lines[-1]
for place in lines
  if place == 'Princes'narket
    return place
  end
end

counter=0
while lines[counter] != "Princes Street"
    counter += 1
end
purts lines[counter]
puts lines.slice(4)
puts lines.fetch(4)


# 4. Work out the index position of 'Haymarket'
index_position = 0
for x in lines
  if x == 'Haymarket'
    puts "#{x} found at index position = #{index_position}"
  else
    index_position += 1
  end
end

# or after finding the index function...
lines.index('Haymarket')

puts lines.include?("Hay")

# 5. Add 'Airport' to the start of the array
  lines.unshift("Airport")
puts lines

# 6. Add 'York Place' to the end of the array
lines << 'York Place'
puts lines 

puts lines.push("York Place")

# # 7. Remove 'Edinburgh Park' from the array using it's name
# lines.delete('Edinburgh Park')
puts lines

# 8. Delete 'Edinburgh Park' from the array by index
lines.delete_at(2)  # having put York Place in front of it
puts lines

# 9. Reverse the positions of the stops in the array
puts lines.reverse
# or using a loop
lines_in_reverse = []
for x in lines
  lines_in_reverse.unshift(x)
end
puts lines_in_reverse

### B. Given the following data structure:

my_hash = {"0" => "Zero", 1 => "One", :two => "Two", "two" => 2}

# 1. How would you return the string `"One"`?#
puts my_hash[1]

# 2. How would you return the string `"Two"`?
puts my_hash[:two]

# 3. How would you return the number `2`?
puts my_hash['two']

# 4. How would you add `{3 => "Three"}` to the hash?
my_hash[3] = "Three"
puts my_hash

# my_hash.merge!({3 => 'Three'})
# my_hash.store(3, 'Three')


# 5. How would you add `{:four => 4}` to the hash?
my_hash[:four] = 4
puts my_hash

### C. Given the following data structure:

users = {
  "Jonathan" => {
    :twitter => "jonnyt",
    :favourite_numbers => [12, 42, 75, 12, 5],
    :home_town => "Stirling",
    :pets => {
      "fluffy" => :cat,
      "fido" => :dog,
      "spike" => :dog
    }
  },
  "Erik" => {
    :twitter => "eriksf",
    :favourite_numbers => [8, 12, 24],
    :home_town => "Linithgow",
    :pets => {
      "nemo" => :fish,
      "kevin" => :fish,
      "spike" => :dog,
      "rupert" => :parrot
    }
  },
  "Avril" => {
    :twitter => "bridgpally",
    :favourite_numbers => [12, 14, 85, 88],
    :home_town => "Dunbar",
    :pets => {
      "colin" => :snake
    }
  }
}

# 1. Return Jonathan's Twitter handle (i.e. the string `"jonnyt"`)
puts users["Jonathan"][:twitter]

# 2. Return Erik's hometown
puts users['Erik'][:home_town]

# 3. Return the array of Erik's favorite numbers
puts users['Erik'][:favourite_numbers]

# 4. Return the type of Avril's pet Colin
puts users["Avril"][:pets]["colin"]

# or
puts users['Avril'][:pets].values[0]

# 5. Return the smallest of Erik's favorite numbers
puts users["Erik"][:favourite_numbers].sort[0]
# or
eriks_smallest = users["Erik"][:favourite_numbers].first
for x in users["Erik"][:favourite_numbers]
  if x > eriks_smallest
    # carry on
  else
    eriks_smallest = x
  end
end
puts eriks_smallest

puts puts users["Erik"][:favourite_numbers].min 

# 6. Add the number `7` to Erik's favorite numbers
users["Erik"][:favourite_numbers] << 7
puts users["Erik"][:favourite_numbers]

# alternatives .push .unshift to insert at start  .insert(1,7)

# 7. Change Erik's hometown to Edinburgh
users['Erik'][:home_town] = "Edinburgh"
puts  users['Erik'][:home_town]

# 8. Add a pet dog to Erik called "Fluffy"
users['Erik'][:pets]['Fluffy'] = :dog

# users['Erik'][:pets].merge!({"Fluffy" => :dog})

# 9. Add yourself to the users hash
users['Douglas'] = {
  :twitter => "drcrooke",
  :favourite_numbers => [Math::E, 'i', Math::PI, 0],
  :home_town => "Alford",
  :pets => {
      'Fitz' => :cat
  }
}

# alternate form users.store("Chris", {:twitter => "cbrown"})
# or  {twitter: drcrooke} format
me = {
  "Graeme" => {
    twitter: 'graeme'
    home_town: "Edinburgh"
  }
}

puts user.merge!(me)

puts users['Douglas'][:home_town]
puts users['Douglas'][:favourite_numbers][2]