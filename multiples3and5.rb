a = 0
for i in (1..1000)
  b = a/3
  c = a/5
  a = a+1
  d = a/3
  e = a/5
  if c.to_i != e.to_i
    f = f.to_i+a.to_i
    puts f.to_s
  elsif b.to_i != d.to_i
    f = f.to_i+a.to_i
    puts f.to_s
  end
end
