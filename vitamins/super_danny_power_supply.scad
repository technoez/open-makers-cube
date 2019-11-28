// libraries
include <BOSL/transforms.scad>
use <BOSL/wiring.scad>
include <NopSCADlib/core.scad> 
include <NopSCADlib/vitamins/screws.scad>
include <../vitamins/dual_lock.scad>

sd_length = 200;
sd_height = inch(1.25);

// ============= render ===============


super_danny_power_supply();



// ============= modules ===============
module super_danny_power_supply(){
    vitamin(" :  Super Danny 6 outlet Power Strip");

    difference(){

        union(){
            color("gray", 1)
            xrot(90)
            yrot(90) 
            hull() xspread(inch(3.25)) cylinder(d=sd_height, h=sd_length, center = true, $fn=30);
        }

        zmove(-10)
        xmove(15)
        super_danny_plug_assy();

        xmove(-90)
        zmove(inch(1)/2)
        supper_danny_usb_port();

    }  

   
    ymove(-30)
    xmove(95) 
    scale(.8)
    supper_danny_toggle_switch(); 

 
    super_danny_power_cable();

}

module super_danny_velcro(length){
   dual_lock(length);
}

module super_danny_power_cable(){
  color("black")
  xmove(100)      
  yrot(90)      
  cylinder(d=8, h=50);
}

module super_danny_plug(){

    ymove(-2.5)
    union(){
        xspread(8) cube([2, 8, 5], center=true);
        
        ymove(8)
        cube([3,3,5], center=true);
    }

    difference(){
    cube([16,16,5], center=true);
    cube([16-1,16-1,6], center=true);
    }

}

module super_danny_plug_assy(){
    mirror([0,1,0])
    xspread(50, 3)
    ymove(25)
    zmove(25)
    scale(1.5)
    super_danny_plug();

    xspread(50, 3)
    ymove(25)
    zmove(25)
    scale(1.5)
    super_danny_plug();

}

module supper_danny_usb_port(){
   yspread(inch(.5), 4)cube([7.5, 4, 12.5]);
}

module supper_danny_toggle_switch(){
color("black") cube([inch(.5), inch(1), inch(.5)], center=true);
color("red") xmove(3) cube([inch(.5)-2, inch(1) - 2, inch(.5)-2], center=true);
}
