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
use <../printed/carry_handle.scad>
include <NopSCADlib/core.scad> 
 
//$explode = 1;


//
//!1. 3D print 1 each carry handle. [See Print Settings](#PRINT_SETTINGS)
//!2. Insert 2 each 16MM M3 screws into 2 each M3 washers.
//!3. Once frame assembly is assembled, attach carry hadndle to top of frame as indicated.  
//
module carry_handle_assembly(){
   pose([80.2, 0, 323.6], [32.0298, 8.74044, -6.51976])
   assembly("carry_handle"){
       //frame_assembly();
       zmove(139)
       xrot(180)
       {
       carry_handle();
       explode(d=[0,0,-50],explode_children = true ,show_line=false)
       carry_handle_screws(); 
       }


   }
}

