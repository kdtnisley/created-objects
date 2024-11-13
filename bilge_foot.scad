//// hose foot for bolge pump
//   purpose: to attach hose to bilge pump and provide a sturdy enough stand to use the pump without it fracturing
//  as backup to sump in event of power loss during storm

// and also so that I can sleep this shit is giving me anxiety


include <BOSL2/std.scad>
include <BOSL2/threading.scad>

pump_d = 60;
pump_h = 30;
w = 5;

hose_d = (1 + 1/16) * INCH;
pitch_val = 11.5;
hose_l = 30;

// pump socket
// socket needs to create an airtight seal around the pump
// pump needs to be slightly above the bottom of the socket so that it can suction well
union(){
difference(){
   cylinder(h = pump_h + w, d = pump_d + w*2);
   translate([0,0,w])
   cylinder(h = pump_h, d = pump_d);
   
   //hose attachment
   translate([pump_d/2-w,0,1.5*INCH/2])
   rotate([0,90,0])
   cylinder(h = hose_l, d = hose_d-6);
}

//hose attachment
translate([pump_d/2+hose_l/2,0,1.5*INCH/2])
yrot(90)
zrot(30)
acme_threaded_nut(nutwidth=1.5*INCH, id=hose_d, l=hose_l, pitch=pitch_val);
}