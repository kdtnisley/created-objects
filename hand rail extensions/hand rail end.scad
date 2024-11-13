include <BOSL2/std.scad>

width = 2.5 * INCH;
depth = 1.25 * INCH;
d_wall = 3 * INCH;

$fn=60;

difference(){
path = [ [0, 0], [0, d_wall], [d_wall, d_wall] ];
   
   //make a path out of 1/4 of a circle???
path_extrude2d(path,caps=false) rect([width,depth], rounding= depth/2);

rotate([-90,0,0])
union(){
cylinder(r = 5, h = d_wall + width);

translate([0,0,d_wall])
cylinder(r = 10, h = width);
}
}