# Generated from generate_makefile.py

OUTPUTS = \
	stls/concave_actuator_fdm_4.5w_0.5d.stl\
	stls/concave_actuator_sla_4.5w_0.5d.stl\
	stls/concave_actuator_fdm_4.5w_0.75d.stl\
	stls/concave_actuator_sla_4.5w_0.75d.stl\
	stls/concave_actuator_fdm_4.5w_1.0d.stl\
	stls/concave_actuator_sla_4.5w_1.0d.stl\
	stls/concave_actuator_fdm_4.5w_1.25d.stl\
	stls/concave_actuator_sla_4.5w_1.25d.stl\
	stls/concave_actuator_fdm_4.5w_1.5d.stl\
	stls/concave_actuator_sla_4.5w_1.5d.stl\
	stls/concave_actuator_fdm_5w_0.5d.stl\
	stls/concave_actuator_sla_5w_0.5d.stl\
	stls/concave_actuator_fdm_5w_0.75d.stl\
	stls/concave_actuator_sla_5w_0.75d.stl\
	stls/concave_actuator_fdm_5w_1.0d.stl\
	stls/concave_actuator_sla_5w_1.0d.stl\
	stls/concave_actuator_fdm_5w_1.25d.stl\
	stls/concave_actuator_sla_5w_1.25d.stl\
	stls/concave_actuator_fdm_5w_1.5d.stl\
	stls/concave_actuator_sla_5w_1.5d.stl\
	stls/concave_actuator_fdm_5.5w_0.5d.stl\
	stls/concave_actuator_sla_5.5w_0.5d.stl\
	stls/concave_actuator_fdm_5.5w_0.75d.stl\
	stls/concave_actuator_sla_5.5w_0.75d.stl\
	stls/concave_actuator_fdm_5.5w_1.0d.stl\
	stls/concave_actuator_sla_5.5w_1.0d.stl\
	stls/concave_actuator_fdm_5.5w_1.25d.stl\
	stls/concave_actuator_sla_5.5w_1.25d.stl\
	stls/concave_actuator_fdm_5.5w_1.5d.stl\
	stls/concave_actuator_sla_5.5w_1.5d.stl\
	stls/concave_actuator_fdm_6w_0.5d.stl\
	stls/concave_actuator_sla_6w_0.5d.stl\
	stls/concave_actuator_fdm_6w_0.75d.stl\
	stls/concave_actuator_sla_6w_0.75d.stl\
	stls/concave_actuator_fdm_6w_1.0d.stl\
	stls/concave_actuator_sla_6w_1.0d.stl\
	stls/concave_actuator_fdm_6w_1.25d.stl\
	stls/concave_actuator_sla_6w_1.25d.stl\
	stls/concave_actuator_fdm_6w_1.5d.stl\
	stls/concave_actuator_sla_6w_1.5d.stl\
	stls/concave_actuator_fdm_6.5w_0.5d.stl\
	stls/concave_actuator_sla_6.5w_0.5d.stl\
	stls/concave_actuator_fdm_6.5w_0.75d.stl\
	stls/concave_actuator_sla_6.5w_0.75d.stl\
	stls/concave_actuator_fdm_6.5w_1.0d.stl\
	stls/concave_actuator_sla_6.5w_1.0d.stl\
	stls/concave_actuator_fdm_6.5w_1.25d.stl\
	stls/concave_actuator_sla_6.5w_1.25d.stl\
	stls/concave_actuator_fdm_6.5w_1.5d.stl\
	stls/concave_actuator_sla_6.5w_1.5d.stl\
	stls/concave_actuator_fdm_7w_0.5d.stl\
	stls/concave_actuator_sla_7w_0.5d.stl\
	stls/concave_actuator_fdm_7w_0.75d.stl\
	stls/concave_actuator_sla_7w_0.75d.stl\
	stls/concave_actuator_fdm_7w_1.0d.stl\
	stls/concave_actuator_sla_7w_1.0d.stl\
	stls/concave_actuator_fdm_7w_1.25d.stl\
	stls/concave_actuator_sla_7w_1.25d.stl\
	stls/concave_actuator_fdm_7w_1.5d.stl\
	stls/concave_actuator_sla_7w_1.5d.stl\


