//wrap and end around a stick to hold it flat up

include <BOSL2/std.scad>

//dimensions of the end of the stick
width = 0.75*INCH;
depth = (5/8)*INCH+1;
height = 0.75*INCH+1;
w = 3;
tab = 7;

$fn=20;

difference(){
   union(){
      cube([width,depth+2*w,height+w]);        
   }
   translate([0,w,0])
   cube([width,depth,height]);
   
}

translate([width/2,depth/2+w,height+depth])
rotate([-90,0,90])
path_extrude2d(arc(d=depth,angle=[25,155]),caps=true)
    circle(d=5);

translate([width/2,depth/2+w,height+w])
cylinder(h=w*2,d=5);