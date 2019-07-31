gp_laenge = 42;
gp_breite = 19;
stift_radius = 4;
stift_rand = 5;
stift_hoehe = 17;
rand_hoehe = 1;
schlitz_breite = 2.5;
schlitz_tiefe = 6;
unendlich = 1000;


union() {
// Grundplatte
    translate([0,0,1]) cube([gp_breite,gp_laenge-gp_breite/2,2], true);
    translate([ 00, -(gp_laenge-gp_breite/2)/2, 00]) cylinder(h=2, r1=gp_breite/2, r2=gp_breite/2);


// stift
    translate([ 00, 6, 00])
    difference (){
        union() {
            cylinder(h=stift_hoehe, r1=stift_radius, r2=stift_radius);
            translate([ 00, 00, stift_hoehe-rand_hoehe]) cylinder(h=rand_hoehe, r1=stift_rand, r2=stift_rand);
        }
        translate([0,00,stift_hoehe]) cube([schlitz_breite, unendlich, 2*schlitz_tiefe], true);
    }


}