OPENSCAD = flatpak run org.openscad.OpenSCAD

all: ${OUTPUTS} stls/.directory_marker stls/concave_actuators.zip

stls/.directory_marker:
	mkdir -p ${dir $@}
	touch $@

stls/309_body.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D PART=2 -o $@ concave_actuator.scad

stls/concave_actuator_fdm_4.5w_0.5d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=4.5 -D CUTOUT_DEPTH=0.5 -D PRINTER_TYPE=1 -o $@ concave_actuator.scad

stls/concave_actuator_sla_4.5w_0.5d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=4.5 -D CUTOUT_DEPTH=0.5 -D PRINTER_TYPE=0 -o $@ concave_actuator.scad

stls/concave_actuator_fdm_4.5w_0.75d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=4.5 -D CUTOUT_DEPTH=0.75 -D PRINTER_TYPE=1 -o $@ concave_actuator.scad

stls/concave_actuator_sla_4.5w_0.75d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=4.5 -D CUTOUT_DEPTH=0.75 -D PRINTER_TYPE=0 -o $@ concave_actuator.scad

stls/concave_actuator_fdm_4.5w_1.0d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=4.5 -D CUTOUT_DEPTH=1.0 -D PRINTER_TYPE=1 -o $@ concave_actuator.scad

stls/concave_actuator_sla_4.5w_1.0d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=4.5 -D CUTOUT_DEPTH=1.0 -D PRINTER_TYPE=0 -o $@ concave_actuator.scad

stls/concave_actuator_fdm_4.5w_1.25d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=4.5 -D CUTOUT_DEPTH=1.25 -D PRINTER_TYPE=1 -o $@ concave_actuator.scad

stls/concave_actuator_sla_4.5w_1.25d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=4.5 -D CUTOUT_DEPTH=1.25 -D PRINTER_TYPE=0 -o $@ concave_actuator.scad

stls/concave_actuator_fdm_4.5w_1.5d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=4.5 -D CUTOUT_DEPTH=1.5 -D PRINTER_TYPE=1 -o $@ concave_actuator.scad

stls/concave_actuator_sla_4.5w_1.5d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=4.5 -D CUTOUT_DEPTH=1.5 -D PRINTER_TYPE=0 -o $@ concave_actuator.scad

stls/concave_actuator_fdm_5w_0.5d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=5 -D CUTOUT_DEPTH=0.5 -D PRINTER_TYPE=1 -o $@ concave_actuator.scad

stls/concave_actuator_sla_5w_0.5d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=5 -D CUTOUT_DEPTH=0.5 -D PRINTER_TYPE=0 -o $@ concave_actuator.scad

stls/concave_actuator_fdm_5w_0.75d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=5 -D CUTOUT_DEPTH=0.75 -D PRINTER_TYPE=1 -o $@ concave_actuator.scad

stls/concave_actuator_sla_5w_0.75d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=5 -D CUTOUT_DEPTH=0.75 -D PRINTER_TYPE=0 -o $@ concave_actuator.scad

stls/concave_actuator_fdm_5w_1.0d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=5 -D CUTOUT_DEPTH=1.0 -D PRINTER_TYPE=1 -o $@ concave_actuator.scad

stls/concave_actuator_sla_5w_1.0d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=5 -D CUTOUT_DEPTH=1.0 -D PRINTER_TYPE=0 -o $@ concave_actuator.scad

stls/concave_actuator_fdm_5w_1.25d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=5 -D CUTOUT_DEPTH=1.25 -D PRINTER_TYPE=1 -o $@ concave_actuator.scad

stls/concave_actuator_sla_5w_1.25d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=5 -D CUTOUT_DEPTH=1.25 -D PRINTER_TYPE=0 -o $@ concave_actuator.scad

stls/concave_actuator_fdm_5w_1.5d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=5 -D CUTOUT_DEPTH=1.5 -D PRINTER_TYPE=1 -o $@ concave_actuator.scad

