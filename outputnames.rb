names = "ekile"

def say_hi(x)
  if x.nil?
    puts "..."
  elsif x.respond_to?("each")
    x.each do |y|
      puts "Iole #{y}!"
    end
  else
    puts "Iole #{x}!"
  end
end
  
def say_bye(x)
  if x.nil?
    puts "..."
  elsif x.respond_to?("join")
    puts "Ioleu #{x.join(", ")}. Illuthus ovaina jei."
  else
    puts "Ioleu #{x}. Illuthus ovaina jei."
  end
end

say_hi(names)
say_bye(names)
     
names = "Lamesu"
say_hi(names)
say_bye(names)
  
names = "Lamesu", "Namasath", "Nevetes", "Sohamat"
say_hi(names)
say_bye(names)
  
names = nil
say_hi(names)
say_bye(names)
