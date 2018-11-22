
//
// Main Plante for SPP2 Ext
// 110618-01
//
// main base 190 x 86
MaxX = 118;
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
        union()
        {
        translate([-2,-2,0])
        cube([x+6,y+6,5]);
            
        cube([x+2,y+2,10]);
        }
        
        translate([1,1,3])
        cube([x,y,9]);
        
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
        XFitBox = 97.6;
        YFitBox = 64;

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

// Big Plate Extender Board
// 

translate([25,-30,0])
PlaceFitBox(XFitBox,YFitBox,10,MaxY-42);

    }

 // leg boxes
translate([0,0,0])
cube([10,10,8]);

translate([MaxX-5.8-3-1.01+0.45,MaxY-5.8-3-1.2,0])
#cube([9.5,10,8]);

translate([0,MaxY-5.8-3-1.01,0])
cube([10,10,8]);
        
translate([MaxX-5.8-3-1.01,0,0])
cube([10,10,8]);
    
    // supports
   translate([1-1,1-1,0])
cube([10,10,5]);

translate([MaxX-5.8-3-1+0.5,MaxY-5.8-3-1.2,0])
cube([9.4,10,5]);

translate([1-1,MaxY-5.8-3-1,0])
cube([10,10,5]);
        
translate([MaxX-5.8-3-1,1-1,0])
cube([10,10,5]); 
    
}




HoleSize = 3.0;
/*
translate([2,2,-1])
cube([HoleSize,HoleSize,20]);

translate([MaxX-8,2,-1])
cube([HoleSize,HoleSize,20]);

translate([2,MaxY-8,-1])
cube([HoleSize,HoleSize,20]);

translate([MaxX-8,MaxY-8,-1])
cube([HoleSize,HoleSize,20]);

*/

// Screw and Post Holes
// 2.5mm from edge
XEdgeoffset = 10;
YEdgeoffset = 9;
/*
translate([2.5+XEdgeoffset,1.5+YEdgeoffset,-1])
cylinder(20,d=2.5,center);

translate([XEdgeoffset+XFitBox-1,YFitBox+7,-1])
cylinder(20,d=2.5,center);

translate([XEdgeoffset+XFitBox-1,11,-1])
cylinder(20,d=2.5,center);

translate([XEdgeoffset+3,YEdgeoffset+YFitBox-2,-1])
cylinder(20,d=2.5,center);
*/

// Remove side for USB Plugs
translate([XEdgeoffset+11, YEdgeoffset-18,-5])
cube([XFitBox-18-4, 35, 20]);

// Remove slot for USB Power Plug

translate([0, YFitBox-2-1,-5])
cube([16, 14, 20]);

holeSize = 6.5;
// stand holes
translate([2,2,-5])
#cube([holeSize,holeSize,50]);

// stand holes
translate([MaxX-5.8-2,MaxY-5.8-2,-5])
#cube([holeSize,holeSize,50]);

// stand holes
translate([2,MaxY-5.8-2,-5])
#cube([holeSize,holeSize,50]);

// stand holes
translate([MaxX-5.8-2,2,-5])
#cube([holeSize,holeSize,50]);
}
