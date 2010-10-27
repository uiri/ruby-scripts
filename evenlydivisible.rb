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

a = 2520
b = 2519
c = 11
while c < 20
  if a.to_i/c.to_i != b.to_i/c.to_i
    d = c
    c = c.to_i+1
    puts a
  else
    if c == 16
      a = a*2
      b = a.to_i-1
      puts a
    else
      a = a*c
      b = a.to_i-1
      puts a
    end
  end
end
