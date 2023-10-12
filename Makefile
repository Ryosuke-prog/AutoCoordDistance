all: build

build:
	@echo "Building main.lisp..."
	cd src && sbcl --noinform --no-sysinit --no-userinit --load main.lisp --eval '(sb-ext:save-lisp-and-die "../bin/main" :toplevel (function main) :executable t)'
	@echo "Build complete."
	@mv ./src/AutoCoordDistance  ./bin 

clean:
	rm -f bin/main

