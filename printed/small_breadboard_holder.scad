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

include <BOSL/transforms.scad>
use <../printed/small_breadboard_holder.scad>
use <../vitamins/small_breadboard.scad>
include <NopSCADlib/core.scad> 





// ============ Constants ===============
IN = 25.4;
MM = 1;

PLANE_POS =  .02;
PLANE_NEG = -.01;
$fn = 30;

font_height = 7*MM;
3MM_TAP_HOLE = 2.5*MM;


// ============== Parameters ===============

body_x = 70*MM;
body_y = 61*MM;
body_z = 14*MM;

body_dim = [body_x, body_y, body_z];



inner_x = body_x + PLANE_POS ;
inner_y = 55*MM;
inner_z = 14*MM;

inner_notch_dim = [inner_x, inner_y, inner_z];

// spin plate

spin_plate_hole_ctoc_spacing_large = 22*MM;
large_hole_dia = 6*MM;
small_hole_dia = 3.2*MM;


tab_plug_dim  = [2.6*MM, 2*MM, 4*MM];
tab_notch_dim = [5*MM, 5*MM, 5*MM];



// scaling for 3D printers

HOLE_SIZE_COEF = 1.1;

NONE   = 0;
TEVO   = 1;
ENDER3 = 2;

3DPRINTER_SCALE = [
    [1, 1, 1], // NONE.  no rescaling
    [1, 1, 1], // TEVO
    [1, 1, 1]  // ENDER3
];


// ============== Render ==================


//small_bread_board_holder_3d_print_ready(NONE);
//small_bread_board_holder_3d_print_ready(TEVO);
//small_bread_board_holder_3d_print_ready(ENDER3);
//small_bread_board_holder();

//small_breadboard_assy();


// ============= Modules ==================

module small_bread_board_holder_3d_print_ready(scale_factor=NONE){

  scale(3DPRINTER_SCALE[scale_factor])
   small_breadboard_holder();
}




module small_breadboard_holder(){
  stl("small_breadboard_holder");

  color("orange"){

   difference(){
    base();
    hole_array_assy();
    hole();
    notches();
   }

   breadboard_text();
   plugs();

  }
}

module hole(){
  translate([body_x/2, body_y, 10*MM])
  rotate([90,0,0])
  scale(HOLE_SIZE_COEF)
  //#cylinder(d=3MM_TAP_HOLE, h=5*MM);
  zmove(-2) cylinder(d=3MM_TAP_HOLE, h=5*MM);
}


module notches(){
  translate([5*MM, -1, 6*MM])
    cube(tab_notch_dim);
  translate([body_x - tab_notch_dim[0] - 5*MM , -1, 6*MM])
    cube(tab_notch_dim);
}


module plugs(){
  translate([6*MM + .25*MM, body_y - 4*MM, 6*MM])
    cube(tab_plug_dim);
  translate([ (body_x - tab_plug_dim[0]) - 6*MM - .25*MM  , body_y - 4*MM, 6*MM])
    cube(tab_plug_dim);
}

module breadboard_text(){
    translate([35*MM, 41.5*MM, 1.5*MM ])
    linear_extrude(height=1.5)
    text("Breadboard", size=font_height, halign="center");
}

module hole_array_assy(){
 
 translate([13*MM, 0, 0])
    for (i = [0:2]){
      translate([i* spin_plate_hole_ctoc_spacing_large, 0, 0])
      hole_array();
    }

}

module hole_array(){
  spin_plate_holes_large();
  translate([0, spin_plate_hole_ctoc_spacing_large + 8.5*MM, 0])
  spin_plate_holes_small();
}

module spin_plate_holes_small(){

    translate([8*MM, 0, 0])

       scale(HOLE_SIZE_COEF)
        cylinder(d =small_hole_dia, body_z + 2*MM, center=true);
    
    mirror([1,0,0])
     translate([8*MM, 0, 0])
        scale(HOLE_SIZE_COEF)
        cylinder(d =small_hole_dia, body_z + 2*MM, center=true);

     translate([0, 8*MM, 0])
        scale(HOLE_SIZE_COEF)
        cylinder(d =small_hole_dia, body_z + 2*MM, center=true);
    
    mirror([0,1,0])
     translate([0, 8*MM, 0])
        scale(HOLE_SIZE_COEF)
        cylinder(d =small_hole_dia, body_z + 2*MM, center=true);

}

module spin_plate_holes_large(){

  //translate([13*MM, 8.5*MM,0])
  translate([0, 8.5*MM,0])
  rotate(90)
   for ( i = [0:2]){
     translate([i * spin_plate_hole_ctoc_spacing_large, 0, 0])
        scale(HOLE_SIZE_COEF)
        cylinder(d = large_hole_dia, body_z + 2*MM, center=true);
   }


}

module base(){
    difference(){

        cube(body_dim);
        translate([PLANE_NEG, 3.6*MM, 2*MM])
        cube(inner_notch_dim);

    }
}

// ============= Functions ==================