stls/concave_actuator_sla_5w_1.5d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=5 -D CUTOUT_DEPTH=1.5 -D PRINTER_TYPE=0 -o $@ concave_actuator.scad

stls/concave_actuator_fdm_5.5w_0.5d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=5.5 -D CUTOUT_DEPTH=0.5 -D PRINTER_TYPE=1 -o $@ concave_actuator.scad

stls/concave_actuator_sla_5.5w_0.5d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=5.5 -D CUTOUT_DEPTH=0.5 -D PRINTER_TYPE=0 -o $@ concave_actuator.scad

stls/concave_actuator_fdm_5.5w_0.75d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=5.5 -D CUTOUT_DEPTH=0.75 -D PRINTER_TYPE=1 -o $@ concave_actuator.scad

stls/concave_actuator_sla_5.5w_0.75d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=5.5 -D CUTOUT_DEPTH=0.75 -D PRINTER_TYPE=0 -o $@ concave_actuator.scad

stls/concave_actuator_fdm_5.5w_1.0d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=5.5 -D CUTOUT_DEPTH=1.0 -D PRINTER_TYPE=1 -o $@ concave_actuator.scad

stls/concave_actuator_sla_5.5w_1.0d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=5.5 -D CUTOUT_DEPTH=1.0 -D PRINTER_TYPE=0 -o $@ concave_actuator.scad

stls/concave_actuator_fdm_5.5w_1.25d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=5.5 -D CUTOUT_DEPTH=1.25 -D PRINTER_TYPE=1 -o $@ concave_actuator.scad

stls/concave_actuator_sla_5.5w_1.25d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=5.5 -D CUTOUT_DEPTH=1.25 -D PRINTER_TYPE=0 -o $@ concave_actuator.scad

stls/concave_actuator_fdm_5.5w_1.5d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=5.5 -D CUTOUT_DEPTH=1.5 -D PRINTER_TYPE=1 -o $@ concave_actuator.scad

stls/concave_actuator_sla_5.5w_1.5d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=5.5 -D CUTOUT_DEPTH=1.5 -D PRINTER_TYPE=0 -o $@ concave_actuator.scad

stls/concave_actuator_fdm_6w_0.5d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=6 -D CUTOUT_DEPTH=0.5 -D PRINTER_TYPE=1 -o $@ concave_actuator.scad

stls/concave_actuator_sla_6w_0.5d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=6 -D CUTOUT_DEPTH=0.5 -D PRINTER_TYPE=0 -o $@ concave_actuator.scad

stls/concave_actuator_fdm_6w_0.75d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=6 -D CUTOUT_DEPTH=0.75 -D PRINTER_TYPE=1 -o $@ concave_actuator.scad

stls/concave_actuator_sla_6w_0.75d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=6 -D CUTOUT_DEPTH=0.75 -D PRINTER_TYPE=0 -o $@ concave_actuator.scad

stls/concave_actuator_fdm_6w_1.0d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=6 -D CUTOUT_DEPTH=1.0 -D PRINTER_TYPE=1 -o $@ concave_actuator.scad

stls/concave_actuator_sla_6w_1.0d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=6 -D CUTOUT_DEPTH=1.0 -D PRINTER_TYPE=0 -o $@ concave_actuator.scad

stls/concave_actuator_fdm_6w_1.25d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=6 -D CUTOUT_DEPTH=1.25 -D PRINTER_TYPE=1 -o $@ concave_actuator.scad

stls/concave_actuator_sla_6w_1.25d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=6 -D CUTOUT_DEPTH=1.25 -D PRINTER_TYPE=0 -o $@ concave_actuator.scad

stls/concave_actuator_fdm_6w_1.5d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=6 -D CUTOUT_DEPTH=1.5 -D PRINTER_TYPE=1 -o $@ concave_actuator.scad

stls/concave_actuator_sla_6w_1.5d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=6 -D CUTOUT_DEPTH=1.5 -D PRINTER_TYPE=0 -o $@ concave_actuator.scad

