# The hundred_to_word method accepts an integer above 0 and below 1 thousand
# and returns a string representation of the number in english numerics
def hundred_to_word(number)
  numerics = {
    1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six",
    7 => "seven", 8 => "eight", 9 => "nine", 10 => "ten", 11 => "eleven",
    12 => "twelve", 13 => "thirteen", 14 => "fourteen", 15 => "fifteen",
    16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen",
    20 => "twenty", 30 => "thirty", 40 => "forty", 50 => "fifty", 60 => "sixty",
    70 => "seventy", 80 => "eighty", 90 => "ninety"
  }

  result = number/100 != 0 ? "#{numerics[number / 100]} hundred " : ""
  
  result += if numerics.keys.include?(number % 100)
    "#{numerics[number % 100]}"
  else
    tens = ((number % 100) / 10) * 10
    ones = number % 10
    "#{numerics[tens] unless tens == 0} #{numerics[ones] unless ones == 0}"
  end
  
  result.strip
end

# The int_to_word method accepts an integer above 0 and below 1 billion
# and returns a string representation of the number in english numerics
def int_to_word(number)
  result = ""
  
  # Dividing the number by a million returns the three digits containing millions
  million = number / 1000000
  
  # Dividing the number by a thousand returns 6 digits including the thousands
  # and hundreds. The hundred value digits are trimmed by applying the modulus
  # operation of the value of 'million'.
  thousand = (number / 1000) % 1000
  
  # Applying the modulus operation of 1000 returns the three digits representing
  # the hundred values
  hundred = number % 1000
  
  result += "#{hundred_to_word(million)} million " unless million == 0
  result += "#{hundred_to_word(thousand)} thousand " unless thousand == 0
  result += "#{hundred_to_word(hundred)}" unless hundred == 0
  
  result.strip
end
