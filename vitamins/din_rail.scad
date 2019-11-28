
// BOSL Library 
include <bosl/constants.scad>
use <bosl/shapes.scad>
use <bosl/transforms.scad>


// https://github.com/nophead/NopSCADlib
// referenced from the OPENSCADPATH env variable
include <NopSCADlib/core.scad>  
//include <NopSCADlib/lib.scad>  

include <NopSCADlib/vitamins/screws.scad>
//include <NopSCADlib/utils/round.scad>

din_rail_length = 200;
din_rail_dim =[din_rail_length, 35, ];

slot_c_to_c = 36;
slot_x = 29;
slot_y = 5.2;

num_slots = round(din_rail_length/slot_c_to_c);
rivet_hole_pattern_typical = [7.93, 41.27, 74.6, 107.93, 141.27 ];
rivet_c_to_c = 33.34;

//***************  Render  **********************

//$explode=1;
din_rail();


//**************  Modules  **********************
module din_rail(){
    vitamin(str(" : 35MM Din Rail " , din_rail_length, " MM long"));

    color("white")

    difference(){

        cube([din_rail_length,35,7.5], center=true);

        zmove(1)
        cube([din_rail_length + 1,25,7.5], center=true);

        outer_wing_notches();
        
        xspread(slot_c_to_c, num_slots -1)
        slot(slot_y/2, slot_x, h = 10);
    }

    
    // securing screws
    zmove(-2.8){

        xmove(-(din_rail_length / 2) + inch(1)/2 )
        screw_and_washer(M3_cap_screw, 8);

        xmove((din_rail_length / 2) - inch(1)/2 )
        screw_and_washer(M3_cap_screw, 8);

    }

}

/**
 sides = front, back, left, right
 height_pos = 1,2,3,4,5  1: top, 3:center, 5: bottom 
*/ 
module din_rail_position(side="front", height_pos = 4){
 if (side == "front"){
    zmove((3-height_pos) * rivet_c_to_c)
    ymove(-200/2 - 4.5)
    xrot(90)
    din_rail();
 }else
 if (side == "back"){
    zmove((3-height_pos) * rivet_c_to_c)
    ymove(200/2 + 4.5)
    xrot(-90)
    din_rail();
 }else
 if (side == "left"){
    zmove((3-height_pos) * rivet_c_to_c)
    xmove(-200/2 - 4.5)
    zrot(-90)
    xrot(90)
    din_rail();
 }else
if (side == "right"){
    zmove((3-height_pos) * rivet_c_to_c)
    xmove(200/2 + 4.5)
    zrot(90)
    xrot(90)
    din_rail();
 }
 

 
}

module outer_wing_notches(){
    zmove(-1)
    yspread(30 +2)
    cube([din_rail_length + 1,5,7.5], center=true);
}

module inner_channel_notch(){
  cube([din_rail_length,25,7.5]);
}
