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

puts 'Add or subtract?'
a = gets.chomp
while a != 'end'
  if a == 'add'
    puts 'Enter the first number:'
    b = gets.chomp
    puts 'Enter the second number:'
    c = gets.chomp
    d = b.to_i(2)+c.to_i(2)
    puts b + ' + ' + c + ' = ' + d.to_s(2) + '(' + d.to_i.to_s + ')'
    puts 'Add or subtract?'
    a = gets.chomp
  elsif a == 'subtract'
    puts 'Enter the first number:'
    b = gets.chomp
    puts 'Enter the second number:'
    c = gets.chomp
    d = b.to_i(2)-c.to_i(2)
    puts b + ' - ' + c + ' = ' + d.to_s(2) + '(' + d.to_i.to_s + ')'
    puts 'Add or subtract?'
    a = gets.chomp
  else
    puts 'Add or subtract?'
    a = gets.chomp
  end
end
