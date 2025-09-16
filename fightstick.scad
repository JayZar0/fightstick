module prism(l, w, h) {
    polyhedron(// pt      0        1        2        3        4        5
               points=[[0,0,0], [0,w,h], [l,w,h], [l,0,0], [0,w,0], [l,w,0]],
               // top sloping face (A)
               faces=[[0,1,2,3],
               // vertical rectangular face (B)
               [2,1,4,5],
               // bottom face (C)
               [0,3,5,4],
               // rear triangular face (D)
               [0,4,1],
               // front triangular face (E)
               [3,2,5]]
      );
}

// top panel
difference() {
    translate([0, 0, 40])
        cube([200, 350, 10]);
    translate([120, 80, 20])
        cylinder(h=40, r=12.5);
    translate([90, 180, 20])
        cylinder(h=40, r=15);
    translate([70, 220, 20])
        cylinder(h=40, r=15);
    translate([70, 260, 20])
        cylinder(h=40, r=15);
    translate([70, 300, 20])
        cylinder(h=40, r=15);
    translate([130, 180, 20])
        cylinder(h=40, r=15);
    translate([110, 220, 20])
        cylinder(h=40, r=15);
    translate([110, 260, 20])
        cylinder(h=40, r=15);
    translate([110, 300, 20])
        cylinder(h=40, r=15);
    translate([170, 180, 20])
        cylinder(h=40, r=15);
    translate([150, 220, 20])
        cylinder(h=40, r=15);
    translate([30, 290, 20])
        cylinder(h=40, r=13);
    translate([30, 320, 20])
        cylinder(h=40, r=13);
    translate([10, 170, 20])
        cube([40, 60, 40]);
}

// base panel
difference() {
    cube([200, 350, 40]);
    translate([10, 10, 10])
        cube([210, 330, 45]);
    translate([-10, 170, 20])
        cube([40, 20, 20]);
}

// edge
rotate(90)
    translate([0, -240, 30])
        prism(350, 40, 20);
rotate(90)
    translate([0, -240, 30])
        prism(350, 40, -30);