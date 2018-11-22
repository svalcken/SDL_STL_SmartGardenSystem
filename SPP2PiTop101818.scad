
//
// Main Plante for PiSmartPlant
// 011217-01
//
// main base 190 x 86
MaxX = 130;
MaxY = 90;


module LEDBox()
{
    
   // grove holder Box
   
    
    difference()
    {
        cube([12.5,16.3,15]); 
        
        translate([3,-5,0])
        cube([6.5,22.6,20]); 
        
    }
    
    
difference()
    {
    union()
        {
        translate([11,0.7,2])
        #cube([5,15,5]);
    
        translate([-3,0.7,2])
        cube([5,15,5]);
       }

        translate([16,0.6,3.2])
        rotate([0,-45,0])
        #cube([5,16,6]);
    

        translate([-9,0.6,5])
        rotate([0,45,0])
        cube([5,17,8.0]);
}
    
}
module fitbox(x, y)

{
    
    difference()
    {
        cube([x+2,y+2,7]);
        
        translate([1,1,3])
        cube([x,y,6]);
        
    }
    
    
}


module PlaceFitBox(x,y,xloc,yloc)
{
    translate([xloc,yloc])
fitbox(x, y);
    
}

$fn =400;

module PlaceGroveHole(xloc, yloc)
{
    translate([xloc,yloc,-20])
    cube([12.25,6.5,50]);

}

module VPlaceGroveHole(xloc, yloc)
{
    translate([xloc,yloc,-20])
    cube([7.5,12.25,50]);

}

difference()
{


    
union()
{
    // start of base
cube ([MaxX,MaxY,3]);

translate([-25,0,0])
union()
    {
// Place block

// OLED
translate([25,0,0])
PlaceFitBox(29,34,10,MaxY-42);

// TH
PlaceFitBox(29.5,28.7,78,MaxY-42+6.5);
   

// Sun
    translate([-20,0,0])
PlaceFitBox(28.5-.25,28+1-.25,78+40+10+5,MaxY-42+10);




// I2C Mux  
translate([-43,0,0])
PlaceFitBox(44,25.5 ,10+34+24+10,10);


// Air Quality Sensor
translate([-20,0,0])
 PlaceFitBox(24.25-0.25,42-0.25,10+34+24+10+44+10,10);
 
 // LED Strip
 
 translate([87,10,0])
 LEDBox();
 
 // leg boxes
 
 
 
}

// leg boxes
translate([1,1,0])
cube([8,8,8]);


translate([MaxX-9,1,0])
cube([8,8,8]);

translate([1,MaxY-9,0])
cube([8,8,8]);

translate([MaxX-9,MaxY-9,0])
cube([8,8,8]);

}
translate([-25,0,0])
union()
{
// Grove Holes

// OLED
translate([25,0,0])
PlaceGroveHole(10+29/2-4.5, MaxY-10-5);
// TH

VPlaceGroveHole(68, MaxY-42+16);
// Sun
translate([-18,-4,0])
PlaceGroveHole(78+40+10+12+0.5, MaxY-10);


// I2C Mux (5)
translate([-43,0,0])

union()
{
 translate([-8,0,0])   
PlaceGroveHole(10+12+10+24+30-4.5+1, 10+20-4.5+6+6+2);
    
translate([11,0,0])
PlaceGroveHole(10+12+10+24+30-4.5+1, 10+20-4.5+6+6+2);
translate([30,0,0])
PlaceGroveHole(10+12+10+24+30-4.5+1, 10+20-4.5+6+6+2);
PlaceGroveHole(10+12+10+24+55-4.5+1, 4-1);
PlaceGroveHole(10+12+10+24+30-4.5+1, 4-1);
}

// Pixel Strip

translate([0,0,0])
#PlaceGroveHole(87,MaxY-67+10);


// Air Q
translate([-20,0,0])
PlaceGroveHole(10+12+10+24+72+16-5.5, 4-1);


}
// leg holes


HoleSize = 6.125;

translate([2,2,-1])
#cube([HoleSize,HoleSize,20]);

translate([MaxX-8,2,-1])
cube([HoleSize,HoleSize,20]);

translate([2,MaxY-8,-1])
cube([HoleSize,HoleSize,20]);

translate([MaxX-8,MaxY-8,-1])
cube([HoleSize,HoleSize,20]);

/*
// for test cubing

// block Sunlight

#translate([-115,40,-10])
cube([200,60,100]);

#translate([120,40,-10])
cube([200,60,100]);
// block 2

#translate([0,-10,-10])
cube([200,65,100]);

*/

// block LED Strip
/*
#translate([-150,-10,-10])
cube([200,160,100]);

#translate([90,-10,-10])
cube([200,160,100]);
// block 2

#translate([0,50,-10])
cube([200,65,100]);
*/
}
