include <BOSL2/std.scad>
include <BOSL2/modular_hose.scad>

vside_id = 1.25 * INCH; //extension press fits into the inside
tside_od = 1.25 * INCH; //tool press fits onto the outside

w = (3/16)*INCH; //wall thickness (measured from tube)

flange = 3*w; //radius of flange

height = 1.25*INCH; //total height of the part

screw_d = 3; //mm
flange_t = w*1.5;

$fn=40;

/////
// vac to bilge hose
//  cylinder to slightly different cylinder
//vac_id = 30; //fitting goes into the vac
//bilge_od = 34; //bilge goes INto this
//ht = 0.75*INCH;
//w=7*0.45;
//
//difference(){
//hull(){
//   cylinder(h=ht, d=bilge_od+w);
//   zmove(ht) cylinder(h=1*INCH, d=vac_id);   
//   }
//
//hull(){
//   cylinder(h=ht, d=bilge_od);
//   zmove(ht) cylinder(h=1*INCH, d=vac_id-w);
//   }
//}

// bilge hose to top of separator & side of separator to bilge hose
//  cylinder to cap
c_id = 59; //2.5*INCH;  ///the cap fits INTO the 2.5" opening
bilge_od = 34; //mm ///the bilge pipe fits INTO this
ht = bilge_od/2;
w=7*0.45;

difference(){
union(){      
   cylinder(h=INCH, d=c_id); //outside
   hull(){
   zmove(INCH) cylinder(h=ht+2.2, d1=c_id, d2=8); //cap outside
   zmove(bilge_od/2 + INCH/2 - 3) yrot(90) cylinder(h=c_id/2 + 10,d=bilge_od+w); //bilge outside
}}

union(){
   cylinder(h=INCH, d=c_id-w); //inside
   hull(){
   zmove(INCH) cylinder(h=ht-w/2, d1=c_id-w, d2=0); //cap inside
   zmove(bilge_od/2 + INCH/2 - 3) yrot(90) cylinder(h=c_id/2 + 10,d=bilge_od); //bilge inside
}}
} //end difference


// bilge hose to end of 1" T
//  cylinder to slightly different cylinder




/////////////////////////////////////////////////////////////
//blast gate tool side  
//// the flange on this needs to be 
//difference(){
    //union(){
//        cylinder(h=height,d1=tside_od+1,d2=tside_od-1); //outside
        //difference(){
        //cylinder(h=flange_t,d=tside_od+flange*2); //flange
        //zmove(flange_t) rounding_cylinder_mask(d=tside_od+flange*2, rounding=w, $fa=2, $fs=2);
        //}
        //zmove(flange_t) yrot(180) rounding_hole_mask(d=tside_od, rounding=w, $fa=2, $fs=2);
    //}    
//   cylinder(h=height,d=tside_od-w); //inside
//   zmove(height) rounding_cylinder_mask(d=tside_od, rounding=w, $fa=2, $fs=2);
    
   //screw holes
   //zrot_copies(d=tside_od+w*2.9,n=4) cylinder(h=flange_t, d=screw_d);
   //zmove(flange_t-2) zrot_copies(d=tside_od+w*2.9,n=4) cylinder(h=2, d1=screw_d, d2=6);
   //zmove(flange_t) zrot_copies(d=tside_od+w*2.9,n=4) cylinder(h=2, d=6);
//}


//$fn=64;
//back_half()
//   diff("remove")
//     cuboid(50){
//       //attach(TOP) modular_hose(1/2, "ball");
//       up(0.01)position(TOP+RIGHT)tag("remove")
//         rot(180)
//         xrot(-90)
//         rotate_extrude(angle=135)
//         right(25)
//         circle(r=modular_hose_radius(1/2));
//     }


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
