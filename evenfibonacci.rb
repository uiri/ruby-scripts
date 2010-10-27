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

a = 0
b = 1
c = a+b
while c <= 2000000
  c = a.to_i+b.to_i
  d = b.to_i+c.to_i
  e = c.to_i+d.to_i
  a = d
  b = e
  x = c.to_i-1
  y = d.to_i-1
  z = e.to_i-1
  if c/2 != x/2
    h = h.to_i+c.to_i
  elsif d/2 != y/2
    h = h.to_i+d.to_i
  elsif e/2 != z/2
    h = h.to_i+e.to_i
  end
end
puts h
