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

include </dotSCAD/src/rounded_square.scad>;
include <NopSCADlib/core.scad> 
include <BOSL/constants.scad>
include <BOSL/transforms.scad>
use <BOSL/shapes.scad>
use <../vitamins/rubber_foot.scad>
use <../vitamins/dual_lock.scad>

// ============ Constants ===============
IN = 25.4;
MM = 1;
$fn = 30;


//body_dim  = [200*MM, 102*MM, 25*MM ];
prop_dim        = [1*IN, 1*IN, 56*MM];
prop_dim_int    = [1*IN + 25*MM, 1*IN + 1*MM, 56*MM];
support_c_to_c  = 174.6*MM;

// scaling for 3D printers

HOLE_SIZE_COEF = 1.1;

NONE   = 0;
TEVO   = 1;
ENDER3 = 2;

3DPRINTER_SCALE = [
    [1, 1, 1],    // NONE.  no rescaling
    [1, 1, 1], // TEVO
    [1, 1, 1]  // ENDER3
];


// ============ Renders ===============

//prop_3d_print_ready(NONE);
//prop_3d_print_ready(TEVO);
//prop_3d_print_ready(ENDER3);
prop();

// ============ Modules ===============

module prop_3d_print_ready(scale_factor=NONE, flip=true){

  scale(3DPRINTER_SCALE[scale_factor])
  prop(flip = flip);
}


module prop_assy(flip=false){
   prop(flip);
   prop_rubber_feet();
   prop_dual_lock(length=6);
}


module prop(flip=false){

  stl("prop");

  color("orange")
  if (flip == true){
    xrot(-15) xrot(180)
    union(){
        vert_support_array();
        inner_bar();
    }
   }else{
    union(){
        vert_support_array();
        inner_bar();
    }

   }

}



module prop_dual_lock(length, explode_d=[0,0,0]){
  mirror([1,0,0])
  zmove(16)
  ymove(-inch(1)/2 - 1.8)
  xmove(support_c_to_c/2)
  xrot(90)
  zrot(90)
  dual_lock(length, explode_d);

  zmove(16)
  ymove(-inch(1)/2 - 1.8)
  xmove(support_c_to_c/2)
  xrot(90)
  zrot(90)
  dual_lock(length, explode_d);


}

module prop_rubber_feet(){


  mirror([1,0,0])
  xmove(support_c_to_c/2)
  zmove(-30)
  xrot(180)
  rubber_foot([0,0,20]);

  xmove(support_c_to_c/2)
  zmove(-30)
  xrot(180)
  rubber_foot([0,0,20]);

}

module inner_bar(){
  union(){
    zmove(18.7*MM)
    cube([200*MM - 2*(1*IN), 1*IN, 5*MM], center=true);
    wedge();
  }
}

module wedge(){
    zmove(24.5) zrot(-90)
    right_triangle([1*IN, 200*MM - (2*1*IN), 6.8], center = true);
}

module vert_support(){

   difference(){

        zrot(90)
        difference(){

            cube(prop_dim, center=true);

            zmove(53.5*MM) yrot(-15)
            cube(prop_dim_int, center=true);

        }

        zmove(24*MM)
        xrot(15) xrot(180)
        rubber_foot_diff();



   } 

}

module vert_support_array(){

xspread(support_c_to_c)
 vert_support();
}