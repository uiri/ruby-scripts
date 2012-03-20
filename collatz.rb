c = 0
x = 0
y = 0
for i in 1..1000000
  j = i
  c = 0
  while j != 1
    if j%2 == 0
      j = j/2
      c = c + 1
    else
      j = 3*j + 1
      c = c + 1
    end
  end
  if c > x
    x = c
    y = i
  end
end

puts y
