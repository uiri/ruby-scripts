s = 0
def amic(x)
  y = 0
  for i in 1...x
    if x%i == 0
      y = y + i
    end
  end
  return y
end

for x in 1..10000
  if amic(amic(x)) == x && amic(x) != x
    s = s + x
  end
end

puts s
