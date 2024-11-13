include <BOSL2/std.scad>


iw = (2 + 9/16)*INCH - 1; //width
il = (2 + 1/8)*INCH;  //depth
ih = (1 + 1/4)*INCH;  //height
rise = 0.5 * INCH; //halfass some rise

pw = iw - 1.5*INCH;
ph = 0.5*INCH;

w = 0.45*4; //make it 4 threads wide for sturdy

$fn = 20;

difference(){
rot(12.5, v=[1,0,0], cp=[0,(il+2*w)/2,(ih+w+rise)/2])
diff()
cuboid([iw+2*w,il+2*w,ih+w+rise],rounding=w, edges = ["Z", BOTTOM]){ 
   tag("remove") translate([0,0,w + rise/2]) cuboid([iw,il,ih]);
   tag("remove") translate([0,il/2,-2.5 + rise/2]) prismoid(size1=[pw,ph], size2=[pw+10,ph], h=20)  {
         tag("remove") edge_profile([BOT+LEFT, BOT+RIGHT], excess=10, convexity=20) {
        mask2d_roundover(h=w,mask_angle=$edge_angle);
    }}
}

translate([0,rise/2+w,-(ih+rise)/2-(rise-w)/2])
cube([iw+4*w,il+4*w,rise+w],center=true);
}


//Old version

//iw = (2 + 9/16)*INCH +1; //width
//il = (2 + 1/8)*INCH +1;  //depth
//ih = (1 + 1/4)*INCH +1;  //height
//
//pw = iw - 1.5*INCH;
//ph = 0.5*INCH;
//
//w = 0.45*3;
//
//$fn = 20;

//xrot(10)
//zmove((ih+w)/2)
//diff()
//cuboid([iw+2*w,il+2*w,ih+w],rounding=w, edges = ["Z", BOTTOM]){ 
//   tag("remove") translate([0,0,w]) cuboid([iw,il,ih]);
//   tag("remove") translate([0,il/2,-2.5]) prismoid(size1=[pw,ph], size2=[pw+10,ph], h=20) {
//    edge_profile(BOT, excess=10, convexity=20) {
//        mask2d_roundover(h=w,mask_angle=$edge_angle);
//    }}
//}
//
//zmove(-5)
//xcopies(w*14,4)
//prismoid(size1=[w*5,il-w], h=9.4, xang=[90,90], yang=[10,90]);

