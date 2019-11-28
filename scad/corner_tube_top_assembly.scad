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
use <BOSL/shapes.scad>

// printed
use <../printed/corner_tube_connector.scad>

// vitamins
use <../vitamins/rivet.scad>

IN=25.4;
CORNER = 1*IN;
MM=1;
HOLE_SIZE_COEF = 1;

//
//!1. 3D print 4 each corner tube connector tops . [See Print Settings](#PRINT_SETTINGS)
//!2. Using a threaded insert rivet gun, insert the rivets as indicated.
//
module corner_tube_top_assembly(){
    
    pose( [65.5, 0, 306.8], [-2.89249, -17.7547, -1.70619])
    assembly("corner_tube_top"){

    color("orange")
        corner_tube_connector(rivet_hole=true);
        xmove(-CORNER/2)
        zmove(5*MM) 
        ymove(-5*MM) 
        ymove(CORNER/2) 
        zmove(-CORNER/2) 
        xmove(4.3)
        yrot(-90)
        explode(d=[0,0,30],offset=[0,0,0], explode_children = true, show_line = true) 
        rivet();

    }// assembly


}

if ($preview){
   //$explode=1;
   corner_tube_top_assembly();
}
 