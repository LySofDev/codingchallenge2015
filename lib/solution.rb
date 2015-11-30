# The int_to_word method accepts an integer above 0 and below 1 billion
# and returns a string representation of the number in english numerics
def int_to_word(number)

  million = number / 1000000
  thousand = (number / 1000) % million
  hundred = number % 1000
  
end
