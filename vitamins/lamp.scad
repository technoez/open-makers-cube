
include <NopSCADlib/core.scad>   
include <BOSL/constants.scad>
include <BOSL/transforms.scad>
use <BOSL/wiring.scad>
use <BOSL/shapes.scad>


//================  render ================= 
//================  modules =================
module lamp_assy(){
    vitamin(" : Magnifier Lamp Assembly");
    lamp_head_assy();
    lamp_flex();
    lamp_base();
}

module lamp_head_assy(){
  ymove(46)
  xrot(30)
  zmove(-85)
  xrot(-90)
   union(){
    lamp_ring();
    lamp_glass();
    lamp_neck();
   } 
}

module lamp_base(){
 color("white", 1)
 ymove(-60)
 zmove(-110)
 union(){
  cylinder(d=28, h=37);
  zmove(-15)
  cylinder(d=23, h=15);
 } 

}

module lamp_neck(){
    color("white")
    ymove(-65)
    xrot(90)
    cylinder(d=22, h=33);
}

module lamp_flex(){
    color("white") wiring([
        //[0,-30,30], [0,-30,50], [0,0,50], [0,0,10]
        //[0,-60,-120], [0,-60,70], [0,0,70], [0,0,10]
        [0,-60,-80], [0,-60,70], [0,0,70], [0,40,10]
        
        ], 
       fillet=50, wires=1, wirediam=12);
}


module lamp_ring(){
    color("white", 1)
    rotate_extrude(convexity = 10)
    translate([125/2, 0, 0])
    circle(r = 15/2, $fn = 100);
}

module lamp_glass(){
   color("white", .2)
   circle(r = 125/2, $fn = 100);
}

