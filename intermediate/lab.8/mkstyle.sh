
#!/bin/bash
# Name: Javier Hernandez Requena
# File: mkstyle
# Date: December 17, 2021
# Desc: uses eval and a CSS template to create a "@font-face" CSS stylesheet for
#	any directory containing truetype, opentype, woff, or woff2 format fonts


if [ "$#" -ne 1 ] ; then
	echo "Incorrect number of arguments."
	echo "Usage: mkstyle <directory>"
	exit $?
fi

cd $1

FONTS=$(find . -type f -name "*.ttf" -o -type f -name "*.otf" -o -type f -name "*.woff" -o -type f -name "*.woff2")

for i in $FONTS
do	
	case "$i" in
		*.ttf)		basename=${i##*/}
				FONT_NAME=${basename%.ttf}
				FONT_FORMAT=truetype
				WEIGHT=normal
				STYLE=normal;;
		*.otf)		basename=${i##*/}
				FONT_NAME=${basename%.otf}
				FONT_FORMAT=opentype
				WEIGHT=normal
				STYLE=normal;;
		*.woff)		basename=${i##*/}
				FONT_NAME=${basename%.woff}
				FONT_FORMAT=woff
				WEIGHT=normal
				STYLE=normal;;
		*.woff2)	basename=${i##*/}
				FONT_NAME=${basename%.woff2}
				FONT_FORMAT=woff2
				WEIGHT=normal
				STYLE=normal;;
	esac

	eval "echo '@font-face { \
		font-family: \"$FONT_NAME\"; \
		src: url($i) format(\"$FONT_FORMAT\");\
		font-weight: $WEIGHT; \
		font-style: $STYLE; }'" >> style.css


done
