# The hundred_to_word method accepts an integer above 0 and below 1 thousand
# and returns a string representation of the number in english numerics
def hundred_to_word(number)
  tens = {
  
  }
  ones = {
  
  }
  
  h = number / 100
  t = (number / 100) % 10
  o = number % 10
  
end

# The int_to_word method accepts an integer above 0 and below 1 billion
# and returns a string representation of the number in english numerics
def int_to_word(number)

  # Dividing the number by a million returns the three digits containing millions
  million = number / 1000000
  
  # Dividing the number by a thousand returns 6 digits including the thousands
  # and hundreds. The hundred value digits are trimmed by applying the modulus
  # operation of the value of 'million'.
  thousand = (number / 1000) % 1000
  
  # Applying the modulus operation of 1000 returns the three digits representing
  # the hundred values
  hundred = number % 1000
  
end
