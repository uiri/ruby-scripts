puts 'Add or subtract?'
a = gets.chomp
while a != 'end'
  if a == 'add'
    puts 'Enter the first number:'
    b = gets.chomp
    puts 'Enter the second number:'
    c = gets.chomp
    d = b.to_i(2)+c.to_i(2)
    puts b + ' + ' + c + ' = ' + d.to_s(2) + '(' + d.to_i.to_s + ')'
    puts 'Add or subtract?'
    a = gets.chomp
  elsif a == 'subtract'
    puts 'Enter the first number:'
    b = gets.chomp
    puts 'Enter the second number:'
    c = gets.chomp
    d = b.to_i(2)-c.to_i(2)
    puts b + ' - ' + c + ' = ' + d.to_s(2) + '(' + d.to_i.to_s + ')'
    puts 'Add or subtract?'
    a = gets.chomp
  else
    puts 'Add or subtract?'
    a = gets.chomp
  end
end
