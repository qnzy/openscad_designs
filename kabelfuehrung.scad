gp_breite = 19;
gp_hoehe = 2.4;
stift_radius = 3.8;
stift_rand = gp_breite/2+0.5;//10;
stift_hoehe = 18;
rand_hoehe = 4.7;
schlitz_breite = 1.6;
schlitz_tiefe = 10;
unendlich = 1000;
loch_breite = 7;
loch_laenge = 10;
stuetze_hoehe = stift_hoehe;
stuetze_laenge = 2*stift_radius+6;
stuetze_breite = 12;
stuetze_d1 = 2.5;
gp_laenge = stuetze_laenge+40;

// grundplatte
unendlich = 1000;
gp_laenge = 10.0;
gp_breite = 6.0;
gp_hoehe = 1.0;
rloch=3;


difference() {
hull() {
cube(size=[gp_laenge,gp_breite,gp_hoehe], center=true);
translate([-gp_laenge/2,0,gp_breite/2])rotate([0,90,0]) cylinder(h=gp_laenge, r1=gp_breite/2, r2=gp_breite/2);
}
union() {
translate([-unendlich/2,0,gp_breite/2])rotate([0,90,0]) cylinder(h=unendlich, r1=rloch, r2=rlock);
translate([gp_laenge/4+1,gp_breite/2,gp_hoehe*2])cube(size=[gp_laenge/2,gp_breite,gp_hoehe*2], center=true);
translate([-(gp_laenge/4+1),-gp_breite/2,gp_hoehe*2])cube(size=[gp_laenge/2,gp_breite,gp_hoehe*2], center=true);
translate([0,0,6])cube(size=[3,10,10], center=true);
}
}

