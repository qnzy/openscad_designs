difference() {
   cube([44,44,80], center=false);
   translate(v=[22,22,35]) {
       rotate([0,0,45]) {
           cylinder(h=46, r1=22.5, r2=25, $fn=4);
       }
   }
}

