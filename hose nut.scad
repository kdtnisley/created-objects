include <BOSL2/std.scad>
include <BOSL2/threading.scad>

pump_d = 50;
pump_h = 30;
w = 5;

hose_d = (1 + 1/16) * INCH;
pitch_val = 11.5;
hose_l = 15;

acme_threaded_nut(nutwidth=1.5*INCH, id=hose_d, l=hose_l, tpi=pitch_val,$slop=0.05);