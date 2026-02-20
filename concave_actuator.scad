// the outer width (mm) of the actuator in the middle
ACTUATOR_SIZE = 23.4;

// the height of the active area 
ACTUATOR_SWITCH_HEIGHT = 6.4;

// the mm difference between the actuator size at the top and bottom of the active area, to account for the rotation of the stick, so the actuator presses the switch plungers approximately perpendicular
ACTUATOR_SLANT = 1.5;

// The width of the concave cutouts on the side of the actuator
CUTOUT_WIDTH = 6;
// The depth of the concave cutouts on the side of the actuator
CUTOUT_DEPTH = 1.0;

// The total height of the actuator
TOTAL_HEIGHT = 13.5;

// 0 == FDM, 1 == anything else
PRINTER_TYPE = 0;

// The diameter of the stick shaft. If it is too tight and can't spin at all, this needs to be larger. If it has wiggle room it needs to be smaller. This value may need to be tuned for your printer to get it exactly right, I tuned this for a Prusa MK3S+ w/ 0.6mm nozzle.
SHAFT_DIAMETER = 14.0;

function sq(x) = x*x;

AA_BOTTOM_SIZE = ACTUATOR_SIZE + ACTUATOR_SLANT/2;
AA_TOP_SIZE = ACTUATOR_SIZE - ACTUATOR_SLANT/2;

CUTOUT_RADIUS = CUTOUT_DEPTH + (sq(CUTOUT_DEPTH) + sq(CUTOUT_WIDTH/2))/(2*CUTOUT_DEPTH);

module actuator_shape(size, corner_rad)
{	
	difference()
	{	
		hull()
		{
			for (n = [0:3])
			{
				rotate(90*n) translate([size/2-corner_rad, size/2-corner_rad]) circle(corner_rad, $fn=4);
			}
		}
	}
}

module actuator_cutouts()
{
	scale = 1.0;
	radius = CUTOUT_RADIUS;
	inset = CUTOUT_DEPTH;
	
	extra_distance = radius*scale-inset;
	
	for (n = [0:3])
	{
		rotate(90*n) hull() {
			
			translate([AA_TOP_SIZE/2+extra_distance,0,ACTUATOR_SWITCH_HEIGHT]) linear_extrude(10) scale([scale,0.8]) circle(radius, $fn=200);
			translate([AA_BOTTOM_SIZE/2+extra_distance,0,-1]) linear_extrude(1) scale([scale,0.8]) circle(radius, $fn=200);
		}
	}	
}

difference()
{
	CORNER_RAD = 4.0;
	
	union()
	{
		hull()
		{
			translate([0,0,ACTUATOR_SWITCH_HEIGHT]) linear_extrude(0.1) actuator_shape(AA_TOP_SIZE, CORNER_RAD);
			translate([0,0,-1]) linear_extrude(1) actuator_shape(AA_BOTTOM_SIZE, CORNER_RAD);
		
			cylinder(r=SHAFT_DIAMETER/2+3, h=TOTAL_HEIGHT, $fn=8);
		}
		
	}
	
	/*
	difference()
	{
		hull()
		{
			translate([0,0,ACTUATOR_SWITCH_HEIGHT]) linear_extrude(0.1) actuator_shape(AA_TOP_SIZE-4, 2);
			translate([0,0,-1]) linear_extrude(1) actuator_shape(AA_BOTTOM_SIZE-4, 2);
			
			cylinder(r=SHAFT_DIAMETER/2, h=TOTAL_HEIGHT-2, $fn=8);
			
		}
		
		cube([7,100,100], center=true);
		cube([100,7,100], center=true);
		
		cylinder(r=SHAFT_DIAMETER/2+2, h=TOTAL_HEIGHT);
		
	}*/
	
	actuator_cutouts();

	translate([0,0,-1.2]) cylinder(h=TOTAL_HEIGHT, r=SHAFT_DIAMETER/2, $fn=200);
	cylinder(d=12.5, h=100, center=true, $fn=200);
	
	if (PRINTER_TYPE == 0)
	{
		rotate(45) translate([0,2.5,0]) cube([0.2,10, 100], center=true);
	}
	
	translate([0,0,-150]) cube(300, center=true);
}
