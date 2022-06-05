tubesize=40;
wallwidth=3;
tubewidth=20;
clipwidth=10;
holesize=6.1;

union() {
    translate([0, 0, -wallwidth]) { wallside(); }
    translate([0, 0, tubesize]) { wallside(); }
    translate([tubesize, 0, tubesize]) { rotate([0, 90, 0]) wallside(); }
    translate([0, 0, tubesize]) { rotate([0, 90, 0]) wallsidelessthanhalf(); }
    translate([0, 0, (tubesize / 2) - (wallwidth / 2)]) { rotate([0, 90, 0]) wallsidelessthanhalf(); }
    translate([-clipwidth, 0, (tubesize / 2) - (wallwidth * 1.5 )]) { clip(); }
        translate([-clipwidth, 0, (tubesize / 2) + (wallwidth * 0.5)]) { clip(); }
}

module clip() {
    difference(){
        cube([clipwidth, tubewidth, wallwidth]);
        translate([clipwidth / 2, tubewidth / 2, 0]) { cylinder(wallwidth, holesize / 2, holesize / 2); }
    }
}

module wallside() {
    cube([tubesize + wallwidth, tubewidth, wallwidth]);
}

module wallsidelessthanhalf() {
    cube([(tubesize / 2) - (wallwidth / 2), tubewidth, wallwidth]);
}