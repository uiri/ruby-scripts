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

require 'gtk2'

window = Gtk::Window.new
window.set_default_size(500,500)
window.set_title("RubyChat")
window.show
box = Gtk::VBox.new(false, 0)
scroll = Gtk::ScrolledWindow.new
buffer = Gtk::TextBuffer.new
view = Gtk::TextView.new(buffer)
hbox = Gtk::HBox.new(false, 0)
message = Gtk::Entry.new
button = Gtk::Button.new('Send')

window.signal_connect('delete_event') do
  Gtk.main_quit
  false
end

button.signal_connect( "clicked" ) do
  oldtext = buffer.text
  newtext = message.text
  buffer.set_text(oldtext + 'You: ' + newtext + "\n")
end

window.add(box)
view.set_editable(false)
hbox.pack_start(message, true, true, 0)
hbox.pack_start(button, false, false, 0)
scroll.add(view)
box.pack_start(scroll, true, true, 0)
box.pack_start(hbox, false, false, 0)
window.show_all
Gtk.main
