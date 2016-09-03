
.DELETE_ON_ERROR:

# Paths to programs and the like.
ZIP := zip
BZR := bzr

# phony targets (shortcuts)
.PHONY: all clean xpi
xpi: newtabbuttonpaste.xpi

# compression level 1 recommended by devmo.
newtabbuttonpaste.xpi: dist
	cd dist && $(ZIP) -r -1 ../newtabbuttonpaste.xpi .

dist:
	$(BZR) export dist

clean:
	-rm -rf dist newtabbuttonpaste.xpi
