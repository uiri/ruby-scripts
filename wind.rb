h = gets.chomp
m = gets.chomp
t = 1
n = m.to_i + 1

while t < n
  b = -6
  c = h.to_i
  d = 2
  a = b*t*t*t*t + c*t*t*t + d*t*t + t
  if a < 1
    print "The balloon touches the ground at hour:\n", t, "\n"
    n = 0
  end
  t = t + 1
end

if n != 0
  puts "The balloon does not touch ground in the given time."
end
