# Math Methods

# I worked on this challenge [by myself].


# Your Solution Below

def add(num_1, num_2)
 #your code here
 if num_1.is_a?(String) || num_2.is_a?(String)
   return false
  else
    return num_1 + num_2
  end
end


def subtract(num_1, num_2)
 #your code here
 if num_1.is_a?(String) || num_2.is_a?(String)
   return false
  else
    return num_1 - num_2
  end
end

def multiply(num_1, num_2)
 #your code here
  if num_1.is_a?(String) || num_2.is_a?(String)
   return false
  else
    return num_1 * num_2
  end
end

def divide(num_1, num_2)
 #your code here
  if num_1.is_a?(String) || num_2.is_a?(String)
   return false
  else
    return num_1 / num_2
  end
end