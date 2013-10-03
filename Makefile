SRC= \
	myringtones/manifest.webapp \
	myringtones/index.html \
	myringtones/myringtones.css \
	myringtones/myringtones.js \
	myringtones/sounds/marimba.ogg \
	myringtones/sounds/saxophone.ogg \
	myringtones/sounds/bells.ogg

myringtones.zip: $(SRC)
	rm -f myringtones.zip
	(cd myringtones; zip ../myringtones.zip * sounds/* -x \*~)
