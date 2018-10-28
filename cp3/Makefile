
# local variables
appname := cp3
cp3_var1 := cp3_val1
cp3_var2 := cp3_val2

build:
	swift build

run:
	swift run $(appname)

reset:
	swift package reset
	rm -rf Package.resolved

.PHONY: reset build run
