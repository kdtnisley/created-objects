// hand rail extensions
include <BOSL2/std.scad>

$fn=100;

difference(){
union(){
//corner
path90 = arc(r=30, angle=100);
zrot(-5)
path_extrude2d(path90) railprofile();

//parellel with bar
path_par = [ [0, 0], [0, 2*INCH] ];
ymove(-2*INCH)
xmove(30)
path_extrude2d(path_par) railprofile();

//perpendicular with bar
path_perp = [ [0, 0], [2.5*INCH, 0] ];
ymove(30)
xmove(-2.5*INCH)
path_extrude2d(path_perp) railprofile();
}

xmove(30)
ymove(-2.75*INCH)
rotate([-90,0,0])
union(){
cylinder(h = 2.75*INCH,d=0.25*INCH);
zmove(2.75*INCH)
cylinder(h = 100,d = 0.75*INCH);
}
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