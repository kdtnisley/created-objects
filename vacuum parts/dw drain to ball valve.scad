//various adaptor tubes

include <BOSL2/std.scad>
include <BOSL2/screws.scad>

valve = 1.9 * INCH; //ID
vac = 1.9 * INCH; //ID of cap, not including threads
pitch = 0.15 * INCH;

spec = [["system","ISO"],
        ["type","screw_info"],
        ["pitch", pitch],
        ["head", "none"],
        ["head_size", 0],
        ["head_size_sharp", 22],
        ["head_angle", 60],
        ["diameter",vac]];
//screw(spec,tolerance=0);

//maybe print a screw block and then test it on the drain cap
union(){
diff()
  cylinder(d=vac+6,h=20)
    attach(TOP)
      screw_hole(spec,tolerance=0,length = 25, thread=true,anchor=TOP);

zmove(20)
difference(){
union(){
  cylinder(d1=vac+6,d2=valve,h=10);
   zmove(10)
  cylinder(d=valve,h=20);
}
union(){  
   cylinder(d1=vac,d2=valve-6,h=10);
   zmove(10)
  cylinder(d=valve-6,h=20);
}
}
}
//slip fitting for vac vent to elbow
//could be a scosh larger and longer on the elbow side
//vac_d = 2.29 * INCH;
//elbow = 2.37 * INCH;
//w = 6;
//$fn=40;
//
//difference(){
//union(){
//cylinder(h = 10, d = vac_d);
//translate([0,0,10])
//cylinder(h = 10, d1 = vac_d, d2 = elbow);
//translate([0,0,20])
//cylinder(h = 10, d = elbow);
//}
//
//union(){
//cylinder(h = 10, d = vac_d-w);
//translate([0,0,10])
//cylinder(h = 10, d1 = vac_d-w, d2 = elbow-w);
//translate([0,0,20])
//cylinder(h = 10, d = elbow-w);
//}
//}