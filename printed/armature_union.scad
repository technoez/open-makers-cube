
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
include <BOSL/constants.scad>
include <BOSL/transforms.scad>
use <BOSL/shapes.scad>

// https://github.com/nophead/NopSCADlib
// referenced from the OPENSCADPATH env variable
include <NopSCADlib/core.scad>  
include <NopSCADlib/vitamins/screws.scad>
include <NopSCADlib/vitamins/inserts.scad>



// ============ Constants ===============
IN = 25.4;
MM = 1;
$fn = 50;



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
//armature_union();

//aramature_union_3d_print_ready();

// ============ Modules ===============
module aramature_union_3d_print_ready(){
   armature_union();
}

module armature_union(){
   union_alligator();
   zmove(13)
   union_armature();
}

module union_alligator(){
  difference(){
    tube(h=13*MM, or=6*MM, ir=2.5*MM*HOLE_SIZE_COEF, align=V_CENTER);
    xcyl(h=15*MM, d=2.5*MM);// M3 securing screw
  }
}

module union_armature(){
  difference(){
    tube(h=13*MM, or=6*MM, ir=1.5*MM*HOLE_SIZE_COEF, align = V_CENTER);
    scale(HOLE_SIZE_COEF)
    xcyl(h=15*MM, d=2.5*MM);// M3 securing screw
  }
}

