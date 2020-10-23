thetext = "1";
base_height = 0.9;
radius = 7;
text_height = 1.4;
text_size = 6;
unendlich = 1000;

difference() {
    union() {
        linear_extrude(text_height) text(text=thetext, 
                                         font="Liberation Sans", 
                                         size=text_size, 
                                         halign="center", 
                                         valign="center");
        cylinder(r1=radius,r2=radius,h=base_height, $fn=40);
        difference() {
            translate([0,0,0.5]) cylinder(r1=radius,r2=radius,h=base_height, $fn=40);
            translate([0,0,-unendlich/2]) cylinder(r1=radius-1,r2=radius-1,h=unendlich, $fn=40);
        }
    }
}
