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


// libraries
include <BOSL/transforms.scad>
include <NopSCADlib/core.scad> 
include <NopSCADlib/vitamins/screws.scad>

// vitamins
use <../vitamins/small_breadboard.scad>
use <../vitamins/rivet.scad>

// printed
use <../printed/din_rail_clip.scad>
use<../printed/back_spin_plate.scad>
use <../printed/small_breadboard_holder.scad>

// assemblies
use <din_rail_clip_assembly.scad>
use <back_spin_plate_assembly.scad>

echo($vpr, $vpt);

//
//!1. 3D print 1 each small breadboard holder. [See Print Settings](#PRINT_SETTINGS)
//!2. Using a 3mm tap, tap the small horizontal hole located on the side of the breadboard holder.
//!3. 1 5MM screw secures the breadboard to the holder from the side.
//!4. 2 8MM screws secure the breadboard holder to the spin plate.
//!5. 2 12MM screws secure the spin plate to the din rail clip.
//!6. 1 16MM screw is optional and is used for additional security of the din rail clip to the din rail.
//
module small_breadboard_landscape_assembly(){
   pose([69, 0, 282.1], [24.6337, -32.5552, 19.1743])
   assembly("small_breadboard_landscape"){
    $explode = 1;

   small_breadboard_orientation(1)
    small_breadboard_and_holder();


    small_breadboard_din_rail_clip_and_backspin_plate();


  }
}

//
//!1. 3D print 1 each small breadboard holder. [See Print Settings](#PRINT_SETTINGS)
//!2. Using a 3mm tap, tap the small horizontal hole located on the side of the breadboard holder.
//!3. 1 5MM screw secures the breadboard to the holder from the side.
//!4. 2 8MM screws secure the breadboard holder to the spin plate.
//!5. 2 12MM screws secure the spin plate to the din rail clip.
//!6. 1 16MM screw is optional and is used for additional security of the din rail clip to the din rail.
//
module small_breadboard_portrait_assembly(){
   pose([69, 0, 282.1], [24.6337, -32.5552, 19.1743])
   assembly("small_breadboard_portrait"){
    $explode = 1;

   small_breadboard_orientation(2)
    small_breadboard_and_holder();


    small_breadboard_din_rail_clip_and_backspin_plate();


  }
}


// rotate in 2 differenct positions at 90 degrees
module small_breadboard_orientation(orient=1){
// children();
if (orient == 1){
    children(0) ;
}else if (orient == 2){
   xmove(4.5)
   zmove(65.5)
   yrot(90)
    children(0) ;
}
}


module  small_breadboard_and_holder(){
    xrot(90){

      // breadboard
      explode(d=[0,0,85], explode_children=true, show_line=false) 
      breadboard();

      // breadboard holder
      explode(d=[0,0,45], explode_children=true, show_line=false) 
      small_breadboard_holder();

      // 5MM screw to hold breadboard inside mount
      explode(d=[0,0,45], explode_children=true, show_line=false) 
      small_breadboard_5MM_screw();

    }

}

module small_breadboard_din_rail_clip_and_backspin_plate(){
   xrot(90)
    { 
       // back spin plate assembly
       explode(d=[0,0,15], explode_children=true, show_line=false) 
       ymove(.5)
       xmove(27)
       zrot(90)
       xrot(180)
       back_spin_plate_assembly();

       // 8MM screws
       explode(d=[0,0,40], explode_children=true, show_line=false) 
       small_breadboard_8MM_screws();

       // 12MM screws
       explode(d=[0,0,15], explode_children=true, show_line=false) 
       small_breadboard_12MM_screws();

       // 16MM screw
       explode(d=[0,0,15], explode_children=true, show_line=false) 
       small_breadboard_16MM_screw();


       // din rail clip assembly
       explode(d=[0,0,5], explode_children=true, show_line=false) 
       din_rail_clip_assembly();
    }

}

module breadboard(){
    xmove(14)
    ymove(42.5)
    zmove(-32)
    zrot(270)
    color("white")
    small_breadboard();
}

module small_breadboard_5MM_screw(){
     // 5MM screw to hold breadboard to holder mount 
     zmove(10)
     xmove(35)
     ymove(63)
     xrot(270)
     screw(M3_cap_screw, 5);

}

module small_breadboard_16MM_screw(){
     // 12MM screws secure backspin plate to din rail clip 
     zmove(-8)
     xmove(35)
     ymove(30.5)
     //yspread(44) 
     screw(M3_cap_screw, 16);
}

module small_breadboard_8MM_screws(){
     // 8MM screws to hold breadboard holder to backspin plate
     zmove(2)
     xmove(35)
     ymove(30.5)
     yspread(16) 
     screw(M3_cap_screw, 8);
} 

module small_breadboard_12MM_screws(){
     // 12MM screws secure backspin plate to din rail clip 
     zmove(-8)
     xmove(35)
     ymove(30.5)
     yspread(44) 
     screw(M3_cap_screw, 12);
}

if ($preview)
  //small_breadboard_assembly(1);
  small_breadboard_landscape_assembly();

