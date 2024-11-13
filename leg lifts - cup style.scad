//sewing machine leg cups

include <BOSL2/std.scad>

$fn=50;

w = 6;
d_base = 1.75*INCH+w*2;

union(){
difference(){
linear_extrude(w)
circle(d = d_base);

translate([0,0,w])
scale([1,1,0.25])
sphere(d = d_base-w*2);
}

translate([0,0,w])
torus(od = d_base, id = d_base-w*2);
}
