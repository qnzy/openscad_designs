// unendlich
unendlich = 1000;

// Grundplatte
gp_d1 = 20; // laenge
gp_d2 = 8;  // breite
gp_d3 = 2.5;  // hoehe

// Finger
f_a = 10; // winkel
f_d1 = 2; // dicke
f_d2 = 4; // breite
f_d3 = 7; // abstand
f_d4 = 5; // hoehe

// Loch
l_r1 = 2.9; // radius 1
l_r2 = 2.8; // radius 2

intersection() {
    difference () {
        union() {
            hull () {
                translate([(gp_d1-gp_d2)/2, 0, 0]) 
                    cylinder(h = gp_d3, r1 = gp_d2/2, r2 = gp_d2/2, $fn=48);
                translate([-(gp_d1-gp_d2)/2, 0, 0]) 
                    cylinder(h = gp_d3, r1 = gp_d2/2, r2 = gp_d2/2, $fn=48);
            }
            translate([f_d3, 0, 0]) 
                rotate([0, -f_a, 0]) 
                    cube([f_d1, f_d2, unendlich], true);
            translate([-f_d3, 0, 0]) 
                rotate([0, f_a, 0]) 
                    cube([f_d1, f_d2, unendlich], true);
        }
        translate([0,0,-unendlich/2]) 
            cylinder(h=unendlich, r1=l_r1, r2=l_r2, $fn=48);
    }
    translate([0,0,f_d4/2]) 
        cube([unendlich, unendlich, f_d4],true);
}
