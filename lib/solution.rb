# The hundred_to_word method accepts an integer above 0 and below 1 thousand
# and returns a string representation of the number in english numerics
def hundred_to_word(number)
  result = ""
  
  numerics = {
    1 => "one",
    2 => "two",
    3 => "three",
    4 => "four",
    5 => "five",
    6 => "six",
    7 => "seven",
    8 => "eight",
    9 => "nine",
    10 => "ten",
    11 => "eleven",
    12 => "twelve",
    13 => "thirteen",
    14 => "fourteen",
    15 => "fifteen",
    16 => "sixteen",
    17 => "seventeen",
    18 => "eighteen",
    19 => "nineteen",
    20 => "twenty",
    30 => "thirty",
    40 => "forty",
    50 => "fifty",
    60 => "sixty",
    70 => "seventy",
    80 => "eighty",
    90 => "ninety"
  }

  h = number / 100
  result += "#{numerics[h] unless h == 0} hundred "
  
  if numerics.keys.include?(number % 100)
    result += "#{nummerics[h]}"
  else
    t = (number % 100) / 10
    o = number % 10
    result += "#{numerics[t] unless t == 0} #{numerics[o] unless o == 0}"
  end
  
  result
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
