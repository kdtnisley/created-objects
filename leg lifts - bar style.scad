
include <BOSL2/std.scad>

w = 3;
leg_thickness = 2*INCH+1;
depth = 2*INCH;
height = 0.5*INCH;
$fn=20;

difference(){
chain_hull() {
translate([0,0,height])
cube([leg_thickness+2*w,depth,height],center=true);

cylinder(d=leg_thickness-w,h=1,center=true);
}

translate([0,0,height+w])
cube([leg_thickness,depth*2,height],center=true);
}