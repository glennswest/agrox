
$fn=200;


module vase_ring_body()
{
    translate([0,0,5]) cylinder(r=165/2,h=5);
    cylinder(r=148.5/2,h=5);
}

module vase_ring_cuts()
{
        translate([0,0,-1]) cylinder(r=106/2,h=15);
        translate([0,-63,-5]) cylinder(r=4,h=20);
}

module vase_ring()
{
    difference(){
        vase_ring_body();
        vase_ring_cuts();
    }
}

translate([0,0,10]) rotate([0,180,0]) vase_ring();