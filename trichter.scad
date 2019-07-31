union() {
    difference() {
        cylinder(r=10,h=10);
        translate([0,0,-1]){
            cylinder(r=8,h=12);
        }
    }
    translate([0,0,9.9]){
    difference() {
        cylinder(r1=10,r2=20,h=10);
        translate([0,0,-1]){
            cylinder(r1=7,r2=20,h=12);
        }
    }
    }
}

