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

a = 1
for i in (1..100)
b = a.to_i*a.to_i
c = c.to_i+b.to_i
a = a.to_i+1
end
d = 1
for i in (1..100)
e = e.to_i+d.to_i
d = d.to_i+1
end
f = e.to_i*e.to_i
g = f.to_i-c.to_i
puts g
