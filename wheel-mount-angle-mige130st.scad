$fn=100;

angle = 10;

union() {
    
    rotate([0, angle, 0]) {
        front_plate();
        bottom_plate();
        translate([0, -66, 0]) side_plate();
        translate([0, 66 + 7, 0]) side_plate();
    }
    translate([-5, 0, -27]) hole_plate();
    translate([62, 73, -80]) wedged_plate();
}

module wedged_plate() {
    rotate([90, 0, 0]) {
        linear_extrude(height = 146) {
            difference() {
                rotate([0, 0, -angle]) square([150, 132], center = true);
                translate([0, -20, 0]) square([180, 132], center = true);
            }
        }
    }
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

module hole_plate() {
    translate([75, 0, -7])
    linear_extrude(height = 7) {
        difference() {
            square([152, 180], center = true);
            translate([-65, 81.5, 0]) circle(5, center=true);
            translate([-65, -81.5, 0]) circle(5, center=true);
            translate([-45, 81.5, 0]) circle(5, center=true);
            translate([-45, -81.5, 0]) circle(5, center=true);
            translate([25, 81.5, 0]) circle(5, center=true);
            translate([25, -81.5, 0]) circle(5, center=true);
            translate([65, 81.5, 0]) circle(5, center=true);
            translate([65, -81.5, 0]) circle(5, center=true);
        }
    }
}

module bottom_plate() {
    translate([75, 0, -7])
    linear_extrude(height = 7) {
        difference() {
            square([150, 146], center = true);
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