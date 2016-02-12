# Factorial

# I worked on this challenge [by myself, with: ].


# Your Solution Below

def factorial(number)
  if number == 0 
    return 1
  elsif number > 1 
    return number * factorial(number - 1)
  else
    return number
  end
end

factorial(10)
