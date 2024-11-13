include <BOSL2/std.scad>

facex = 14.7;
facey = 16.2;
plate = 2;
wings = 3;

sensorx = 6;
sensory = 7;


difference(){
//faceplate
union(){

zmove(plate*3/2)
cube([facex,facey,plate],center=true);

zmove(plate/2)
cube([facex,facey+wings*2,plate],center=true);
   
translate([0,-facey/4-(facey-facex)+.5,(-plate)])
cube([facex,facey*0.75,plate*2],center=true);   
   
} //end faceplate

zmove(plate)
cube([sensorx,sensory,plate*2],center=true);

zmove(-plate)
translate([0,facey/2-1.5,plate*3/2])
cube([sensorx,facey,plate*2],center=true);
}