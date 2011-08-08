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
window1.set_default_size(75,25)
window1.set_title("Final Grade calculator")
window1.show

window1.signal_connect('delete_event') do
  Gtk.main_quit
  false
end

box1 = Gtk::VBox.new(false, 0)
mark1 = Gtk::Entry.new
mark2 = Gtk::Entry.new
mark3 = Gtk::Entry.new
button1 = Gtk::Button.new("Calculate!")
box1.pack_start(mark1, true, true, 0)
box1.pack_start(mark2, true, true, 0)
box1.pack_start(mark3, true, true, 0)
box1.pack_start(button1, true, true, 0)
window1.add(box1)
window1.show_all
button1.signal_connect( "clicked" ) do
  window2 = Gtk::Window.new
  window2.set_title("Final Grade")
  window2.set_default_size(150,50)
  window2.show
  box2 = Gtk::VBox.new(false, 0)
  window2.add(box2)
  a = (mark1.text.to_f/30)*0.4*100
  b = (mark2.text.to_f/50)*0.4*100
  c = (mark3.text.to_f/25)*0.2*100
  d = a.to_i + b.to_i + c.to_i
  final = Gtk::Label.new(d.to_s)
  button2 = Gtk::Button.new("Done")
  box2.pack_start(final, true, true, 0)
  box2.pack_start(button2, true, true, 0)
  window2.show_all
  button2.signal_connect( "clicked" ) do
    window2.destroy
    window1.destroy
    Gtk.main_quit
    false
  end
end

Gtk.main
