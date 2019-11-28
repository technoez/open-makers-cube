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


include <NopSCADlib/core.scad>   
use <../vitamins/din_rail.scad>
use <frame_assembly.scad>


//
//!1. Use M3 8MM screws and M3 washers to attach the din rail to the outer frame assembly.  
//!2. Position the din rail in any position which works best for your project need. 
//
module din_rail_assembly(){
    //$explode = 1;
    pose( [65.5, 0, 306.8], [-2.89249, -17.7547, -1.70619])
    assembly("din_rail"){

         //frame_assembly();

        explode(d=[0, -60, 0], show_line = false)
        { 
            din_rail_position(side="front", height_pos = 2);
            din_rail_position(side="front", height_pos = 4);
        }

        explode(d=[0, 60, 0], show_line = false){
           din_rail_position(side="back", height_pos = 2);
           //din_rail_position(side="back", height_pos = 1);
        }

        
        explode(d=[-60, 0, 0], show_line = false){
           din_rail_position(side="left", height_pos = 4);
           din_rail_position(side="left", height_pos = 2);
        }


        explode(d=[60, 0, 0], show_line = false){
          din_rail_position(side="right", height_pos = 2);
          din_rail_position(side="right", height_pos = 4);
        }
 
    }
}

if ($preview)
  din_rail_assembly();