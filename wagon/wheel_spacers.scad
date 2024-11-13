include <BOSL2/std.scad>

id = 0.5*INCH + 1;

difference(){
   cyl(h=20,d1=id+10,d2=id+20);
   cyl(h=20,d=id);
}