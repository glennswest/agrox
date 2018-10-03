use <barb.scad>;

$fn=128;

module rainring_body()
{
    cylinder(r=44,h=2);
    difference(){
        translate([0,0,2]) cylinder(r=44,h=4);
        translate([0,0,1.99]) cylinder(r=42,h=4.1);
    }
    translate([0,0,2]) cylinder(r=20,h=2);
    for (i = [0 : 12 : 360]) {
         rotate([0,0,i+5]) translate([0,22, 2])  cube([1,20.5,5]);
    }       
     for (i = [0 : 12 : 360]) {
         rotate([0,0,i+5]) translate([0,12, 2])  cube([1,15,5]);
    }    
       for (i = [0 : 24 : 360]) {
         rotate([0,0,i+5]) translate([0,5, 2])  cube([1,7,5]);
    }  
   translate([0,0,6]) cylinder(r=44,h=2);
   translate([0,0,-10]) cylinder(r=2.5,h=10);
   translate([0,0,-7]) sphere(r=2.7); 
   translate([0,0,-4]) sphere(r=2.7);  
}

module rainring_cuts()
{   
    DGrees = 360 / 30;
     for (i=[1:30]) 
    { 
       translate([0,0,3.5]) rotate([90,0,DGrees*i]) translate([0,0,30])  cylinder(h=15,r=2);
    }  
    for (i =  [0 : 0.2 : 6]) {
       // %rotate([0,0,90]) translate([sin(360*i/6)*40, cos(360*i/6)*40, -1 ]) rotate([360*i/6,0,0])  cylinder(h = 4, r=1);
        //translate([sin(360*i/6)*35, cos(360*i/6)*35, -1 ]) cylinder(h = 4, r=1);
       //translate([sin(360*i/6)*30, cos(360*i/6)*30, -1 ]) cylinder(h = 4, r=1);
        //translate([sin(360*i/6)*25, cos(360*i/6)*25, -1 ]) cylinder(h = 4, r=1); 
        }
    translate([0,0,-10.5]) cylinder(r=2,h=18);    
}


module rainring()
{
    
    difference(){
        rainring_body();
        rainring_cuts();
    }
    
}



rainring();