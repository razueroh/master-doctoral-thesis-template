########################################################################
# Makefile for pdf generation and cleaning auxiliary files
#
# Copyright (C) 2016 Rafael Azuero Hurtado
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, version 3 of the License.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
###########################################################################

SRCDIR = .
MAINDOC	= main
TEXSRC	= $(MAINDOC).tex

clean:
	@rm -f \
	$(SRCDIR)/*.aux \
	$(SRCDIR)/*/*.aux \
	$(SRCDIR)/*.bbl \
	$(SRCDIR)/*.blg \
	$(SRCDIR)/*.log \
	$(SRCDIR)/*.dvi \
	$(SRCDIR)/*.out \
	$(SRCDIR)/*.nav \
	$(SRCDIR)/*.snm \
	$(SRCDIR)/*.idx \
	$(SRCDIR)/*.ilg \
	$(SRCDIR)/*.ind \
	$(SRCDIR)/*.toc \
	$(SRCDIR)/*.lot \
	$(SRCDIR)/*.lof \
	$(SRCDIR)/*.run.xml \
	$(SRCDIR)/*-blx.bib  \
	$(MAINDOC).pdf \
	*~ \
	*backup \
	*bak

pdf:
	pdflatex $(TEXSRC)
	bibtex $(MAINDOC)
	pdflatex $(TEXSRC)
	pdflatex $(TEXSRC)
