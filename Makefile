.SUFFIXES: .ly .pdf .svg

.ly.pdf:
	lilypond $*.ly

.ly.svg:
	lilypond \
		-dno-point-and-click \
		-ddelete-intermediate-files \
		-dbackend=svg \
		-dinclude-settings=grob-inspector.ily \
		--output=$* \
		$*.ly

all: bar1.pdf bar1.svg

