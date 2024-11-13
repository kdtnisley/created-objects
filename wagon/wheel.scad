//wagon wheels
include <BOSL2/std.scad>

axle_ID = 13.17; //mm
axle_OD = 18.8; //mm
axle_l = 41.42; //mm

num_ribs = 3; //mm
wheel_OD = 133.5; //mm
rim_depth = 4.2; //mm
rim_thickness = 19.5; //mm
rim_exp = 28;


difference(){
   //create outer rim
   difference(){
      cylinder(h=rim_thickness,d=wheel_OD);
      translate([0,0,rim_thickness])
      rounding_hole_mask(d=wheel_OD-4*rim_depth, rounding=4);
      rounding_hole_mask(d=wheel_OD-4*rim_depth, rounding=4, orient=DOWN);
   }
   
   //carve out annoying to print area
   cylinder(h=rim_thickness,d=wheel_OD-4*rim_depth);

   //carve out tire rest
   translate([0,0,rim_thickness/2])
      rotate_extrude(){
      translate([wheel_OD/2+6.75,0])
      circle(d=21.5);
   }
   
   //remove spoke holes
   translate([0,0,rim_thickness/2])
   zrot_copies(n=num_ribs) yrot(90) cyl(h=wheel_OD,d=(3/8)*INCH);
}





// create center hub
difference(){
   zmove(rim_thickness/2) cyl(h=rim_thickness,d=axle_ID+4*rim_depth,rounding=4);
   cylinder(h=rim_thickness,d=axle_ID);
   
   //remove spoke holes
   zmove(rim_thickness/2) zrot_copies(n=num_ribs*2) xmove(wheel_OD/4+axle_ID/2+3) yrot(90) cyl(h=wheel_OD/2,d=(3/8)*INCH);
}



