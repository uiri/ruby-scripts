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

$window = Gtk::Window.new
$window.set_default_size(300, 300)
table = Gtk::Table.new(3, 3, true)
$window.add(table)

$button1 = Gtk::Button.new("X or O", false)
$button2 = Gtk::Button.new("X or O", false)
$button3 = Gtk::Button.new("X or O", false)
$button4 = Gtk::Button.new("X or O", false)
$button5 = Gtk::Button.new("X or O", false)
$button6 = Gtk::Button.new("X or O", false)
$button7 = Gtk::Button.new("X or O", false)
$button8 = Gtk::Button.new("X or O", false)
$button9 = Gtk::Button.new("X or O", false)

table.attach_defaults($button1, 0, 1, 0, 1)
table.attach_defaults($button2, 1, 2, 0, 1)
table.attach_defaults($button3, 2, 3, 0, 1)
table.attach_defaults($button4, 0, 1, 1, 2)
table.attach_defaults($button5, 1, 2, 1, 2)
table.attach_defaults($button6, 2, 3, 1, 2)
table.attach_defaults($button7, 0, 1, 2, 3)
table.attach_defaults($button8, 1, 2, 2, 3)
table.attach_defaults($button9, 2, 3, 2, 3)

def errormethod
  error = Gtk::Window.new
  errorbox = Gtk::HBox.new
  errormessage = Gtk::Label.new('an error occured', false)
  errorbutton = Gtk::Button.new("OK")
  errorbox.pack_start(errormessage, false, false, 0)
  errorbox.pack_start(errorbutton, false, false, 0)
  error.add(errorbox)
  errorbutton.signal_connect( "clicked" ) do
  error.destroy
  end
  error.show_all
end

$button1.signal_connect( "clicked" ) do
  dialog = Gtk::Window.new
  entry = Gtk::Entry.new
  vbox = Gtk::VBox.new
  ok = Gtk::Button.new("OK")
  vbox.pack_start(entry, true, false, 0)
  vbox.pack_start(ok, false, false, 0)
  dialog.add(vbox)
  ok.signal_connect( "clicked" ) do
    if entry.text == 'x'
      $button1.set_label('x')
      if $button1.label == $button2.label and $button2.label == $button3.label or $button1.label == $button5.label and $button5.label == $button9.label or $button1.label == $button4.label and $button4.label == $button7.label
        wins('x')
      else
        puts 'GODDAMNIT BUTTON 1!'
      end
      dialog.destroy
    elsif entry.text == 'o'
      $button1.set_label('o')
      if $button1.label == $button2.label and $button2.label == $button3.label or $button1.label == $button5.label and $button5.label == $button9.label or $button1.label == $button4.label and $button4.label == $button7.label
        wins('o')
      else
        puts 'GODDAMNIT BUTTON 1!'
      end
      dialog.destroy
    else
      errormethod
    end
  end
  dialog.show_all
end

$button2.signal_connect( "clicked" ) do
  dialog = Gtk::Window.new
  entry = Gtk::Entry.new
  vbox = Gtk::VBox.new
  ok = Gtk::Button.new("OK")
  vbox.pack_start(entry, true, false, 0)
  vbox.pack_start(ok, false, false, 0)
  dialog.add(vbox)
  ok.signal_connect( "clicked" ) do
    if entry.text == 'x'
      $button2.set_label('x')
      if $button1.label == $button2.label and $button2.label == $button3.label or $button2.label == $button5.label and $button5.label == $button8.label
        wins('x')
      else
        puts 'GODDAMNIT BUTTON 2!'
      end
      dialog.destroy
    elsif entry.text == 'o'
      $button2.set_label('o')
      if $button1.label == $button2.label and $button2.label == $button3.label or $button2.label == $button5.label and $button5.label == $button8.label
        wins('o')
      else
        puts 'GODDAMNIT BUTTON 2!'
      end
      dialog.destroy
    else
      errormethod
    end
  end
  dialog.show_all
end

