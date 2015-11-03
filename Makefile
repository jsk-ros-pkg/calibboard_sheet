ARCH=	$(shell uname | cut -d'_' -f1)

all: calibboard_3x3_0.010.pdf calibboard_4x3_0.010.pdf calibboard_5x4_0.025.pdf calibboard_6x5_0.030.pdf calibboard_7x5_0.030.pdf calibboard_7x5_0.050.pdf calibboard_8x6_0.025.pdf $(TARGET.PDF)

%.pdf: %.eps
	ps2pdf $<
#	ps2pdf -sPAPERSIZE=a3 $<
%.eps: %.dia
	dia -t eps $<
