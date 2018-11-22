//
//
// SPP2 Ultrasonic Water Level Measurement bracket
//
// June 26, 2018
//

$fn =100;


difference()
{
    union()
    {
    // top

        cube([30, 140, 3]);


        // wings

        translate([7.5,0,0])
        cube([15, 3, 15]);

        translate([7.5,137,0])
        cube([15, 3, 15]);
    }

    // Holes for Ultrasonic

    translate([15,50.9+8, -5])
    #cylinder(20,r=8.25);
    
    translate([15,140- 50.9-8, -5])
    #cylinder(20,r=8.25);
}