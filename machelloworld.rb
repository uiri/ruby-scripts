require 'hotcocoa'; include HotCocoa

application do

  win = window :title => 'hello world', :frame => [0, 0, 200, 60]

  b = button :title => 'Hello!', :layout => {:align => :center}
  win << b

  b.on_action { puts "Hello World!" }

end
