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
use <../printed/din_rail_clip.scad>
use <../vitamins/rivet.scad>


//
//!1. 3D print 4 each din rail clips. [See Print Settings](#PRINT_SETTINGS)
//!2. Using a threaded insert rivet gun, insert the rivets as indicated.
//!3. Using an M3 tap, tap the small center hole.  This is optional and is be used to provide additional security of the din clip to the din rail.
//!
//
module din_rail_clip_assembly(){
    pose( [65.5, 0, 306.8], [-2.89249, -17.7547, -1.70619])

    assembly("din_rail_clip"){
       $explode = 1; 
       // din rail clips and rivets
       zmove(-9.5)
       ymove(65)
       xmove(80.5)
       zrot(270)
       xrot(-90)
       zmove(-50)
       {
         din_rail_clip(); 

         din_rail_clip_rivets();
      }


    }

}

module din_rail_clip_rivets(){
  ymove(4)
  xmove(34.5)
  zmove(4.5)
  xrot(90)
  xspread(44)
  explode(d=[0,0,20], offset=[0,0,0], explode_children=false, show_line=true) 
  rivet();

}

if ($preview){
   din_rail_clip_assembly();
}
 