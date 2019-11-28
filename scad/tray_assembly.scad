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
//include <NopSCADlib/lib.scad>   

// printed
use <../printed/tray.scad>

// vitamins
use <../vitamins/rivet.scad>

include <NopSCADlib/vitamins/screws.scad>

// assemblies



//
//!1. Insert 2 ea. M3 x 12MM screws through two M3 flat washers.
//!2. Insert screw/washer assy through the front tray slots.
//!3. Secure tray to top frame assy. 
//!
//
module tray_assembly(show_text=false){
    pose( [65.5, 0, 306.8], [-2.89249, -17.7547, -1.70619])
    assembly("tray"){
        //$explode = 1;
       {
          color("orange")
          tray(show_text);
          tray_screws();
       }

    }// assembly


}



module tray_screws(){
   zmove(12.5)
   xspread(200-inch(1))  screw_and_washer(M3_cap_screw, 12);
}


if ($preview){
    //$explode=1;
   tray_assembly(true);
}
 