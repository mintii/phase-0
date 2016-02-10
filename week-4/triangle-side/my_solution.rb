# I worked on this challenge [by myself, with: ].


# Your Solution Below
puts "Give me value a!"

a = gets.chomp.to_i

puts "Give me value b!"

b = gets.chomp.to_i

puts "Give me value c!"

c = gets.chomp.to_i

def valid_triangle?(a, b, c)
  if a + b > c && a + c > b && b + c > a
    true
  else
    false
  end
end


puts valid_triangle?(a, b, c)