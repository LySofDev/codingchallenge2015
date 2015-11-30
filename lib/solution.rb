# The hundred_to_word method accepts an integer above 0 and below 1 thousand
# and returns a string representation of the number in english numerics
def hundred_to_word(number)

  # The numerics hash contains all translations of integer numbers to english
  # numeric string values assuming that they do not require composition
  numeric = {
    1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six",
    7 => "seven", 8 => "eight", 9 => "nine", 10 => "ten", 11 => "eleven",
    12 => "twelve", 13 => "thirteen", 14 => "fourteen", 15 => "fifteen",
    16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen",
    20 => "twenty", 30 => "thirty", 40 => "forty", 50 => "fifty", 60 => "sixty",
    70 => "seventy", 80 => "eighty", 90 => "ninety"
  }

  # Divide the number by 100 to receive a single digit representing the
  # hundreth value.
  hundred = number / 100
  
  # Initiate the result string to the numeric translation of the hundred value
  # unless this value is equal to 0. In that case, initiate to an empty string.
  result = hundred != 0 ? "#{numeric[hundred]} hundred " : ""
  
  # Apply the modulus of 100 operation to the number in order to receive the two
  # digits representing the tens value.
  tens = number % 100
  
  # Append the numeric string value of the remaining two digits to the result
  # string. If the remaining numbers exists as a key within the numeric hash,
  # then append the translation to the result.
  if numerics.keys.include?(tens)
    result += "#{numeric[tens]}"
    
  # If the value of tens is not present in the numeric.keys then decompose the
  # number until the values are included in the numeric.keys.
  else
  
    # Remove the trailing digit for the tens digit and append a 0
    tens = (tens / 10) * 10
    
    # Capture the ones digit by applying the modulus of 10 operation to the number
    ones = number % 10
    
    # Append the composite translation of tens and ones to and ommit the tens
    # value if it is equal to 0
    result += "#{numeric[tens] unless tens == 0} #{numerics[ones]}"
  end
  
  # Return the result string after calling the #strip method which removes
  # leading and trailing white spaces
  result.strip
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
  
  # Initiate the result string with the million string value unless the million
  # value is equal to 0. If million is equal to 0, return an empty string.
  result = million != 0 ? "#{hundred_to_word(million)} million " : ""
  
  # Append the string values for thousand and for hundred. Ignore the operation
  # if a value is equal to 0
  result += "#{hundred_to_word(thousand)} thousand " unless thousand == 0
  result += "#{hundred_to_word(hundred)}" unless hundred == 0
  
  # Return the result string after calling the #strip method which removes
  # leading and trailing white spaces
  result.strip
end
