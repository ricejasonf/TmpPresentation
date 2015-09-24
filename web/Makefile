WEBPACK = webpack
HOSTNAME := localhost
PORT := 8080

all: main.js

dev: WEBPACK=webpack-dev-server --inline --hot --progress --colors --content-base public/ --host $(HOSTNAME) --port $(PORT)
dev: all

main.js:
	$(WEBPACK)
