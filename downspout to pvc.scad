include <BOSL2/std.scad>

down_w = 3*INCH;
down_l = 2*INCH;

barrel_id = 48;
barrel_od = 56;

w = 4;

union(){

translate([0,0,-15])
linear_extrude(15)
difference(){
   rect([down_w+w*2,down_l+w*2],rounding = w);
   rect([down_w,down_l],rounding=w);
}

difference(){
chain_hull() {
   linear_extrude(1)
   rect([down_w+w*2,down_l+w*2],rounding = w);
   translate([0,0,2*INCH])
   linear_extrude(1)
   circle(d=barrel_od);
}


chain_hull() {
   linear_extrude(1)
   rect([down_w,down_l],rounding=w);
   translate([0,0,2*INCH])
   linear_extrude(1)
   circle(d=barrel_id);
}
}

translate([0,0,2*INCH])
linear_extrude(15)
difference(){
   circle(d=barrel_od);
   circle(d=barrel_id);
}
}