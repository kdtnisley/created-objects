

//make plate out of hollow rectangle scaled extruded

//then make cable guide

include <BOSL2/std.scad>

height = 4 * INCH;
width = 2 * INCH;
w = 5;
$fn=20;

difference(){
   union(){
   zmove(6)
   linear_extrude(height = 10, center = true, convexity = 10, scale=0.25){
      difference(){
      rect([width,height], rounding=5);
      rect([width-w,height-w], rounding=5);
      }
   }
   linear_extrude(height = 2, center = true, convexity = 10)
      difference(){
      rect([width,height], rounding=5);
      rect([width-w,height-w], rounding=5);
   }
   
   //mounting hole supports
   translate([0,(1.75*INCH),0])
   cylinder(h = 2.7,d=8);

   translate([0,(-1.75*INCH),0])
   cylinder(h = 2.7,d=8);  
   
   
   }
   
   //mounting holes
   translate([0,(1.75*INCH),-1])
   cylinder(h = 10,d=4);

   translate([0,(-1.75*INCH),-1])
   cylinder(h = 10,d=4);
}


//comms block (hole for sensor, mounting block for housing)
zmove(8.5)
difference(){
   cuboid([.25*width,.25*height,w], rounding=2, edges="Z");

   //comms hole
   cylinder(h = 10,d=4,center=true);
   
   translate([0,-2,(-w/2)])
   cube([4,8,w],center=true);

}

//cable routing tube
path = [ [INCH, 0, 0], [INCH+40, 0, 0], [INCH+40, 80, 0]];
path_extrude(path) 


difference(){
   circle(d=15,$fn=6);
   circle(d=15-w);
   
   xmove(7.5)
   square(15,15);
}


