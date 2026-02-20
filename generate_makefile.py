CUTOUT_WIDTHS = [
    4.5,
    5,
    5.5,
    6,
    6.5,
    7
]

CUTOUT_DEPTHS = [
    0.5,
    0.75,
    1.0,
    1.25,
    1.5
]

PRINTER_TYPE = {
    "fdm": 0,
    "sla": 1
}

with open("Makefile", "w") as f:
    f.write("# Generated from generate_makefile.py")

    f.write('\n\nOUTPUTS = \\')
    for width in CUTOUT_WIDTHS:
        for depth in CUTOUT_DEPTHS:
            for type in PRINTER_TYPE:
                f.write(f"\n\tstls/concave_actuator_{type}_{width}w_{depth}d.stl\\")

    f.write("\n\n")

    f.write(f"\nOPENSCAD = flatpak run org.openscad.OpenSCAD\n")

    f.write("\nall: ${OUTPUTS} stls/.directory_marker stls/concave_actuators.zip")

    f.write("\n\nstls/.directory_marker:")
    f.write("\n\tmkdir -p ${dir $@}")
    f.write("\n\ttouch $@")

    f.write("\n\nstls/309_body.stl: stls/.directory_marker concave_actuator.scad")
    f.write("\n\t${OPENSCAD} -D PART=2 -o $@ concave_actuator.scad")

    for width in CUTOUT_WIDTHS:
        for depth in CUTOUT_DEPTHS:
            for type_name, type_param in PRINTER_TYPE.items():
                f.write(f"\n\nstls/concave_actuator_{type_name}_{width}w_{depth}d.stl: stls/.directory_marker concave_actuator.scad")
                f.write(f"\n\t${{OPENSCAD}} -D CUTOUT_WIDTH={width} -D CUTOUT_DEPTH={depth} -D PRINTER_TYPE={type_param} -o $@ concave_actuator.scad")

    f.write("\n\nstls/concave_actuators.zip: stls/.directory_marker ${OUTPUTS}")
    f.write("\n\tzip -FS -j $@ ${OUTPUTS}")
    f.write("\n")