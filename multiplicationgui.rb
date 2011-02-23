#! /usr/bin/env ruby
# -*- coding: utf-8 -*-
# Multiplication Game GUI, play a multiplication game
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

def delete # method used to make sure that the window closes properly
  Gtk.main_quit
  false
end

def nodotzero(x, y)
  if x.to_f == x.to_i
    x = x.to_i
  end
  
  if y.to_f == y.to_i
    y = y.to_i
  end
end

# prepare the first window
window1 = Gtk::Window.new('Start Window')
window1.signal_connect('delete_event') do delete end
box1 = Gtk::VBox.new(false, 2)
window1.add(box1)

# GUI elements to get the starting number
startbox = Gtk::HBox.new(true, 0)
startlabel = Gtk::Label.new('Number to start with:')
startentry = Gtk::Entry.new
startbox.pack_start(startlabel, false, true, 0)
startbox.pack_start(startentry, false, true, 0)

# GUI elements to get the number to multiply by each time
fixedbox = Gtk::HBox.new(true, 0)
fixedlabel = Gtk::Label.new('Number to multiply your last product by each time:')
fixedentry = Gtk::Entry.new
fixedbox.pack_start(fixedlabel, false, true, 0)
fixedbox.pack_start(fixedentry, false, true, 0)

# button to start the game
buttonbox = Gtk::HBox.new(true, 2)
buttonitself = Gtk::Button.new('Start Playing')
buttonbox.pack_start(buttonitself, false, true, 0)

# shove the GUI elements into the box which is in the window
boxes = [startbox, fixedbox, buttonbox]
boxes.each {|boxe| box1.pack_start(boxe, false, false, 0) }

# method to start the game
buttonitself.signal_connect( "clicked" ) do
  # put the gotten numbers into variables
  x = startentry.text
  y = fixedentry.text

  if x.to_f == 0
    x = ''
  end

  if y.to_f == 0
    y = ''
  end

  if x.to_f == x.to_i
    x = x.to_i
  end
  
  if y.to_f == y.to_i
    y = y.to_i
  end
  
  x = x.to_s.gsub(/[a-z]/, "").gsub(/[A-Z]/, "").gsub(/\./, "a").gsub(/\W/, "").gsub(/a/, ".").to_i

  # don't start the game unless neither values is blank
  unless x == '' || y == '' || x == 0 || y == 0
  
    # prep the game window
    window2 = Gtk::Window.new('Multiplication Game')
    window2.signal_connect('delete_event') do delete end
    box2 = Gtk::VBox.new(false, 0)
    window2.add(box2)
  
    # create the label so the player can keep the old answer on screen
    label1 = Gtk::Label.new('Multiply ' + x.to_s + ' by ' + y.to_s)
    
    # GUI elements to get the next answer in the series
    answerbox = Gtk::HBox.new(false, 0)
    answerlabel = Gtk::Label.new('Answer:')
    answerentry = Gtk::Entry.new
    answerbox.pack_start(answerlabel, false, false, 0)
    answerbox.pack_start(answerentry, false, false, 0)

    # button to allow submission of the answer
    loopbutton = Gtk::Button.new('Next Round')

    # shove all these GUI elements into the game window
    widgets = [label1, answerbox, loopbutton]
    widgets.each {|widget| box2.pack_start(widget, false, false, 0) }
  
    # method to check if the given answer is right
    loopbutton.signal_connect( "clicked" ) do
      # make sure the answer isn't nothing
      if answerentry.text != ''
        # set $x and the label to contain the right answer
        x = x.to_f * y.to_f

        if x.to_f == x.to_i
          x = x.to_i
        end
        
        if y.to_f == y.to_i
          y = y.to_i
        end

        label1.set_text("Multiply " + x.to_s + " by " + y.to_s)

        # what to do if the given answer is wrong
        if answerentry.text != x.to_s
          
          # kill the game window and prep a you lost window
          window2.destroy
          window3 = Gtk::Window.new('Sorry...')
          box3 = Gtk::VBox.new(false, 0)
          window3.add(box3)
          
          # tell the player they lost and give options to stop playing or play again
          sorrylabel = Gtk::Label.new('Sorry but the answer was ' + x.to_s + ' . Would you like to play again?')
          playagainbox = Gtk::HBox.new(false, 0)
          yesbutton = Gtk::Button.new('Yes')
          nobutton = Gtk::Button.new('No')
          
          # pack the GUI elements into the you lost window
          playagainbox.pack_start(yesbutton, true, true, 0)
          playagainbox.pack_start(nobutton, true, true, 0)
          box3.pack_start(sorrylabel, false, false, 0)
          box3.pack_start(playagainbox, false, false, 0)
          window3.show_all

          # what to do if they want to play again
          yesbutton.signal_connect( "clicked" ) do
            window3.destroy
          end

          # what to do if they don't want to play again
          nobutton.signal_connect( "clicked" ) do
            window3.destroy
            window1.destroy
            delete
          end

        else
          # clear the answer entry box if they got the right answer
          answerentry.set_text('')
        end
      end
    end
    # allow the player to hit enter on the answer entry box instead of clicking the button
    answerentry.signal_connect( "activate" ) do loopbutton.clicked end
    window2.show_all
  end
end

# allow the player to hit enter on the starting number entry box instead of clicking the button
startentry.signal_connect( "activate" ) do buttonitself.clicked end
# allow the player to hit enter on the fixed number entry box instead of clicking the button
fixedentry.signal_connect( "activate" ) do buttonitself.clicked end

window1.show_all
Gtk.main
