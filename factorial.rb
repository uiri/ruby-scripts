f = 100
a = 100
while f > 1
  f = f - 1
  a = a * f
end
c = a.to_s.split('')
t = 0
c.each{|o|
t = t + o.to_i
}
puts t
