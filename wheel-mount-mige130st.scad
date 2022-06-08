$fn=50;

union() { 
    front_plate();
    bottom_plate();
    translate([0, -66, 0]) side_plate();
    translate([0, 66 + 7, 0]) side_plate();
}

module front_plate() {
    translate([0, 0, 65.25])
    rotate([0, 90, 0])
    linear_extrude(height = 7) {
        difference() {
            square([130.5, 132], center = true);
            circle(56, center = true);
            translate([51, 51, 0]) { circle(5, center=true); }
            translate([51, -51, 0]) { circle(5, center=true); }
            translate([-51, 51, 0]) { circle(5, center=true); }
            translate([-51, -51, 0]) { circle(5, center=true); }
        }
    }
}

module bottom_plate() {
    translate([65, 0, -7])
    linear_extrude(height = 7) {
        difference() {
            square([150, 185], center = true);
            translate([-65, 82.5, 0]) circle(5, center=true);
            translate([-65, -82.5, 0]) circle(5, center=true);
            translate([0, 82.5, 0]) circle(5, center=true);
            translate([0, -82.5, 0]) circle(5, center=true);
            translate([65, 82.5, 0]) circle(5, center=true);
            translate([65, -82.5, 0]) circle(5, center=true);
        }
    }
}

module side_plate() {
    translate([50, 0, 50])
    rotate([90, 0, 0])
    linear_extrude(height = 7) {
        difference() {
            square([100, 100], center = true);
            translate([32.5, 32.5, 0]) rotate([0, 0, 45]) square([50, 120], center = true);
        }
    }
}