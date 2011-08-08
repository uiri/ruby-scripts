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
for i in (1..1000)
  b = a/3
  c = a/5
  a = a+1
  d = a/3
  e = a/5
  if c.to_i != e.to_i
    f = f.to_i+a.to_i
    puts f.to_s
  elsif b.to_i != d.to_i
    f = f.to_i+a.to_i
    puts f.to_s
  end
end
