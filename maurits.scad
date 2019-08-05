base_height = 2;
base_width = 6;
base_length = 30;
text_height = 3;
text_size = 6;
text_shift = 2;
unendlich = 1000;
hole_radius = 1.5;

difference() {
    union() {
        translate([text_shift,0,0])
        linear_extrude(text_height) text(text="Maurits", 
                                         font="Liberation Sans", 
                                         size=text_size, 
                                         halign="center", 
                                         valign="center");
        translate([0,0,base_height/2]) cube([base_length,base_width,base_height],true);
        translate([-base_length/2,0,0]) cylinder(r1=base_width/2,r2=base_width/2,h=base_height, $fn=20);
        translate([base_length/2,0,0]) cylinder(r1=base_width/2,r2=base_width/2,h=base_height, $fn=20);
    }
    translate([-base_length/2,0,-unendlich/2]) cylinder(h=unendlich, r1=hole_radius, r2=hole_radius, $fn=20);
}
