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
use <../printed/corner_lamp_holder.scad>

// vitamins
use <../vitamins/rivet.scad>

include <NopSCADlib/vitamins/screws.scad>

echo($vpr, $vpt);


 

//!1. 3D print 4 each lamp holder corner prieces. [See Print Settings](#PRINT_SETTINGS)
//!2. Using a 3mm x .5mm hole tap, tap the back horizontal hole for the 8mm M3 screw. This screw will be used to secure the lamp in place.
//!3. Screw in 8mm screw a few turns.
//!4. When the frame assembly is assembled, use the remaining 3 12MM M3 screws to secure to frame corners.
module corner_lamp_holder_assembly(orient=1){
    //pose( [65.5, 0, 306.8], [-2.89249, -17.7547, -1.70619])
    pose([46.2, 0, 11.9], [28.3969, 28.3969, 15])
    assembly("corner_lamp_holder"){
       $explode = 1;
       corner_lamp_holder_orientation(orient)
       {
          color("orange")
          corner_socket_base_assy();
          corner_lamp_holder_screws();
       }

    }// assembly


}

module corner_lamp_holder_orientation(orient=1){

  //echo($children)
  if(orient == 1) {
      children();
  }else if(orient == 2) {
     xmove(45)
     zrot(90)
      children();
  }else if(orient == 3) {
     ymove(45)
     xmove(45)
     zrot(180)
      children();
  }else if(orient == 4) {
     ymove(45)
     zrot(270)
      children();
  }

}

module corner_lamp_holder_screws(){
    // 3 outer hold down screw
    ymove(5)
    xmove(5)
    zmove(5)
    screw(M3_cap_screw, 12);

    ymove(-5)
    ymove(45)
    xmove(12.8)
    zmove(5)
    screw(M3_cap_screw, 12);

    ymove(12.7)
    xmove(40)
    zmove(5)
    screw(M3_cap_screw, 12);


    // 8mm side secure screw
    
    ymove(33)
    xmove(33)
    zmove(13)
    zrot(45)
    yrot(90)
    screw(M3_cap_screw, 8);



}


if ($preview){
   corner_lamp_holder_assembly(1);
}
 