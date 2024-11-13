include <BOSL2/std.scad>

l = 1*INCH;
w = 1*INCH;
h = 3;

eighth = (1/8)*INCH;
quarter = (1/4)*INCH;

$fn=50;

difference(){
cuboid(
    [l,w,h], rounding=2,
    edges=[LEFT+FRONT,RIGHT+FRONT,LEFT+BACK,RIGHT+BACK],
    $fn=24
);

translate([-0.25*INCH,-0.25*INCH,0])
cylinder(h=h,d1=eighth-.1,d2=quarter-.1,center=true);

translate([-0.25*INCH,0.25*INCH,0])
cylinder(h=h,d1=eighth-.1,d2=quarter-.1,center=true);

translate([0.25*INCH,0,0])
cylinder(h=h,d1=quarter,d2=eighth,center=true);
}