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

window = Gtk::Window.new
window.set_default_size(200,200)
window.set_title("RubyChat")
window.show
box = Gtk::VBox.new(false, 0)
scroll = Gtk::ScrolledWindow.new
$buffer = Gtk::TextBuffer.new
view = Gtk::TextView.new($buffer)
hbox = Gtk::HBox.new(false, 0)
$message = Gtk::Entry.new
button = Gtk::Button.new('Send')

window.signal_connect('delete_event') do
  Gtk.main_quit
  false
end

def newmessage(buffer, message)
  $buffer.set_text(buffer + 'You: ' + message + "\n")
  $message.set_text('')
end

button.signal_connect( "clicked" ) do
  newmessage($buffer.text, $message.text)
end

$message.signal_connect( "activate" ) do
  newmessage($buffer.text, $message.text)
end

window.add(box)
window.set_resizable(true)
view.set_editable(false)
view.wrap_mode = Gtk::TextTag::WRAP_WORD_CHAR
hbox.pack_start($message, true, true, 0)
hbox.pack_start(button, false, false, 0)
scroll.add(view)
scroll.set_policy(1,1)
box.pack_start(scroll, true, true, 0)
box.pack_start(hbox, false, false, 0)
window.show_all
Gtk.main
