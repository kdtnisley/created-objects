//wrap and end around a stick to hold it flat up

include <BOSL2/std.scad>

//dimensions of the end of the stick
width = 0.5*INCH;
depth = 0.75*INCH+1;
height = 0.75*INCH+1;
w = 3;
tab = 7;

$fn=20;

difference(){
   union(){
      cube([width,depth+2*w,height+w]);
     
      translate([(width)/2,-w,0])
      linear_extrude(w)
      rect([width,tab+w],rounding=[0,0,w,w],$fa=1,$fs=1);
  
      translate([(width)/2,depth+3*w,0])
      linear_extrude(w)
      rect([width,tab+w],rounding=[w,w,0,0],$fa=1,$fs=1);  
         
   }
   translate([0,w,0])
   cube([width,depth,height]);
   
   translate([width/2,-w-1])
   cylinder(r=2,h=10,center = true);
   
   translate([width/2,depth+3*w])
   cylinder(r=2,h=10,center = true);

}

