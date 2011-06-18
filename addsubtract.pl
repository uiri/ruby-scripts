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
until ($a eq "end") {
    sub choose {
	print 'Add or subtract: ';
	chomp ($a = <>);
    }
    sub twonum {
	print "Enter the first number: ";
	chomp ($b = <>);
	print "Enter the second number: ";
	chomp ($c = <>);
    }
    if ($a eq 'add') {
	twonum;
	$d = $b + $c;
	print $b . " + " . $c . " = " . $d . "\n";
	choose;
    } elsif ($a eq 'subtract') {
	twonum;
        $d = $b - $c;
	print $b . " - " . $c . " = " . $d . "\n";
	choose;
    } else {
	choose;
    }
}