stls/concave_actuator_fdm_6.5w_0.5d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=6.5 -D CUTOUT_DEPTH=0.5 -D PRINTER_TYPE=1 -o $@ concave_actuator.scad

stls/concave_actuator_sla_6.5w_0.5d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=6.5 -D CUTOUT_DEPTH=0.5 -D PRINTER_TYPE=0 -o $@ concave_actuator.scad

stls/concave_actuator_fdm_6.5w_0.75d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=6.5 -D CUTOUT_DEPTH=0.75 -D PRINTER_TYPE=1 -o $@ concave_actuator.scad

stls/concave_actuator_sla_6.5w_0.75d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=6.5 -D CUTOUT_DEPTH=0.75 -D PRINTER_TYPE=0 -o $@ concave_actuator.scad

stls/concave_actuator_fdm_6.5w_1.0d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=6.5 -D CUTOUT_DEPTH=1.0 -D PRINTER_TYPE=1 -o $@ concave_actuator.scad

stls/concave_actuator_sla_6.5w_1.0d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=6.5 -D CUTOUT_DEPTH=1.0 -D PRINTER_TYPE=0 -o $@ concave_actuator.scad

stls/concave_actuator_fdm_6.5w_1.25d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=6.5 -D CUTOUT_DEPTH=1.25 -D PRINTER_TYPE=1 -o $@ concave_actuator.scad

stls/concave_actuator_sla_6.5w_1.25d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=6.5 -D CUTOUT_DEPTH=1.25 -D PRINTER_TYPE=0 -o $@ concave_actuator.scad

stls/concave_actuator_fdm_6.5w_1.5d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=6.5 -D CUTOUT_DEPTH=1.5 -D PRINTER_TYPE=1 -o $@ concave_actuator.scad

stls/concave_actuator_sla_6.5w_1.5d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=6.5 -D CUTOUT_DEPTH=1.5 -D PRINTER_TYPE=0 -o $@ concave_actuator.scad

stls/concave_actuator_fdm_7w_0.5d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=7 -D CUTOUT_DEPTH=0.5 -D PRINTER_TYPE=1 -o $@ concave_actuator.scad

stls/concave_actuator_sla_7w_0.5d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=7 -D CUTOUT_DEPTH=0.5 -D PRINTER_TYPE=0 -o $@ concave_actuator.scad

stls/concave_actuator_fdm_7w_0.75d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=7 -D CUTOUT_DEPTH=0.75 -D PRINTER_TYPE=1 -o $@ concave_actuator.scad

stls/concave_actuator_sla_7w_0.75d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=7 -D CUTOUT_DEPTH=0.75 -D PRINTER_TYPE=0 -o $@ concave_actuator.scad

stls/concave_actuator_fdm_7w_1.0d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=7 -D CUTOUT_DEPTH=1.0 -D PRINTER_TYPE=1 -o $@ concave_actuator.scad

stls/concave_actuator_sla_7w_1.0d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=7 -D CUTOUT_DEPTH=1.0 -D PRINTER_TYPE=0 -o $@ concave_actuator.scad

stls/concave_actuator_fdm_7w_1.25d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=7 -D CUTOUT_DEPTH=1.25 -D PRINTER_TYPE=1 -o $@ concave_actuator.scad

stls/concave_actuator_sla_7w_1.25d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=7 -D CUTOUT_DEPTH=1.25 -D PRINTER_TYPE=0 -o $@ concave_actuator.scad

stls/concave_actuator_fdm_7w_1.5d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=7 -D CUTOUT_DEPTH=1.5 -D PRINTER_TYPE=1 -o $@ concave_actuator.scad

stls/concave_actuator_sla_7w_1.5d.stl: stls/.directory_marker concave_actuator.scad
	${OPENSCAD} -D CUTOUT_WIDTH=7 -D CUTOUT_DEPTH=1.5 -D PRINTER_TYPE=0 -o $@ concave_actuator.scad

stls/concave_actuators.zip: stls/.directory_marker ${OUTPUTS}
	zip -FS -j $@ ${OUTPUTS}
