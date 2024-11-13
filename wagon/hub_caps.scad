include <BOSL2/std.scad>

$fn=100;

id = 31.5; //28.5
height = 14; 
wall = 4;
od = id + wall;

difference(){
top_half()
difference(){
   sphere(d=od);
   sphere(d=id);
   cylinder(d=id,h = 4);
}

translate([-16,-16,height])
cube([od,od,height]);
}

translate([0,0,height-2])
cylinder(h=2,d=20);