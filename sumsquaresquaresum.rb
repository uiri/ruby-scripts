a = 1
for i in (1..100)
b = a.to_i*a.to_i
c = c.to_i+b.to_i
a = a.to_i+1
end
d = 1
for i in (1..100)
e = e.to_i+d.to_i
d = d.to_i+1
end
f = e.to_i*e.to_i
g = f.to_i-c.to_i
puts g
