//wrap and end around a stick to hold it flat up

include <BOSL2/std.scad>

//dimensions of the end of the stick
width = 1*INCH;
depth = 0.75*INCH+1;
height = 0.75*INCH+1;
w = 3;
tab = 4;

$fn=20;

difference(){
   union(){
      cube([width+w,depth+2*w,height+w]);
      translate([width/2-tab+w/2,depth/2+tab+w])
      linear_extrude(w)
      rect([width+tab*2+w,depth+tab*2+w*2],rounding=tab,$fa=1,$fs=1);
   }
   translate([w,w,0])
   cube([width,depth,height]);
   
   translate([-tab,tab])
   cylinder(r=2,h=10,center = true);

   translate([-tab,depth+tab*2+w/2])
   cylinder(r=2,h=10,center = true);

   translate([width-w/2,depth+tab*2+w/2])
   cylinder(r=2,h=10,center = true);
}
