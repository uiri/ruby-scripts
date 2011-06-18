puts "How many antennas?\n"
a = gets.chomp
puts "How many eyes?\n"
e = gets.chomp

if a.to_i > 2 && e.to_i < 5
  puts "TroyMartian\n"
end

if a.to_i < 7 && e.to_i > 1
  puts "VladSaturnian\n"
end

if a.to_i < 3 && e.to_i < 4
  puts "GraemeMercurian\n"
end
