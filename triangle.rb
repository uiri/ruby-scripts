i = 0
a = 1
b = 1
while 1
  c = 0
  for i in 1...(a**0.5).to_i
    if a%i == 0:
        c = c + 2
    end
  end
  if c > 500
    puts a
    break
  else
    b += 1
    a = a + b
  end
end
