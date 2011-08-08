require 'gtk2'

def delete
  Gtk.main_quit
  false
end

window1 = Gtk::Window.new('Temperature Converter')
window1.set_default_size(250,50)
window1.signal_connect('delete_event') do delete end
box1 = Gtk::HBox.new(false, 0)
window1.add(box1)
button1 = Gtk::Button.new("Fahrenheit")
button2 = Gtk::Button.new("Celsius")
button3 = Gtk::Button.new("Quit")
box1.pack_start(button1, true, true, 0)
box1.pack_start(button2, true, true, 0)
box1.pack_start(button3, true, true, 0)

def convert(base, type)
  window2 = Gtk::Window.new(type)
  box2 = Gtk::VBox.new(false, 0)
  window2.add(box2)
  label2 = Gtk::Label.new("Enter your temperature in " + base + ":")
  name2 = Gtk::Entry.new
  box2.pack_start(label2, true, true, 0)
  box2.pack_start(name2, true, true, 0)
  name2.signal_connect( "activate" ) do
    window3 = Gtk::Window.new('Your Result')
    box3 = Gtk::VBox.new(false, 0)
    window3.add(box3)
    label3 = Gtk::Label.new('Your temperature in celsius is ' + (((name2.text.to_i - 32)/1.8)).to_i.to_s) if base == 'fahrenheit'
    label3 = Gtk::Label.new('Your temperature in fahrenheit is ' + (((name2.text.to_i*1.8) + 32)).to_i.to_s) if base == 'celsius'
    button5 = Gtk::Button.new('OK')
    box3.pack_start(label3, true, true, 0)
    box3.pack_start(button5, true, true, 0)
    window3.show_all
    window2.destroy
    button5.signal_connect( "clicked" ) do window3.destroy end
  end
  window2.show_all
end

button1.signal_connect( "clicked" ) do convert('fahrenheit', "Fahrenheit to Celsius") end
button2.signal_connect( "clicked" ) do convert('celsius', "Celsius to Fahrenheit") end
button3.signal_connect( "clicked" ) do delete end
window1.show_all
Gtk.main
