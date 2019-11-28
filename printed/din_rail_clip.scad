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

use <../vitamins/rivet.scad>

// BOSL library
include <bosl/constants.scad>
use <bosl/shapes.scad>
use <bosl/transforms.scad>

// https://github.com/nophead/NopSCADlib
// referenced from the OPENSCADPATH env variable
include <NopSCADlib/core.scad>  
include <NopSCADlib/vitamins/screws.scad>


// ==============  Constants ===================
IN = 25.4;
MM = 1;

5MM           = 5*MM;
6MM           = 6*MM;
2_5MM         = 2.5*MM;
HOLE_C_TO_C   = 22*MM;
HOLE_ARR_OFF  = 2.5*MM;

5MM_THRU_HOLE_DEPTH = 12.5*MM;

// use these to avoid plane colision when differencing 
PLANE_POS   =  .5; 
PLANE_NEG   = -.1; 

// ==============  Parameters ===================

// main body
body_x = 64*MM;
body_y = 20*MM;
body_z =  9*MM;


// inner body
inner_body_depth = 13.5*MM;

// nose
nose_length      = 30*MM;


// clip arm
//arm_thk          = 1.5*MM; // x trans
arm_thk          = 2*MM; // x trans
arm_heel_thk     = 4.0*MM; // y trans
arm_head_width   = 4.5*MM; // x 
arm_to_body_gap  = 1.5*MM;
 
arm_notch_dim = [arm_to_body_gap, 10.5*MM, body_z + PLANE_POS];




// back notch
back_notch_x = body_x - nose_length - arm_head_width;
back_notch_y = body_y - inner_body_depth + PLANE_POS; 
back_notch_z = body_z + PLANE_POS; 

back_notch_dim = [back_notch_x, back_notch_y, back_notch_z ];


// din rail notch for standard 35MM Din Rail
din_notch_x    = 35.5*MM;
din_notch_y    = 1.3*MM;
din_notch_z    = body_z + PLANE_POS;

din_notch_dim = [din_notch_x, din_notch_y, din_notch_z];

// chamfer 
chamfer_offset = 15*MM;
chamfer_deg    = 45;


// calculated
main_body_dim = [body_x, body_y, body_z];


head_angle_dim = [15*MM, 5*MM, body_z + PLANE_POS ];
nose_angle_dim = [5*MM, 1*MM, body_z + PLANE_POS ];


// scaling for 3D printers
// 3D printer correction coefficients. 1 = true size
//HOLE_SIZE_COEF = 1;
HOLE_SIZE_COEF = 1.1;

NONE   = 0;
TEVO   = 1;
ENDER3 = 2;

3DPRINTER_SCALE = [
    [1, 1, 1],          // NONE.  no rescaling
    [.984, .984, .984], // TEVO
    [1, 1, 1]           // ENDER3
];




// ==============  Render ===================

din_rail_clip();

//din_rail_clip_3d_print_ready(scale_factor=NONE);
//din_rail_clip_3d_print_ready(scale_factor=ENDER3);


//}
// ==============  Modules ===================

module din_rail_clip_3d_print_ready(scale_factor=NONE){
  scale(3DPRINTER_SCALE[scale_factor])
    main_body();
}

module din_rail_clip(rivets=false){
  stl("din_rail_clip");// generates stl 

  //$explode = 1;
  main_body();
}

module expl(){
  echo ($children);
}

module all_holes(){
  translate([HOLE_ARR_OFF, 0, 0 ])
  union(){
    outer_rivet_holes();
    center_hole();
  }
}


module outer_rivet_holes(){
  
  // left hole
  union(){
    translate([(body_x/2) - HOLE_C_TO_C, (10.1/2) + PLANE_NEG, body_z/2])
    rotate([90, 0, 0])
    scale(HOLE_SIZE_COEF)
      rivet_plug();

    translate([(body_x/2) - HOLE_C_TO_C,  5MM_THRU_HOLE_DEPTH , body_z/2])
    rotate([90,0,0])
    scale(HOLE_SIZE_COEF)
      cylinder(d=5MM, h=5MM_THRU_HOLE_DEPTH, $fn=50);
  }

  // right hole
  union(){
    translate([(body_x/2) + HOLE_C_TO_C, (10.1/2) + PLANE_NEG, body_z/2])
    rotate([90, 0, 0])
    scale(HOLE_SIZE_COEF)
      rivet_plug();

    translate([(body_x/2) + HOLE_C_TO_C,  5MM_THRU_HOLE_DEPTH , body_z/2])
    rotate([90,0,0])
    scale(HOLE_SIZE_COEF)
      cylinder(d=5MM, h=5MM_THRU_HOLE_DEPTH, $fn=50);
  }


}

module center_hole(){
 union(){

  translate([body_x/2, body_y, body_z/2])
  rotate([90, 0, 0])
  scale(HOLE_SIZE_COEF)
    cylinder(d=2_5MM, h=body_y , $fn=50);

  translate([body_x/2, 5MM + PLANE_NEG, body_z/2])
  rotate([90, 0, 0])
  scale(HOLE_SIZE_COEF)
    cylinder(d=6MM, h=5MM , $fn=50);

 }    
}

module trim_arm_head(){
  translate([body_x -5, body_y-2, PLANE_NEG])
    cube([10, 5, body_z + PLANE_POS]);
}

module nose_angle(){
 translate([body_x - back_notch_x - 5.8, body_y - 6.3*MM ,PLANE_NEG])
 rotate([0,0,30])
    cube(nose_angle_dim);
}

module arm_angle(){
 translate([body_x - arm_head_width, body_y - 5*MM ,PLANE_NEG])
 rotate([0,0,50.7])
    cube(head_angle_dim);
}

module arm_notch(){
  translate([body_x - arm_thk - arm_notch_dim[0] , arm_heel_thk , PLANE_NEG])
     cube(arm_notch_dim) ;
}

module din_notch(){
  translate([ body_x - din_notch_dim[0] - arm_thk  , inner_body_depth, PLANE_NEG])
    cube(din_notch_dim);
}

module back_notch(){
  translate([nose_length, body_y - back_notch_y + PLANE_POS, PLANE_NEG])
    cube(back_notch_dim);
}

module top_chamfer(){
  translate([0, chamfer_offset, PLANE_NEG])
  rotate(chamfer_deg)
     cube([40,20,body_z + PLANE_POS], center = false);

}


// start with main cube and difference other geometries
module main_body(){
    color("orange") 
     
    difference(){
        cube(main_body_dim, center = false);

        top_chamfer();
        back_notch();
        din_notch();
        arm_notch();
        arm_angle();
        nose_angle();
        trim_arm_head();
        all_holes();

    }

}


// ==============  Functions ===================
