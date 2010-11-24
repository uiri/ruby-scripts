i = 1

while i == 1
a = gets.chomp

b = a.gsub(/p([aeiM])_L/, 'b\1_~').gsub(/p([ou2y])_L/, 'b\1').gsub(/t([aeiM])_L/, 'd\1_~').gsub(/t([ouy2])_L/, 'd\1').gsub(/k([aeiM])_L/, 'q\1_~').gsub(/k([ouy2])_L/, 'q\1').gsub(/([aeiouMy2]):s\\/, '\1:S').gsub(/s\\([aeiouMy2]):/, 'S\1:').gsub(/([aeiouMy2])s\\/, '\1s').gsub(/s\\([aeiouMy2])/, 's\1').gsub(/z\\/, 'Z').gsub(/Z(.):/, 'z\1:').gsub(/z/, 'z\\').gsub(/jn/, 'N').gsub(/nj/, 'N').gsub(/n([ouy2])/, 'N\1').gsub(/([aeiouMy2])_Lr/, '\1R').gsub(/r([aeiouMy2])_L/, 'R\1').gsub(/R/, 'R\\').gsub(/([aeiouMy2])_Lx/, '\1C').gsub(/x([aeiouMy2])_L/, 'C\1').gsub(/([aeiouMy2])_~x/, '\1C').gsub(/x([aeiouMy2])_~/, 'C\1').gsub(/jx/, 'C').gsub(/xj/, 'C').gsub(/a_L/, 'o').gsub(/e_L/, '2').gsub(/i_L/, 'y').gsub(/M_L/, 'u').gsub(/_L/, '').gsub(/_~/, '')

c = b.gsub(/([ptkq])([iyMu])/, '\1_h\2').gsub(/([iyMu])([ptkq])/, '\1\2_h').gsub(/R\\/, '').gsub(/f/, 'w').gsub(/l([e2ao])/, 'K\1').gsub(/([e2ao])l/, '\1K').gsub(/r/, 'l').gsub(/[aeiuoy2M]"/, '@').gsub(/Cj@p/, 'Cj@B').gsub(/Cj@t/, 'Cj@D').gsub(/Cj@[kx]/, 'Cj@G').gsub(/Cj@/, 'Cj@\\').gsub(/@Cj/, '@\\Cj').gsub(/p@/, 'B@').gsub(/t@/, 'D@').gsub(/[kx]@/, 'G@').gsub(/@p/, '@B').gsub(/@t/, '@D').gsub(/@[kx]/, '@G')

d = b.gsub(/([aeiouMy2])l([aeiouMy2])/, '\1r\2').gsub(/([aeiouMy2])l([aeiouMy2])/, '\1r\2').gsub(/l/, '').gsub(/R\\/, 'r').gsub(/z\\/, 'Z').gsub(/n([aeiou2yM]):/, 'N\1').gsub(/([aeiou2yM]):n/, '\1N').gsub(/:/, '').gsub(/a/, 'A').gsub(/M/, 'u').gsub(/2/, 'y').gsub(/q/, 'g').gsub(/ts/, 'tS').gsub(/jC/, 'j').gsub(/Cj/, 'j').gsub(/C/, 'x').gsub(/_~/, '')

e = a.gsub(/w([mnptk\\xfrl])/, '\1_w').gsub(/([mnptk\\xfrl])w/, '\1_w').gsub(/([mnptk\\xfrl])([ou2yw])/, '\1_w\2').gsub(/([ou2yw])([mnptk\\xfrl])/, '\1\2_w').gsub(/_wo/, '_wa').gsub(/_wu/, '_wM').gsub(/_wy/, '_wi').gsub(/_w2/, '_we').gsub(/s\\/, 'S').gsub(/z\\/, 'Z').gsub(/n/, 'm').gsub(/x/, 'C').gsub(/_w_w/, '_w')

f = e.gsub(/(.)_w(.)_L/, '\1\2').gsub(/(.)_L(.)_w/, '\1\2').gsub(/a[ouy2]/, 'wa').gsub(/[ouy2]a/, 'wa')

puts b
puts c
puts d
puts e
puts f
puts 'Do you want to quit?'
x = gets.chomp
  if x == 'yes'
    i = 0
  end
end
