gp_laenge = 50;
gp_breite = 19;
gp_hoehe = 2.4;
stift_radius = 3.8;
stift_rand = 4.6;
stift_hoehe = 17;
rand_hoehe = 1;
schlitz_breite = 1.6;
schlitz_tiefe = 10;
unendlich = 1000;
loch_breite = 7;
loch_laenge = 10;
auflage_hoehe = 2;
auflage = 2*stift_radius+2.65;


union() {

// Grundplatte
    difference() {
        union() {
            // grundplatte rechteckig
            translate([0,0,gp_hoehe/2]) cube([gp_breite,gp_laenge-gp_breite/2,gp_hoehe], true);
            // grundplatte rund
            translate([ 00, -(gp_laenge-gp_breite/2)/2, 00]) cylinder(h=gp_hoehe, r1=gp_breite/2, r2=gp_breite/2);
        }
        // loch für noppe
        translate([0,-gp_laenge/2+3,0]) cube([loch_laenge, loch_breite, unendlich],true);
    }

// stift
    translate([ 0, (gp_laenge-gp_breite/2)/2-auflage, 0])
    difference (){
        union() {
            // stift
            cylinder(h=stift_hoehe, r1=stift_radius, r2=stift_radius);
            // rand
            translate([ 0, 0, stift_hoehe-rand_hoehe]) cylinder(h=rand_hoehe, r1=stift_rand, r2=stift_rand);
            // rand uebergang
            translate([ 0, 0, stift_hoehe-rand_hoehe-0.5]) cylinder(h=0.5, r1=stift_radius, r2=stift_rand);
            // auflage
            translate([ 0, auflage/2, (gp_hoehe+auflage_hoehe)/2]) cube([2*stift_radius, auflage, gp_hoehe+auflage_hoehe], true);
        }
        // schlitz
        translate([0,0,stift_hoehe]) cube([schlitz_breite, unendlich, 2*schlitz_tiefe], true);
        // begrenzung stift
        translate([0,-stift_radius,stift_hoehe]) cube([unendlich, 2, 2*schlitz_tiefe], true);
        // begrenzung stift
        translate([0,+stift_radius,stift_hoehe]) cube([unendlich, 2, 2*schlitz_tiefe], true);
    }

        //noppe
        translate([0, -gp_laenge/2+2, gp_hoehe]) rotate([15, 0, 0]) cube([loch_laenge*0.8, 6, 1.5],true);

}
