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
include <NopSCADlib/core.scad>   

// printed
use <../printed/back_spin_plate.scad>

// vitamins
use <../vitamins/rivet.scad>

//
//!1. 3D print 4 each back spin plates. [See Print Settings](#PRINT_SETTINGS)
//!2. Using a threaded insert rivet gun, insert the rivets as indicated.
//!
//
module back_spin_plate_assembly(){
    pose( [65.5, 0, 306.8], [-2.89249, -17.7547, -1.70619])
    assembly("back_spin_plate"){
    //$explode=1;

      color("orange")
      back_spin_plate();

      //explode(30) 
      back_spin_plate_rivets();
    }

}

module back_spin_plate_rivets(){
      zmove(4)
      ymove(8)
      xmove(30)
      xrot(180)
      xspread(16) 
      explode(d=[0,0,20], offset= [0,0,0],explode_children=false, show_line=true) 
      rivet();
}

if ($preview){
   back_spin_plate_assembly();
}
 