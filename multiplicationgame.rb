puts "Enter the fixed number to multiply each stage by:\n"
x = gets.chomp
y = 0
i = 1

while i == 1
  if y == 0
    puts "Enter the square of the fixed number:\n"
    y = gets.chomp
    z = x.to_i * x.to_i
  else
    puts "Enter the last number you entered multiplied by the fixed number:\n"
    z = y.to_i * x.to_i
    y = gets.chomp
  end
  if y.to_i != z.to_i
    puts "Sorry, the answer was " + z + ", you lose. Please play again."
    i = 0
  end
end
