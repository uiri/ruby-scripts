# -*- coding: utf-8 -*-
# Copyright 2011 Uiri Noyb
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

def delete
  Gtk.main_quit
  false
end

def newmessage(buffer, message, name)
  $mainbuffer.set_text(buffer + name + message + "\n")
  $mainmessage.set_text('')
end

initwindow = Gtk::Window.new
initwindow.signal_connect('delete_event') do delete end
initbox = Gtk::VBox.new(false, 0)
initwindow.add(initbox)

namebox = Gtk::HBox.new(true, 2)
namelabel = Gtk::Label.new('Your name:')
nameentry = Gtk::Entry.new
namebox.pack_start(namelabel, false, true, 0)
namebox.pack_start(nameentry, true, true, 0)

buttonbox = Gtk::HBox.new(true, 2)
initbutton = Gtk::Button.new('CONNECT!')
buttonbox.pack_start(initbutton, true, true, 0)

initbox.pack_start(namebox, true, true, 0)
initbox.pack_start(buttonbox, true, true, 0)

initbutton.signal_connect( "clicked" ) do
  $name = nameentry.text + ':  '
  initwindow.destroy
  mainwindow = Gtk::Window.new('RubyChat')
  mainwindow.signal_connect('delete_event') do delete end
  mainwindow.set_default_size(200,200)
  mainwindow.show
  mainbox = Gtk::VBox.new(false, 0)
  mainscroll = Gtk::ScrolledWindow.new
  $mainbuffer = Gtk::TextBuffer.new
  mainview = Gtk::TextView.new($mainbuffer)
  mainhbox = Gtk::HBox.new(false, 0)
  $mainmessage = Gtk::Entry.new
  mainbutton = Gtk::Button.new('Send')

  mainbutton.signal_connect( "clicked" ) do
    newmessage($mainbuffer.text, $mainmessage.text, $name)
  end

  $mainmessage.signal_connect( "activate" ) do
    newmessage($mainbuffer.text, $mainmessage.text, $name)
  end

  mainwindow.add(mainbox)
  mainwindow.set_resizable(true)
  mainview.set_editable(false)
  mainview.wrap_mode = Gtk::TextTag::WRAP_WORD_CHAR
  mainhbox.pack_start($mainmessage, true, true, 0)
  mainhbox.pack_start(mainbutton, false, false, 0)
  mainscroll.add(mainview)
  mainscroll.set_policy(1,1)
  mainbox.pack_start(mainscroll, true, true, 0)
  mainbox.pack_start(mainhbox, false, false, 0)
  mainwindow.show_all
end

initwindow.show_all
Gtk.main