$button3.signal_connect( "clicked" ) do
  dialog = Gtk::Window.new
  entry = Gtk::Entry.new
  vbox = Gtk::VBox.new
  ok = Gtk::Button.new("OK")
  vbox.pack_start(entry, true, false, 0)
  vbox.pack_start(ok, false, false, 0)
  dialog.add(vbox)
  ok.signal_connect( "clicked" ) do
    if entry.text == 'x'
      $button3.set_label('x')
      if $button1.label == $button2.label and $button2.label == $button3.label or $button3.label == $button5.label and $button5.label == $button7.label or $button3.label == $button6.label and $button9.label == $button6.label
        wins('x')
      else
        puts 'GODDAMNIT BUTTON 3!'
      end
      dialog.destroy
    elsif entry.text == 'o'
      $button3.set_label('o')
      if $button1.label == $button2.label and $button2.label == $button3.label or $button3.label == $button5.label and $button5.label == $button7.label or $button3.label == $button6.label and $button9.label == $button6.label
        wins('o')
      else
        puts 'GODDAMNIT BUTTON 3!'
      end
      dialog.destroy
    else
      errormethod
    end
  end
  dialog.show_all
end

$button4.signal_connect( "clicked" ) do
  dialog = Gtk::Window.new
  entry = Gtk::Entry.new
  vbox = Gtk::VBox.new
  ok = Gtk::Button.new("OK")
  vbox.pack_start(entry, true, false, 0)
  vbox.pack_start(ok, false, false, 0)
  dialog.add(vbox)
  ok.signal_connect( "clicked" ) do
    if entry.text == 'x'
      $button4.set_label('x')
      if $button4.label == $button5.label and $button5.label == $button6.label or $button1.label == $button4.label and $button4.label == $button7.label
        wins('x')
      else
        puts 'GODDAMNIT BUTTON 4!'
      end
      dialog.destroy
    elsif entry.text == 'o'
      $button4.set_label('o')
      if $button4.label == $button5.label and $button5.label == $button6.label or $button1.label == $button5.label and $button5.label == $button9.label or $button1.label == $button4.label and $button4.label == $button7.label
        wins('o')
      else
        puts 'GODDAMNIT BUTTON 4!'
      end
      dialog.destroy
    else
      errormethod
    end
  end
  dialog.show_all
end

$button5.signal_connect( "clicked" ) do
  dialog = Gtk::Window.new
  entry = Gtk::Entry.new
  vbox = Gtk::VBox.new
  ok = Gtk::Button.new("OK")
  vbox.pack_start(entry, true, false, 0)
  vbox.pack_start(ok, false, false, 0)
  dialog.add(vbox)
  ok.signal_connect( "clicked" ) do
    if entry.text == 'x'
      $button5.set_label('x')
      if $button4.label == $button5.label and $button5.label == $button6.label or $button1.label == $button5.label and $button5.label == $button9.label or $button3.label == $button5.label and $button5.label == $button7.label or $button2.label == $button5.label and $button5.label == $button8.label
        wins('x')
      else
        puts 'GODDAMNIT BUTTON 5!'
      end
      dialog.destroy
    elsif entry.text == 'o'
      $button5.set_label('o')
      if $button4.label == $button5.label and $button5.label == $button6.label or $button1.label == $button5.label and $button5.label == $button9.label or $button3.label == $button5.label and $button5.label == $button7.label or $button2.label == $button5.label and $button5.label == $button8.label
        wins('o')
      else
        puts 'GODDAMNIT BUTTON 5!'
      end
      dialog.destroy
    else
      errormethod
    end
  end
  dialog.show_all
end

$button6.signal_connect( "clicked" ) do
  dialog = Gtk::Window.new
  entry = Gtk::Entry.new
  vbox = Gtk::VBox.new
  ok = Gtk::Button.new("OK")
  vbox.pack_start(entry, true, false, 0)
  vbox.pack_start(ok, false, false, 0)
  dialog.add(vbox)
  ok.signal_connect( "clicked" ) do
    if entry.text == 'x'
      $button6.set_label('x')
      if $button4.label == $button5.label and $button5.label == $button6.label or $button3.label == $button6.label and $button6.label == $button9.label
        wins('x')
      else
        puts 'GODDAMNIT BUTTON 6!'
      end
      dialog.destroy
    elsif entry.text == 'o'
      $button6.set_label('o')
      if $button4.label == $button5.label and $button5.label == $button6.label or $button3.label == $button6.label and $button6.label == $button9.label
        wins('o')
      else
        puts 'GODDAMNIT BUTTON 6!'
      end
      dialog.destroy
    else
      errormethod
    end
  end
  dialog.show_all
end

