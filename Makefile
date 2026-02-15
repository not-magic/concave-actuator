# Generated from generate_makefile.py

OUTPUTS = \
	stls/square_actuator_4.5w_0.5d.stl\
	stls/square_actuator_4.5w_0.75d.stl\
	stls/square_actuator_4.5w_1.0d.stl\
	stls/square_actuator_4.5w_1.25d.stl\
	stls/square_actuator_4.5w_1.5d.stl\
	stls/square_actuator_5w_0.5d.stl\
	stls/square_actuator_5w_0.75d.stl\
	stls/square_actuator_5w_1.0d.stl\
	stls/square_actuator_5w_1.25d.stl\
	stls/square_actuator_5w_1.5d.stl\
	stls/square_actuator_5.5w_0.5d.stl\
	stls/square_actuator_5.5w_0.75d.stl\
	stls/square_actuator_5.5w_1.0d.stl\
	stls/square_actuator_5.5w_1.25d.stl\
	stls/square_actuator_5.5w_1.5d.stl\
	stls/square_actuator_6w_0.5d.stl\
	stls/square_actuator_6w_0.75d.stl\
	stls/square_actuator_6w_1.0d.stl\
	stls/square_actuator_6w_1.25d.stl\
	stls/square_actuator_6w_1.5d.stl\
	stls/square_actuator_6.5w_0.5d.stl\
	stls/square_actuator_6.5w_0.75d.stl\
	stls/square_actuator_6.5w_1.0d.stl\
	stls/square_actuator_6.5w_1.25d.stl\
	stls/square_actuator_6.5w_1.5d.stl\
	stls/square_actuator_7w_0.5d.stl\
	stls/square_actuator_7w_0.75d.stl\
	stls/square_actuator_7w_1.0d.stl\
	stls/square_actuator_7w_1.25d.stl\
	stls/square_actuator_7w_1.5d.stl\


OPENSCAD = flatpak run org.openscad.OpenSCAD

all: ${OUTPUTS} stls/.directory_marker stls/square_actuators.zip

stls/.directory_marker:
	mkdir -p ${dir $@}
	touch $@

stls/309_body.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D PART=2 -o $@ concave_actuator.scad

stls/square_actuator_4.5w_0.5d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=4.5 -D CUTOUT_DEPTH=0.5 -o $@ concave_actuator.scad

stls/square_actuator_4.5w_0.75d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=4.5 -D CUTOUT_DEPTH=0.75 -o $@ concave_actuator.scad

stls/square_actuator_4.5w_1.0d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=4.5 -D CUTOUT_DEPTH=1.0 -o $@ concave_actuator.scad

stls/square_actuator_4.5w_1.25d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=4.5 -D CUTOUT_DEPTH=1.25 -o $@ concave_actuator.scad

stls/square_actuator_4.5w_1.5d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=4.5 -D CUTOUT_DEPTH=1.5 -o $@ concave_actuator.scad

stls/square_actuator_5w_0.5d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=5 -D CUTOUT_DEPTH=0.5 -o $@ concave_actuator.scad

stls/square_actuator_5w_0.75d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=5 -D CUTOUT_DEPTH=0.75 -o $@ concave_actuator.scad

stls/square_actuator_5w_1.0d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=5 -D CUTOUT_DEPTH=1.0 -o $@ concave_actuator.scad

stls/square_actuator_5w_1.25d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=5 -D CUTOUT_DEPTH=1.25 -o $@ concave_actuator.scad

stls/square_actuator_5w_1.5d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=5 -D CUTOUT_DEPTH=1.5 -o $@ concave_actuator.scad

stls/square_actuator_5.5w_0.5d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=5.5 -D CUTOUT_DEPTH=0.5 -o $@ concave_actuator.scad

stls/square_actuator_5.5w_0.75d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=5.5 -D CUTOUT_DEPTH=0.75 -o $@ concave_actuator.scad

stls/square_actuator_5.5w_1.0d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=5.5 -D CUTOUT_DEPTH=1.0 -o $@ concave_actuator.scad

stls/square_actuator_5.5w_1.25d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=5.5 -D CUTOUT_DEPTH=1.25 -o $@ concave_actuator.scad

stls/square_actuator_5.5w_1.5d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=5.5 -D CUTOUT_DEPTH=1.5 -o $@ concave_actuator.scad

stls/square_actuator_6w_0.5d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=6 -D CUTOUT_DEPTH=0.5 -o $@ concave_actuator.scad

stls/square_actuator_6w_0.75d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=6 -D CUTOUT_DEPTH=0.75 -o $@ concave_actuator.scad

stls/square_actuator_6w_1.0d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=6 -D CUTOUT_DEPTH=1.0 -o $@ concave_actuator.scad

stls/square_actuator_6w_1.25d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=6 -D CUTOUT_DEPTH=1.25 -o $@ concave_actuator.scad

stls/square_actuator_6w_1.5d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=6 -D CUTOUT_DEPTH=1.5 -o $@ concave_actuator.scad

stls/square_actuator_6.5w_0.5d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=6.5 -D CUTOUT_DEPTH=0.5 -o $@ concave_actuator.scad

stls/square_actuator_6.5w_0.75d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=6.5 -D CUTOUT_DEPTH=0.75 -o $@ concave_actuator.scad

stls/square_actuator_6.5w_1.0d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=6.5 -D CUTOUT_DEPTH=1.0 -o $@ concave_actuator.scad

stls/square_actuator_6.5w_1.25d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=6.5 -D CUTOUT_DEPTH=1.25 -o $@ concave_actuator.scad

stls/square_actuator_6.5w_1.5d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=6.5 -D CUTOUT_DEPTH=1.5 -o $@ concave_actuator.scad

stls/square_actuator_7w_0.5d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=7 -D CUTOUT_DEPTH=0.5 -o $@ concave_actuator.scad

stls/square_actuator_7w_0.75d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=7 -D CUTOUT_DEPTH=0.75 -o $@ concave_actuator.scad

stls/square_actuator_7w_1.0d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=7 -D CUTOUT_DEPTH=1.0 -o $@ concave_actuator.scad

stls/square_actuator_7w_1.25d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=7 -D CUTOUT_DEPTH=1.25 -o $@ concave_actuator.scad

stls/square_actuator_7w_1.5d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=7 -D CUTOUT_DEPTH=1.5 -o $@ concave_actuator.scad

stls/square_actuators.zip: stls/.directory_marker ${OUTPUTS}
	zip -FS -j $@ ${OUTPUTS}
