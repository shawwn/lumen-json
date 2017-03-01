.PHONY: all clean

LUMEN ?= lumen

all: index.js init.lua

clean:
	@git checkout *.js *.lua

init.lua: lib.l
	@echo $@
	@$(LUMEN) -c $< -o $@ -t lua

index.js: lib.l
	@echo $@
	@$(LUMEN) -c $< -o $@ -t js
