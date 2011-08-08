# -*- coding: utf-8 -*-
# Multiplication Game, a game involving multiplication
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

puts "Enter the fixed number to multiply each stage by:\n" # ask for the fixed number
x = gets.chomp # read input into x
y = 0 # set y
i = 1 # set i

while i == 1 # change the value of i to break out
  if y == 0 # if this is the first round
    puts "Enter the square of the fixed number:\n" # ask for the square
    y = gets.chomp # read the input into y
    z = x.to_i * x.to_i # set z to the correct answer
  else
    puts "Enter the last number you entered multiplied by the fixed number:\n" # ask for the next number in the series
    z = y.to_i * x.to_i # set z to the correct answer
    y = gets.chomp # read input into y
  end
  if y.to_i != z.to_i # if the answer given was incorrect
    puts "Sorry, the answer was " + z.to_s + ", you lose. Please play again." # tell the player they lost
    i = 0 # break out of the while loop
  end
end
