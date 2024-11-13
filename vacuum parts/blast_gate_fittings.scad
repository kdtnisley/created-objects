include <BOSL2/std.scad>

vside_id = 1.25 * INCH; //extension press fits into the inside
tside_od = 1.25 * INCH; //tool press fits onto the outside

w = (3/16)*INCH; //wall thickness (measured from tube)

flange = 3*w; //radius of flange

height = 1.25*INCH; //total height of the part

screw_d = 3; //mm
flange_t = w*1.5;

$fn=40;

/////////////////////////////////////////////////////////////
//blast gate tool side    
//// the thickness on this one needs to be so much smaller (about half)
difference(){
    union(){
        cylinder(h=height,d1=tside_od+1,d2=tside_od-1); //outside
        difference(){
        cylinder(h=flange_t,d=tside_od+flange*2); //flange
        zmove(flange_t) rounding_cylinder_mask(d=tside_od+flange*2, rounding=w, $fa=2, $fs=2);
        }
        zmove(flange_t) yrot(180) rounding_hole_mask(d=tside_od, rounding=w, $fa=2, $fs=2);
    }    
   cylinder(h=height,d=tside_od-2*w); //inside
   zmove(height) rounding_cylinder_mask(d=tside_od, rounding=w, $fa=2, $fs=2);
    
   //screw holes
   zrot_copies(d=tside_od+w*2.9,n=4) cylinder(h=flange_t, d=screw_d);
   zmove(flange_t-2) zrot_copies(d=tside_od+w*2.9,n=4) cylinder(h=2, d1=screw_d, d2=6);
   zmove(flange_t) zrot_copies(d=tside_od+w*2.9,n=4) cylinder(h=2, d=6);
}


//  
/////////////////////////////////////////////////////////////
//blast gate vac side    
//difference(){
//    union(){
//        cylinder(h=height,d=vside_id+2*w); //outside
//        difference(){ //flange
//        cylinder(h=flange_t,d=vside_id+flange*2.5);
//        zmove(flange_t) rounding_cylinder_mask(d=vside_id+flange*2.5, rounding=w, $fa=2, $fs=2);
//        }
//        zmove(flange_t) yrot(180) rounding_hole_mask(d=vside_id+2*w, rounding=w, $fa=2, $fs=2);
//    }    
//   cylinder(h=height,d1=vside_id-1,d2=vside_id+1);   //inside
//   zmove(height) rounding_hole_mask(d=vside_id, rounding=w, $fa=2, $fs=2); 
//    
//    //screw holes
//   zrot_copies(d=vside_id+w*4.5,n=4) cylinder(h=flange_t, d=screw_d);
//   zmove(flange_t-2) zrot_copies(d=vside_id+w*4.5,n=4) cylinder(h=2, d1=screw_d, d2=6);
//   zmove(flange_t) zrot_copies(d=vside_id+w*4.5,n=4) cylinder(h=2, d=6);
//}
