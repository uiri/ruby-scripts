puts "Please enter a list of space delimited numbers"
inlist = gets.chomp
strlist = inlist.split(" ")
listofnums = []
for s in strlist
  listofnums.push(s.to_i)
end
sortedlist = []
maxlen = listofnums.length
while sortedlist.length < maxlen
  n = listofnums.pop
  if sortedlist.length == 0
    sortedlist.push(n)
  else
    i = 0
    while n > sortedlist[i]
      i += 1
      if i == sortedlist.length
        break
      end
    end
    if i == sortedlist.length
      sortedlist.push(n)
    else
      sortedlist.insert(i, n)
    end
  end
end
puts sortedlist.to_s
