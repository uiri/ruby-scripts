puts 'Decimal or binary?'
a = gets.chomp

while a != 'decimal'
  if a != 'binary'
    puts 'Decimal or binary?'
    a = gets.chomp
  else
    break
  end
end

if a == 'decimal'
  puts 'Enter a decimal number'
  b = gets.chomp
  puts b.to_i.to_s(2)
else
  puts 'Enter a binary number'
  b = gets.chomp
  puts b.to_i(2)
end
