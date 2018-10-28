
# global variables
com_var1 := comval1
com_var2 := comval2
com_var3 := comval3
hello := world

# global version of FAST library
export FAST_VER_MAJOR := 4
export FAST_VER_MINOR := 2
export FAST_VER_PATCH := 0


build_all: build_cp1 build_cp2 build_cp3

reset_all: reset_cp1 reset_cp2 reset_cp3

build_cp1:
	cd cp1 && $(MAKE) build 

run_cp1:
	cd cp1 && $(MAKE) run

reset_cp1:
	cd cp1 && $(MAKE) reset

build_cp2:
	cd cp2 && $(MAKE) build 

run_cp2:
	cd cp2 && $(MAKE) run

reset_cp2:
	cd cp2 && $(MAKE) reset

build_cp3:
	cd cp3 && $(MAKE) build 

run_cp3:
	cd cp3 && $(MAKE) run

reset_cp3:
	cd cp3 && $(MAKE) reset

