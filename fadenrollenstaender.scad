difference() {
union() {
    translate([0,0,1]) cube([95,95,2], true);
    translate([-35,-35,0]) cylinder(h=30, r1=2.5, r2=2.5);
    translate([ 00,-35,0]) cylinder(h=30, r1=2.5, r2=2.5);
    translate([+35,-35,0]) cylinder(h=30, r1=2.5, r2=2.5);
    translate([-35, 00,0]) cylinder(h=30, r1=2.5, r2=2.5);
    translate([-00, 00,0]) cylinder(h=30, r1=2.5, r2=2.5);
    translate([+35, 00,0]) cylinder(h=30, r1=2.5, r2=2.5);
    translate([-35,+35,0]) cylinder(h=30, r1=2.5, r2=2.5);
    translate([ 00,+35,0]) cylinder(h=30, r1=2.5, r2=2.5);
    translate([+35,+35,0]) cylinder(h=30, r1=2.5, r2=2.5);
}
union() {
    translate([0,-30,0.19]) cube([100.5,0.5], true);
    translate([0,0,0.19]) cube([100.5,0.5], true);
    translate([0,30,0.19]) cube([100.5,0.5], true);
    translate([-30,0,0.19]) cube([4,100,0.5], true);
    translate([0,0,0.19]) cube([4,100,0.5], true);
    translate([30,0,0.19]) cube([4,100,0.5], true);
}
}
