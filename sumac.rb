a = gets.chomp
b = gets.chomp
array = []
array.push(a.to_i)
array.push(b.to_i)
x = 1
y = 2

while x != 0
  z = array.length - 2
  if array.last > array[z]
    puts array.length
    x = 0
  else
    c = array.last - array[z]
    array.push(c)
  end
end
