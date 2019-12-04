$fn = 64;

inner_diameter = 8;
outer_diameter = 12;
brim_diameter = 20;

inner_height = 12;
outer_height = 15;
inner_brim_height = 3;
outer_brim_height = 1;

difference() {
    union() {
        cylinder(h=outer_height, d1=outer_diameter, d2=0);
        cylinder(h=outer_brim_height, d=brim_diameter);
        translate([0,0,outer_brim_height]) {
            cylinder(h=inner_brim_height, d1=brim_diameter, d2=outer_diameter-inner_brim_height*4);
        }
    }
    cylinder(h=inner_height, d1=inner_diameter, d2=0);
}
