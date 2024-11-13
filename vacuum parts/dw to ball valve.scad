//vacuum to ball valve adaptor
include <BOSL2/std.scad>

valve_id = 57;

vac_od = 1.75*INCH;

collar = 0.75*INCH;

w = 3;
$fn=50;

translate([0,0,30])
difference(){
   cylinder(h = collar, d = vac_od+w*2);
   cylinder(h = collar, d = vac_od);
}

translate([0,0,-collar])
difference(){
   cylinder(h = collar, d = valve_id);
   cylinder(h = collar, d = valve_id-w*2);
}

difference(){
hull(){
translate([0,0,30])
cylinder(h = 1, d = vac_od+w*2);
cylinder(h = 1, d = valve_id);
}

hull(){
translate([0,0,30])
cylinder(h = 1, d = vac_od);
cylinder(h = 1, d = valve_id-w*2);
}
}