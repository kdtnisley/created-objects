//vertical brackets for the pocket door
include <BOSL2/std.scad>

max_width = 3.5*INCH;
length = 3.5*INCH+1;
width = 0.75*INCH+1;
height = 1 * INCH;
w = 3;

difference(){
union(){
difference(){
   cube([width+w*2,length+w*2,height]);
   translate([w,w,0])
   cube([width,length,height]);
   
}

translate([max_width-width-2*w,0,0])
difference(){
   cube([width+w*2,length+w*2,height]);
   translate([w,w,0])
   cube([width,length,height]);
   
}

translate([width+2*w,0,0])
cube([width*2,length+2*w,w]);

translate([width+2*w,length+w*2,0])
brace();

translate([width*3+w-.3,0,0])
rotate([0,0,180])
brace();
}

translate([width*2+2*w,10,-1])
cylinder(h=w*2,d=5);

translate([width*2+2*w,length-5,-1])
cylinder(h=w*2,d=5);
}

module brace(){
rotate([90,0,0])
linear_extrude(length+w*2)
right_triangle([2*w,height]);
}
