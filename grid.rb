m = 2
n = 2
20.times do
  puts m
  m = 2*(m + n - 1)
  n += 1
end
puts m
