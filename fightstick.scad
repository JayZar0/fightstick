
difference() {
    translate([0, 0, 50])
        cube([200, 350, 10]);
    translate([120, 80, 20])
        cylinder(h=40, r=12.5);
    translate([100, 180, 20])
        cylinder(h=40, r=15);
    translate([80, 220, 20])
        cylinder(h=40, r=15);
    translate([80, 260, 20])
        cylinder(h=40, r=15);
    translate([80, 300, 20])
        cylinder(h=40, r=15);
    translate([140, 180, 20])
        cylinder(h=40, r=15);
    translate([120, 220, 20])
        cylinder(h=40, r=15);
    translate([120, 260, 20])
        cylinder(h=40, r=15);
    translate([120, 300, 20])
        cylinder(h=40, r=15);

}
difference() {
    cube([200, 350, 50]);
    translate([20, 10, 10])
        cube([210, 330, 45]);
}

right_triangle();