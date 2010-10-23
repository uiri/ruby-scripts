require 'gtk2'

window1 = Gtk::Window.new
window1.set_default_size(250,50)
window1.set_title("Converter")
window1.show

window1.signal_connect('delete_event') do
  Gtk.main_quit
  false
end

box1 = Gtk::HBox.new(false, 0)
window1.add(box1)
button2 = Gtk::Button.new("Decimal")
button3 = Gtk::Button.new("Binary")
button4 = Gtk::Button.new("End")
box1.pack_start(button2, true, true, 0)
box1.pack_start(button3, true, true, 0)
box1.pack_start(button4, true, true, 0)

button2.signal_connect( "clicked" ) do
  window2 = Gtk::Window.new
  window2.set_default_size(250,75)
  window2.set_title("Decimal to Binary")
  window2.show
  box2 = Gtk::VBox.new(false, 0)
  window2.add(box2)
  label2 = Gtk::Label.new("Enter a decimal number:")
  name2 = Gtk::Entry.new
  button21 = Gtk::Button.new("Enter")
  box2.pack_start(label2, true, true, 0)
  box2.pack_start(name2, true, true, 0)
  box2.pack_start(button21, true, true, 0)
  button21.signal_connect( "clicked" ) do
    window21 = Gtk::Window.new
    window21.set_default_size(200,50)
    window21.set_title("Your Result")
    window21.show
    box21 = Gtk::VBox.new(false, 0)
    window21.add(box21)
    label21 = Gtk::Label.new(name2.text.to_i.to_s(2))
    button211 = Gtk::Button.new("OK")
    box21.pack_start(label21, true, true, 0)
    box21.pack_start(button211, true, true, 0)
    window21.show_all
    window2.destroy
    button211.signal_connect( "clicked" ) do
      window21.destroy
    end
  end
  window2.show_all
end

button3.signal_connect( "clicked" ) do
  window3 = Gtk::Window.new
  window3.set_default_size(250,75)
  window3.set_title("Binary to Decimal")
  window3.show
  box3 = Gtk::VBox.new(false, 0)
  window3.add(box3)
  label3 = Gtk::Label.new("Enter a binary number:")
  name3 = Gtk::Entry.new
  button31 = Gtk::Button.new("Enter")
  box3.pack_start(label3, true, true, 0)
  box3.pack_start(name3, true, true, 0)
  box3.pack_start(button31, true, true, 0)
  button31.signal_connect( "clicked" ) do
    window31 = Gtk::Window.new
    window31.set_default_size(200,50)
    window31.set_title("Your Result")
    window31.show
    box31 = Gtk::VBox.new(false, 0)
    window31.add(box31)
    label31 = Gtk::Label.new(name3.text.to_i(2).to_s)
    button311 = Gtk::Button.new("OK")
    box31.pack_start(label31, true, true, 0)
    box31.pack_start(button311, true, true, 0)
    window31.show_all
    window3.destroy
    button311.signal_connect( "clicked" ) do
      window31.destroy
    end
  end
  window3.show_all
end

button4.signal_connect( "clicked" ) do
  Gtk.main_quit
  false
end

window1.show_all
Gtk.main
