
# local variables
appname := cp1
cp1_var1 := cp1_val1
cp1_var2 := cp1_val2

build:
	swift build

run:
	swift run $(appname)

reset:
	swift package reset
	rm -rf Package.resolved

.PHONY: reset build run
