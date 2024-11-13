include <BOSL2/std.scad>

$fn=30;
wr = 4;
RR = 0.5*INCH+wr;

l = 1*INCH;

interval = 20;

union(){
zmove(l)
xmove(-interval)
yrot(90)
cylinder(h=40,d=wr);

xmove(-interval)
yrot(90)
cylinder(h=interval*2,d=wr);

xcopies(interval, n=3)
cylinder(h=l,d=wr);

xcopies(interval, n=3)
sphere(d=wr);

zmove(l)
xcopies(interval, n=3)
sphere(d=wr);
}
