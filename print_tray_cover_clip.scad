include <BOSL2/std.scad>

i_d = (1 + 5/8) * INCH;

i_h = (3/8) * INCH;

w = 3;

$fn=100;

difference(){
linear_extrude(i_d+2*w)
union(){
translate([0,i_h/2,0])
rect([15,i_h],rounding=[3,3,0,0]);

difference(){
   circle(d=15);
   translate([0,15/2,0])
   square([15,15],center=true);
}
}
translate([-15/2,-11,3])
cube([15,i_h+15/2,i_d]);
}