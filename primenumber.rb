x = [2,3]
y = 4
bignum = y
a = 0
while y < 2000000
  x.each{|prime|
    if prime > bignum
      x.push(y)
      break
    else
      if y % prime == 0
        break
      else
        bignum = y / prime
      end
    end
  }
  y = y + 1
  bignum = y
  if x.length == 10001 && a == 0
    puts x.last
    a = 1
  end
end
sum = 0
x.each{|prime|
  sum = sum + prime
}
puts sum
