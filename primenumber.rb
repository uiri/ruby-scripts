a = 0
x = [2,3]
y = 4
while a != 20002
  w = 0
  x.each{|prime|
    t = y.to_f / prime.to_f
    u = y.to_i / prime.to_i
    v = t - u.to_f
    if v == 0
      break
    else
      w = w + 1
      g = x.length - 1
      if w == g
        x.push(y)
        a = a + 1
      end
    end
  }
  y = y + 1
  if x.length > 20001
    puts x[19999].to_s
  #  a = 1
  end
end
