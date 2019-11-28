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

include <BOSL/constants.scad>
include <BOSL/transforms.scad>
use <BOSL/shapes.scad>

include <NopSCADlib/core.scad>   // Includes all the vitamins and utilities in NopSCADlib but not the printed parts.


use <../vitamins/rivet.scad>



// constants
IN=25.4;
MM=1;
$fn=30;

CORNER = 1*IN;
//SIDE   = 21.6*MM;
SIDE   = 21.8*MM;


// units are in MM
corner_dim = [CORNER, CORNER, CORNER];
side_dim   = [CORNER, SIDE, SIDE];

// 3D printing support platorms
platform_circle_dia = 14*MM;
platform_circle_ht  = 1*MM;

// corner explode
CE = 60; 

// scaling for 3D printers
NONE   = 0;
TEVO   = 1;
ENDER3 = 2;

HOLE_SIZE_COEF = 1.1;

3DPRINTER_SCALE = [
    [1, 1, 1],          // NONE.  no rescaling
    [.984, .984, .984], // TEVO
    [.984, .984, .984]  // ENDER3
];


// ============  Render   ==========


//corner_tube_connector(rivet_hole=true);
corner_tube_connector_top();
/* 
  scale to compensate for 3D printer accuracy compensation.
  this way we don't need to rescale in 3D slicer
*/
//corner_tube_connector_3d_print_ready(scale_factor = TEVO, rivet_hole=true);
//corner_tube_connector_3d_print_ready(scale_factor = NONE, rivet_hole=true);



// ============  Modules   ==========
module corner_tube_connector(rivet_hole=false){
  //stl("corner_tube_connector");

   //color("orange", 1) 
   union(){

     // main corner cube
      tube_connector_corner(rivet_hole);

      // 3 side cubes
      translate([corner_dim[0] , 0 ,0])
         tube_connector_side();

      mirror([1,1,0])
      translate([corner_dim[0] , 0 ,0])
         tube_connector_side();

      mirror([1,0,-1])
      translate([corner_dim[0] , 0 ,0])
         tube_connector_side();

   }

}

module corner_tube_connector_top(){
   stl("corner_tube_connector_top");
   //color("orange") 
   corner_tube_connector(rivet_hole=true);
}

module corner_tube_connector_bottom(){
   stl("corner_tube_connector_bottom");
   //corner_tube_connector_3d_print_ready(scale_factor = NONE, rivet_hole=false);
   color("orange") 
   corner_tube_connector(rivet_hole=false);
}



module corner_tube_connector_3d_print_ready(scale_factor=NONE, rivet_hole=false){

  scale(3DPRINTER_SCALE[scale_factor])
  rotate([-225,35.5,0])
    corner_tube_connector(rivet_hole);

    //3d_print_platform_square();
    3d_print_platform_circles();
}

// non-parametric. may need to adjust if changes are made to tube dimensions
module 3d_print_platform_circles(){
  translate([22, 0, -34.5])
    //cylinder(h=1*MM, d=6*MM, $fn=30 );
    cylinder(h=platform_circle_ht, d=platform_circle_dia, $fn=30 );

  translate([-11.5, 19, -34.5])
    cylinder(h=platform_circle_ht, d=platform_circle_dia, $fn=30 );
    //cylinder(h=1*MM, d=6*MM, $fn=30 );

  translate([-11.5, -19, -34.5])
    cylinder(h=platform_circle_ht, d=platform_circle_dia, $fn=30 );
    //cylinder(h=1*MM, d=6*MM, $fn=30 );
}


// non-parametric. may need to adjust if changes are made to tube dimensions
module 3d_print_platform_square(){
   translate([5, 0, -34.0])
   union(){

      difference(){
      cube([38*MM, 42*MM, 2*MM],center = true);
      cube([30*MM, 38*MM, 2*MM+.01],center = true);
      }
   } 
}

module tube_connector_corner(rivet_hole=false){

      if (rivet_hole == true){
         difference(){
            cube(corner_dim, center=true);
            xmove(-CORNER/2)zmove(5*MM) ymove(-5*MM) ymove(CORNER/2) zmove(-CORNER/2) xcyl(d=5*MM*HOLE_SIZE_COEF, h=20*MM);
         }
      }else{
        cube(corner_dim, center=true);
      }
 
}

module tube_connector_side(){
    cube(side_dim, center=true);
}


// ============  Functions ==========


// 3d print biasing
function bias(val) = val * (CORNER/MEASURED_CORNER);

function origin_cent() = [0,0,0];
function origin_xy() = [10,10,10];

function origin(center=true) = 
   (center == true) ? [0,0,0]: [xy_origin, xy_origin, xy_origin];