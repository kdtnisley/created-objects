phone_t = 16;
phone_l = 35;
case_t = 6;
case_l = 70;
w=2;
width = 10;


difference(){
union(){
   cube([width+w,phone_t+w*2,phone_l+w*2]);
   translate([0,0,phone_l-case_t])
   cube([width+w,case_l+w,case_t+w*2]);
}
translate([w,w,w])
union(){
   cube([width,phone_t,phone_l+w]);
   translate([0,0,phone_l-case_t])
   cube([width,case_l,case_t]);
}
}