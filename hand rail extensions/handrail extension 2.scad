// hand rail extensions
include <BOSL2/std.scad>

$fn=100;

difference(){
union(){
//corner
path90 = arc(r=30, angle=-100);
zrot(5)
path_extrude2d(path90) railprofile();

//parellel with bar
path_par = [ [0, 0], [0, 6*INCH] ];
xmove(30)
path_extrude2d(path_par) railprofile();

//perpendicular with bar
path_perp = [ [0, 0], [1.75*INCH, 0] ];
ymove(-30)
xmove(-1.75*INCH)
path_extrude2d(path_perp) railprofile();


//bend
translate([30,6*INCH,-30])
zrot(180)
yrot(90)
rotate_extrude(angle=40)
xmove(-30)
rotate([0,0,90])
railprofile();
}

//make lag screw hole
xmove(-2.5*INCH)
ymove(-30)
rotate([90,0,90])
union(){
cylinder(h = 2.75*INCH,d=0.25*INCH);
zmove(2.75*INCH)
cylinder(h = 100,d = 0.75*INCH);
}

//angled chop
translate([0,6*INCH,-16])
rotate([-40,0,0])
cube([2.5*INCH,1*INCH,2*INCH]);

//make dowel join hole
translate([40,6.15*INCH,2])
rotate([90-40,0,0])
cylinder(h=0.75*INCH,d=0.5*INCH,center=true);

translate([20,6.15*INCH,2])
rotate([90-40,0,0])
cylinder(h=0.75*INCH,d=0.5*INCH,center=true);
}

//2D projection
module railprofile()
{
$fn = 100;

difference(){
   union(){
   translate([-18,-15,0])
   square([36,2]);
   
   glued_circles(d=28, spread=(56-27), tangent=-12.5);
   }

translate([-18,-17,0])
square([36,2]);
}
}