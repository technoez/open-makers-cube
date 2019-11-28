//
// Open Makers Cube Copyright 2019 
// Chris Wilson
// cmsjwilson@gmail.com
//
// This file is part of Open Makers Cube Project.
//
// Open Makers Cube is free software: you can redistribute it and/or modify it under the terms of the
// GNU General Public License as published by the Free Software Foundation, either version 3 of
// the License, or (at your option) any later version.
//
// Open Makers Cube is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;
// without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
// See the GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License along with Open Makers Cube.
// If not, see <https://www.gnu.org/licenses/>.
//


// BOSL Library 
include <bosl/constants.scad>
use <bosl/shapes.scad>
use <bosl/transforms.scad>

include </dotSCAD/src/rounded_cube.scad>;

include <NopSCADlib/core.scad> 
include <NopSCADlib/vitamins/screws.scad>

// ===========  Constants  ===========
IN = 25.4;
MM = 1;

HOLE_TOL = .3*MM;// make holes slightly larger 

3MM = 3*MM;
8MM = 8*MM;

8MM_TOL = 8*MM + HOLE_TOL; 
2MM_TOL = 2*MM * HOLE_TOL;

M3_CLEARANCE = 4*MM + HOLE_TOL;
M8_OFFSET_FROM_BOTTOM = 5*MM;
PLANE_TOL = .01*MM;
$fn = 30;


// ============ Paramaters ============

// handle horizontal rail dimensions
handle_x = 200*MM; 
handle_y = 1*IN;
handle_z = 18*MM; 

// overall height of handle
handle_height = 50*MM; 

// vertical rail supports/legs
handle_support_x = 1*IN;
handle_support_y = 1*IN;

rounding_radius = 3*MM;
font_height = 8*MM;

rivet_head_height = 2*MM;

handle_support_z = handle_height - handle_z + 2 * rounding_radius; 


// scaling for 3D printers

HOLE_SIZE_COEF = 1.1;

NONE   = 0;
TEVO   = 1;
ENDER3 = 2;

3DPRINTER_SCALE = [
    [1, 1, 1],          // NONE.  no rescaling
    [1, .984, 1], // TEVO
    [1, .984, 1]  // ENDER3
];



//==============  Render ================

//handle_3d_print_ready(scale_factor=NONE);
//handle_3d_print_ready(scale_factor=TEVO);
//handle_3d_print_ready(scale_factor=ENDER3);
//$explode = 1;
carry_handle();
carry_handle_screws();

//==============  Modules  ================

// for STL exporting corrections for each printer
module handle_3d_print_ready(scale_factor=NONE){
  scale(3DPRINTER_SCALE[scale_factor])
    handle();
}



module carry_handle(){
stl("carry_handle");

color("orange")
rotate([180,0,0])
  difference(){

    difference(){

        union(){
            horizontal_support();
            vertical_support();
            mirror([1,0,0]) vertical_support();
        }

        handle_text();
    }

    handle_holes();
  }



}

module carry_handle_screws(){

   //explode(d=[0,0,-60], explode_children = true, show_line=false){
    //if ($exploded == 1 ) zmove(-50)
    xmove(-handle_x/2 + inch(1)/2)
    zmove(34)
    xrot(180)
    screw_and_washer(M3_cap_screw, 16);
   //}

   //explode(d=[0,0,-60], show_line=false){
    xmove(handle_x/2 - inch(1)/2)
    zmove(34)
    xrot(180)
    screw_and_washer(M3_cap_screw, 16);
   //}


}

module horizontal_support(){
  rounded_cube([handle_x, handle_y, handle_z ], rounding_radius, center=true);
}

module vertical_support(){
  translate([ (-handle_x/2) + handle_support_x/2, 0, (-handle_support_z/2 - handle_z/2) + rounding_radius * 2])
     rounded_cube([handle_support_x, handle_support_y, handle_support_z ], rounding_radius, center=true);
}

module handle_text(){
    translate([0,(-handle_y/2) +1, -font_height/2 ])
    rotate([90,0,0])
    linear_extrude(height=2)
    text("Maker's Cube", size=font_height, halign="center");

}


module handle_holes(){

    //==== M3 clearance holes

    
      // left
      m3_clearance_hole();

      // right
      mirror([1,0,0]) m3_clearance_hole();


      //=== 8MM holes

      // left
      m8_clearance_hole();

      // right
      mirror([1,0,0]) m8_clearance_hole();


      // === 8MM threaded rivet head inset
      
      //color("red", 1)
      m8_rivet_relief_hole();
      mirror([1,0,0]) m8_rivet_relief_hole();


}

module m3_clearance_hole(){
    translate([(-handle_x/2) + handle_support_x/2, 0, 0])
    scale(HOLE_SIZE_COEF)
       cylinder(d = M3_CLEARANCE, h=handle_height * 2, center=true);
}

module m8_clearance_hole(){
    translate([(-handle_x/2) + handle_support_x/2, 0, ((-handle_height + handle_z)/2) + M8_OFFSET_FROM_BOTTOM + 6*MM ])
    scale(HOLE_SIZE_COEF)
       cylinder(d = 8MM_TOL, h=handle_height- 5*MM, center=true);
}

module m8_rivet_relief_hole(){
    translate([(-handle_x/2) + handle_support_x/2, 0, -handle_height + (rounding_radius*2) + rivet_head_height*2])
    scale(HOLE_SIZE_COEF)
       cylinder(d = 8MM_TOL + 2MM_TOL, h=rivet_head_height + PLANE_TOL, center=true);
}


// =========== Functions =============



