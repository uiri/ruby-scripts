a = 2 ** 1000
b = a.to_s.split('')
c = 0
b.each{|d|
c = c + d.to_i
}
puts c
