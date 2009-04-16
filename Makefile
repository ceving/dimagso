##
## Makefile for dimagso
##
## Time-stamp: <2009-04-16 17:06:39 szi>
##
## Copyright (C) 2009 Sascha Ziemann <ceving@gmail.com>
##
## This program is free software; you can redistribute it and/or
## modify it under the terms of the GNU General Public License as
## published by the Free Software Foundation; either version 3 of the
## License, or (at your option) any later version.
##
## This program is distributed in the hope that it will be useful, but
## WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
## General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program; if not, see <http://www.gnu.org/licenses/>.
##

all:
	@echo no default target

lines:
	grep -v -e '^[[:space:]]*$$' dimagso | wc -l

dimagso.ui: dimagso.glade
	gtk-builder-convert $^ $@

testbuilder.po: testbuilder.pl
	xgettext -d testbuilder $^

locale/de/LC_MESSAGES/testbuilder.mo: testbuilder.de.po
	mkdir -p `dirname $@` && msgfmt -o $@ $^