$button7.signal_connect( "clicked" ) do
  dialog = Gtk::Window.new
  entry = Gtk::Entry.new
  vbox = Gtk::VBox.new
  ok = Gtk::Button.new("OK")
  vbox.pack_start(entry, true, false, 0)
  vbox.pack_start(ok, false, false, 0)
  dialog.add(vbox)
  ok.signal_connect( "clicked" ) do
    if entry.text == 'x'
      $button7.set_label('x')
      if $button7.label == $button8.label and $button8.label == $button9.label or $button3.label == $button5.label and $button5.label == $button7.label or $button1.label == $button4.label and $button4.label == $button7.label
        wins('x')
      else
        puts 'GODDAMNIT BUTTON 7!'
      end
      dialog.destroy
    elsif entry.text == 'o'
      $button7.set_label('o')
      if $button7.label == $button8.label and $button8.label == $button9.label or $button3.label == $button5.label and $button5.label == $button7.label or $button1.label == $button4.label and $button4.label == $button7.label
        wins('o')
      else
        puts 'GODDAMNIT BUTTON 7!'
      end
      dialog.destroy
    else
      errormethod
    end
  end
  dialog.show_all
end

$button8.signal_connect( "clicked" ) do
  dialog = Gtk::Window.new
  entry = Gtk::Entry.new
  vbox = Gtk::VBox.new
  ok = Gtk::Button.new("OK")
  vbox.pack_start(entry, true, false, 0)
  vbox.pack_start(ok, false, false, 0)
  dialog.add(vbox)
  ok.signal_connect( "clicked" ) do
    if entry.text == 'x'
      $button8.set_label('x')
      if $button7.label == $button8.label and $button8.label == $button9.label or $button2.label == $button5.label and $button5.label == $button8.label
        wins('x')
      else
        puts 'GODDAMNIT BUTTON 8!'
      end
      dialog.destroy
    elsif entry.text == 'o'
      $button8.set_label('o')
      if $button7.label == $button8.label and $button8.label == $button9.label or $button2.label == $button5.label and $button5.label == $button8.label
        wins('o')
      else
        puts 'GODDAMNIT BUTTON 8!'
      end
      dialog.destroy
    else
      errormethod
    end
  end
  dialog.show_all
end

$button9.signal_connect( "clicked" ) do
  dialog = Gtk::Window.new
  entry = Gtk::Entry.new
  vbox = Gtk::VBox.new
  ok = Gtk::Button.new("OK")
  vbox.pack_start(entry, true, false, 0)
  vbox.pack_start(ok, false, false, 0)
  dialog.add(vbox)
  ok.signal_connect( "clicked" ) do
    if entry.text == 'x'
      $button9.set_label('x')
      if $button7.label == $button8.label and $button8.label == $button9.label or $button1.label == $button5.label and $button5.label == $button9.label or $button3.label == $button9.label and $button9.label == $button6.label
        wins('x')
      else
        puts 'GODDAMNIT BUTTON 9!'
      end
      dialog.destroy
    elsif entry.text == 'o'
      $button9.set_label('o')
      if $button7.label == $button8.label and $button8.label == $button9.label or $button1.label == $button5.label and $button5.label == $button9.label or $button3.label == $button9.label and $button9.label == $button6.label
        wins('o')
      else
        puts 'GODDAMNIT BUTTON 9!'
      end
      dialog.destroy
    else
      errormethod
    end
  end
  dialog.show_all
end

$window.signal_connect("delete_event") do
  $window.destroy
  Gtk.main_quit
  false
end

def wins(x)
  win = Gtk::Window.new
  winbox = Gtk::VBox.new
  playagain = Gtk::Label.new(x + " has won. Do you want to play again?")
  yes = Gtk::Button.new("yes")
  no = Gtk::Button.new("no")
  $buttonbox = Gtk::HBox.new
  $buttonbox.pack_start(yes, false, false, 0)
  $buttonbox.pack_start(no, false, false, 0)
  winbox.pack_start(playagain, false, false, 0)
  winbox.pack_start($buttonbox, false, false, 0)

  yes.signal_connect( "clicked" ) do
    win.destroy
    $button1.set_label("X or O")
    $button2.set_label("X or O")
    $button3.set_label("X or O")
    $button4.set_label("X or O")
    $button5.set_label("X or O")
    $button6.set_label("X or O")
    $button7.set_label("X or O")
    $button8.set_label("X or O")
    $button9.set_label("X or O")
  end

  no.signal_connect( "clicked" ) do
    win.destroy
    $window.destroy
    Gtk.main_quit
    false
  end
  win.add(winbox)
  win.show_all
end

$window.show_all

Gtk.main
