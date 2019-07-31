intersection() {
    difference () {
        union() {
            translate([0,0,1]) cube([10,8,2], true);
            translate([5,0,0]) cylinder(h=2, r1=4, r2=4, $fn=48);
            translate([-5,0,0]) cylinder(h=2, r1=4, r2=4, $fn=48);
            translate([7,0,2]) rotate([0,-10,0]) cube([2,4,7],true);
            translate([-7,0,2]) rotate([0,10,0]) cube([2,4,7],true);
        }
        translate([0,0,-0.5]) cylinder(h=3, r1=2.9, r2=2.8, $fn=48);
    }
    translate([0,0,2.5]) cube([28,8,5],true);
}
