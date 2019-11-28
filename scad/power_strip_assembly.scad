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


use <../vitamins/super_danny_power_supply.scad>
use <../vitamins/dual_lock.scad>

sd_length = 200;
sd_height = inch(1.25);



// ========= render ===========


//$explode = 1;

// ========= modules ===========
//
//!1. Using scissors, cut 2 each 1in x 85MM dual lock velcro.
//!2. Remove backing from dual lock strips and attach to the bottom of the power strip as indicated.
//!
//
module power_strip_assembly(){

    pose( [69.7, 0, 202.8], [25, 0, -14.0375])
    assembly("power_strip"){

      //explode(d=[0,0,0],explode_children = false, show_line= false)
      super_danny_power_supply();

      //explode(d=[0,0,-20],explode_children = true, show_line= false)
      union(){
        mirror([1,0,0])
        xmove(-sd_length/2 + inch(1)/2)
        zmove(-sd_height/2 - 1.5)
        zrot(90)
        dual_lock(85, [0,0,-20]);

        xmove(-sd_length/2 + inch(1)/2)
        zmove(-sd_height/2 - 1.5)
        zrot(90)
        dual_lock(85, [0,0,-20]);
      }
    }
}

if ($preview){
   echo($vpr, $vpt);
   $explode=1;
   power_strip_assembly();
}
 