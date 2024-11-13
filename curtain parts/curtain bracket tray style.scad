w = 3;

$fn=50;

difference(){
union(){
translate([0,0,w/2])
cylinder(h=w,d=25,center=true);

difference(){
translate([15/2,0,43/2])
cube([15,25,43],center=true);

translate([15/2-w,w,43-23/2-w])
cube([15,25,23],center=true);
}
}
translate([-6,0,w])
cylinder(h=w*2,d=5,center=true);
}