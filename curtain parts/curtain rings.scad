//curtain rings

w = 2;
id = 6;
$fn=30;

difference(){
   cylinder(h=w,d=id+w*2);
   cylinder(h=w,d=id);
}