//
//include <BOSL2/std.scad>
//$fn=20;
//
//difference(){
//cuboid([8,20,3],rounding = 3, edges=[FRONT+RIGHT,FRONT+LEFT,BACK+RIGHT,BACK+LEFT]);
//
//translate([0,6,-5])
//cylinder(h=20,d=3);
//   
//translate([0,6,0])
//cylinder(h=3,d1=3, d2=8);
//}


include <BOSL2/std.scad>
$fn=20;

difference(){
length = 15; r1 = 4; r2 = 1;
R = floor(lookup($t, [[0,45], [0.5,150], [1,45]]));
linear_extrude(3)
egg(length,r1,r2,R,$fn=180);


translate([-4,0,-5])
cylinder(h=20,d=3);
   
translate([-4,0,2])
cylinder(h=3,d1=3, d2=8);
}