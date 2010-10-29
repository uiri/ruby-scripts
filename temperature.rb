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

print "Fahrenheit or Celsius? \n"
a = gets.chomp
b = 1

while b == 1
  if a == 'fahrenheit'
    print "Enter your temperature in fahrenheit \n"
    x = gets.chomp
    c = ((x.to_i - 32) * 5/9)
    print 'Your temperature in celsius is ' + c.to_s + "\n"
    print "Fahrenheit or Celsius? \n"
    a = gets.chomp
  elsif a == 'celsius'
    print "Enter your temperature in celsius \n"
    x = gets.chomp
    f = (x.to_i * 9/5) + 32
    print 'Your temperature in fahrenheit is ' + f.to_s + "\n"
    print "Fahrenheit or Celsius? \n"
    a = gets.chomp
  elsif a == 'quit'
    b = 1
    break
  else
    print "Fahrenheit or Celsius? \n"
    a = gets.chomp
  end
end
