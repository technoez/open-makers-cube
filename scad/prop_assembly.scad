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
use <../printed/prop.scad>

// vitamins
use <../vitamins/rubber_foot.scad>
use <../vitamins/dual_lock.scad>


// Prop assembly module
//!
//!1. 3D print prop. [See Print Settings](#PRINT_SETTINGS)
//!2. Using scissors, cut 2 ea 6mm x 1in strip of 3M dual lock velcro.
//!3. Remove adhesive backing from dual lock strips and attach to prop as indicated.
//!4. Remove adhesive backing from the 2 each rubber feet and attach to the bottom of the prop.
//!
//
module prop_assembly(){
    
    pose( [65.5, 0, 306.8], [-2.89249, -17.7547, -1.70619])
    assembly("prop"){
         prop(flip = false);
         prop_rubber_feet();

         //explode(d=[0,-20,0],offset=[0,0,0], explode_children = true, show_line = false) 
         prop_dual_lock(length=6, explode_d =[0,0,20]);
    }// assembly


}

if ($preview){
   //$explode=1;
   prop_assembly();
}
 