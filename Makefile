.SUFFIXES: .ly .pdf

.ly.pdf:
	lilypond $*.ly

all: bar1.pdf

