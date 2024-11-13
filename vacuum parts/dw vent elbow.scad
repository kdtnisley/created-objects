//ball valve elbow
include <BOSL2/std.scad>

$fn=50;
w = 3;
elbow_od = 48.5; //valve ID
elbow_id = elbow_od - 2*w;

difference(){
//outsides
union(){
   cylinder(h=elbow_od,d=elbow_od);
   translate([0,0,0])
   sphere(d=elbow_od);
   rotate([90,0,0])
   cylinder(h=elbow_od/2,d=elbow_od);
}

//insides
union(){
   cylinder(h=elbow_od,d=elbow_id);
   translate([0,0,0])
   sphere(d=elbow_id);
   rotate([90,0,0])
   cylinder(h=elbow_od,d=elbow_id);
}
}

