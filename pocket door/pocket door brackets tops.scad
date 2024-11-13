//top brackets for the pocket door
include <BOSL2/std.scad>


length = 2.5*INCH+1; //2.5
width = 0.75*INCH+1;
height = 1 * INCH;
w = 3;

$fn=30;

difference(){
   
union(){
translate([0,width/2+w,height/2])
rotate([90,0,0])
linear_extrude(width + w)
trapezoid(h=height, w1=length+w, w2=length+w + INCH,rounding=[0,0,w,w]);
}

//stud shape
translate([-length/2,-width/2,-height])
cube([length,width,3*height]);

translate([0,width/2+2*w,3*w])
rotate([90,0,0])
cylinder(h=width,d=3);
  
translate([length/2+4*w,0,0])
rotate([0,-15,0])
cylinder(h=height*2,d=3);

translate([-(length/2+4*w),0,0])
rotate([0,15,0])
cylinder(h=height*2,d=3);
}



