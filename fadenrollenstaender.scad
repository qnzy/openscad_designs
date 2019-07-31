difference() {
union() {
    translate([0,0,1]) cube([85,85,2], true);
//    translate([0,0,1]) cube([83,83,2], true);
    translate([-30,-30,0]) cylinder(h=30, r1=2.5, r2=2.5);
    translate([ 00,-30,0]) cylinder(h=30, r1=2.5, r2=2.5);
    translate([+30,-30,0]) cylinder(h=30, r1=2.5, r2=2.5);
    translate([-30, 00,0]) cylinder(h=30, r1=2.5, r2=2.5);
    translate([-00, 00,0]) cylinder(h=30, r1=2.5, r2=2.5);
    translate([+30, 00,0]) cylinder(h=30, r1=2.5, r2=2.5);
    translate([-30,+30,0]) cylinder(h=30, r1=2.5, r2=2.5);
    translate([ 00,+30,0]) cylinder(h=30, r1=2.5, r2=2.5);
    translate([+30,+30,0]) cylinder(h=30, r1=2.5, r2=2.5);
}
union() {
    translate([0,-30,0.19]) cube([100,4,0.4], true);
    translate([0,0,0.19]) cube([100,4,0.4], true);
    translate([0,30,0.19]) cube([100,4,0.4], true);
    translate([-30,0,0.19]) cube([4,100,0.4], true);
    translate([0,0,0.19]) cube([4,100,0.4], true);
    translate([30,0,0.19]) cube([4,100,0.4], true);
}
}
