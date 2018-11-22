//
//
// Stands for the SmartPlantPi
// 010517-01
//
//

module stand()
{
difference()
{
    union()
    {
cube([5.6,50,5.6]);
$fn=300;

difference()
{
difference()
{
    union()
    {
translate([-6,0,0])
cube([18,2,8]);
        
translate([-1.5,0,0])
cube([8,2,14]);
    }
    
    translate([-3,3,4])
    #rotate([90,0,0])
    cylinder(10,1.5,1.5);
    
    translate([9,3,4])
    #rotate([90,0,0])
    cylinder(10,1.5,1.5);
    
    translate([2.5,3,10.5])
    #rotate([90,0,0])
    cylinder(10,1.5,1.5);
    
                #cube([5,15,5]);
 
}






}

}
  /* translate([0,90,0])
   difference()
    {
               #cube([5,15,5]);
        
        translate([0,0,0])   
        #cube([3.5,15,3.5]);
        
 

    } 
*/
}

}

stand();

translate([79,0,0])
stand();

// crossbars
/*
translate([79,10,0])
rotate([0,0,45])
cube([5,109,5]);
*/

// crossbars

translate([3,40,0])
rotate([0,0,-90])
cube([5,78,5]);

//cube([109,5,5]);

