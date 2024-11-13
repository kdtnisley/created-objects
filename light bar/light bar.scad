include <BOSL2/std.scad>

iw = 0.8*INCH;
id = 1.3*INCH;

t = 10;
w = 5;

$fn=25;

difference(){
linear_extrude(t)
union(){
ymove(((id+w)/2))
rect([iw*2+2*w,w],rounding=[0,0,1.5,1.5]);
difference(){
   rect([iw+w*2,id+w*2],rounding=3);
   square([iw,id], center=true);
   translate([0.3*INCH,-0.3*INCH])
   square([iw,id], center=true);
}
ymove(-(id)/2-1.5)
xmove(-1.6)
zrot(45)
rect([iw/3,w],rounding=[1.5,0,1.5,1.5]);

}

translate([iw/2+2.5*w,(id+w)/2,t/2])
rotate([90,0,0])
cylinder(h=6,d=4,center=true);

translate([-(iw/2+2.5*w),(id+w)/2,t/2])
rotate([90,0,0])
cylinder(h=6,d=4,center=true);
}