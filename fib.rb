i = 0
c = 3
x = 1
y = 1
z = 2
while i < 1000
  w = y + z
  x = y
  y = z
  z = x + y
  i = w.to_s.split('').length
  c = c + 1
end

puts c
