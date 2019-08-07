gp_laenge = 60;
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
stuetze_laenge = 2*stift_radius+2.65+10;
stuetze_breite = 12;
stuetze_d1 = 2.5;


union() {

// Grundplatte
    difference() {
        union() {
            // grundplatte rechteckig
            translate([0,0,gp_hoehe/2]) cube([gp_breite,gp_laenge-gp_breite/2,gp_hoehe], true);
            // grundplatte rund
            translate([ 00, -(gp_laenge-gp_breite/2)/2, 00]) cylinder(h=gp_hoehe, r1=gp_breite/2, r2=gp_breite/2); }
        // loch für noppe
        translate([0,-gp_laenge/2+3,0]) cube([loch_laenge, loch_breite, unendlich],true);
    }

// stift
    translate([ 0, (gp_laenge-gp_breite/2)/2-stuetze_laenge, 0])
    difference (){
        union() {
            // stift
            cylinder(h=stift_hoehe, r1=stift_radius, r2=stift_radius);
            // stuetze
            translate([ 0, (stuetze_laenge+stuetze_d1)/2, (stuetze_hoehe)/2]) 
                cube([stuetze_breite, stuetze_laenge-stuetze_d1, stuetze_hoehe], true);
            translate([ 0, (stuetze_laenge)/2, (stuetze_hoehe)/2]) cube([2*stift_radius, stuetze_laenge, stuetze_hoehe], true);
            // rand
            translate([ 0, 0, stift_hoehe-rand_hoehe]) cylinder(h=rand_hoehe, r1=stift_rand, r2=stift_rand);
            translate([ 0, stuetze_laenge/2, stift_hoehe-rand_hoehe+rand_hoehe/2]) cube([2*stift_rand, stuetze_laenge, rand_hoehe], true);
        }
    }

        //noppe
        translate([0, -gp_laenge/2+2, gp_hoehe+0.3]) rotate([20, 0, 0]) cube([loch_laenge*0.8, 6, 1.5],true);

}
