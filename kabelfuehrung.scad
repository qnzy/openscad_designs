unendlich = 1000;
laenge = 12.0;
breite = 6.0;
hoehe = 0.6;
rloch=2.5;
schlitzbreite = 3;

$fn=50;

difference() {
hull() {
cube(size=[laenge,breite,hoehe], center=true);
translate([-laenge/2,0,breite/2])rotate([0,90,0]) cylinder(h=laenge, r1=breite/2, r2=breite/2);
}
union() {
translate([-unendlich/2,0,breite/2])rotate([0,90,0]) cylinder(h=unendlich, r1=rloch, r2=rloch);
translate([laenge/4+1,breite/2,hoehe*2])cube(size=[laenge/2,breite,hoehe*2], center=true);
translate([-(laenge/4+1),-breite/2,hoehe*2])cube(size=[laenge/2,breite,hoehe*2], center=true);
translate([0,0,unendlich/2+hoehe])cube(size=[schlitzbreite,unendlich,unendlich], center=true);
}
}

