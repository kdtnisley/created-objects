include <BOSL2/std.scad>

$fn=20;

od1 = 7;
od2 = 8;
od3 = 10;
od4 = 13;
radii = [od1, od2, od3, od4];

spacing = 4;

width = od4 + od3 + 4*spacing;
length = od3*2 + od4*2 + 6*spacing;

height = 8; //height to ring of center punch
tip = 5; //height from ring to point

union(){
difference(){
   linear_extrude(height+tip+6)
   rect([width+4,length+4],rounding=[3,3,3,3]);
   
   zmove(2)
   linear_extrude(height+tip+6)
   rect([width,length],rounding=[2,2,8,8]);
 
   ymove(.5)
   zmove(height+tip)
   linear_extrude(4)  
   rect([width+2,length+3],rounding=[0,0,3,3]);
}

difference(){
linear_extrude(height)
rect([width,length],rounding=[3,3,3,3]);

translate([(od4+spacing)/2+1,-1,0])
grid_copies(n=[1,4], spacing=od4+spacing){
    cylinder(d=radii[$idx], h=height);
} 

translate([-(od4+spacing)/2-1,-1,0])
grid_copies(n=[1,4], spacing=od4+spacing){
    cylinder(d=radii[$idx], h=height);
} 
}
   }