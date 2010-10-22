n = 600851475143
m = 600851475142
p = []
a = 1
for i in (1..10000)
  a = a+1
  x = n.to_i/a.to_i
  y = m.to_i/a.to_i
  if x != y
    p.push(a.to_i)
    puts p
    n = x
    m = y
  end
end
