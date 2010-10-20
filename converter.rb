puts 'Decimal or binary'
a = gets.chomp
while a != 'end'
  if a == 'binary'
    puts 'Enter a binary number'
    b = gets.chomp
    puts b.to_i(2)
    puts 'Decimal or binary'
    a = gets.chomp
  elsif a == 'decimal'
    puts 'Enter a decimal number'
    b = gets.chomp
    puts b.to_i.to_s(2)
    puts 'Decimal or binary'
    a = gets.chomp
  else
    puts 'Decimal or binary'
    a = gets.chomp
  end
end
