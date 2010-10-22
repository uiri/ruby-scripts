a = 0
b = 1
c = a+b
while c <= 2000000
  c = a.to_i+b.to_i
  d = b.to_i+c.to_i
  e = c.to_i+d.to_i
  a = d
  b = e
  x = c.to_i-1
  y = d.to_i-1
  z = e.to_i-1
  if c/2 != x/2
    h = h.to_i+c.to_i
  elsif d/2 != y/2
    h = h.to_i+d.to_i
  elsif e/2 != z/2
    h = h.to_i+e.to_i
  end
end
puts h
