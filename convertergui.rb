# -*- coding: utf-8 -*-
# Copyright 2010 Uiri Noyb
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
# You may contact Uiri Noyb via electronic mail with the address uiri@compucrunch.com

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
button1 = Gtk::Button.new("Decimal")
button2 = Gtk::Button.new("Binary")
button3 = Gtk::Button.new("End")
box1.pack_start(button1, true, true, 0)
box1.pack_start(button2, true, true, 0)
box1.pack_start(button3, true, true, 0)

def convert(base, type)
  window2 = Gtk::Window.new
  window2.set_default_size(250,75)
  window2.set_title(type)
  window2.show
  box2 = Gtk::VBox.new(false, 0)
  window2.add(box2)
  label2 = Gtk::Label.new("Enter a " + base + "number:")
  name2 = Gtk::Entry.new
  button4 = Gtk::Button.new("Enter")
  box2.pack_start(label2, true, true, 0)
  box2.pack_start(name2, true, true, 0)
  box2.pack_start(button4, true, true, 0)
  button4.signal_connect( "clicked" ) do
    window3 = Gtk::Window.new
    window3.set_default_size(200,50)
    window3.set_title("Your Result")
    window3.show
    box3 = Gtk::VBox.new(false, 0)
    window3.add(box3)
    if base == 'decimal'
      label3 = Gtk::Label.new(name2.text.to_i.to_s(2))
    else
      label3 = Gtk::Label.new(name2.text.to_i(2).to_s)
    end
    button5 = Gtk::Button.new("OK")
    box3.pack_start(label3, true, true, 0)
    box3.pack_start(button5, true, true, 0)
    window3.show_all
    window2.destroy
    button5.signal_connect( "clicked" ) do
      window3.destroy
    end
  end
  window2.show_all
end

button1.signal_connect( "clicked" ) do
  convert('decimal', "Decimal to Binary")
end

button2.signal_connect( "clicked" ) do
  convert('binary', "Binary to Decimal")
end

button3.signal_connect( "clicked" ) do
  Gtk.main_quit
  false
end

window1.show_all
Gtk.main
