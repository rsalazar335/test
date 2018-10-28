
# local variables
appname := cp2
cp2_var1 := cp2_val1
cp2_var2 := cp2_val2

build:
	swift build

run:
	swift run $(appname)

reset:
	swift package reset
	rm -rf Package.resolved

.PHONY: reset build run
