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

use <../printed/corner_tube_connector.scad>
use <../vitamins/square_tube.scad>
use <../vitamins/rivet.scad>


use <corner_tube_top_assembly.scad>

// frame assy
rivet_hole_pattern_typical = [7.93, 41.27, 74.6, 107.93, 141.27 ];
rivet_hole_pattern_top     = [14.60, 41.27, 74.6, 107.93, 134.60 ];
frame_id = 149;
frame_od = 200;
neg_shift = -frame_id/2 - inch(1)/2;
pos_shift = frame_id/2 + inch(1)/2;
 
// corner explode
CE = 50;

// corner cube positions reference x/z front plane
TOP = 0;
BOT = 1;

IN=25.4;
CORNER = 1*IN;
MM=1;
HOLE_SIZE_COEF = 1;



//***************  Render  **********************

//$explode=1;
frame_assembly();


 
//***************  Modules  **********************
module frame_assembly(){

  assembly("frame"){


   frame_top_assembly();
   frame_middle_assembly();
   frame_bottom_assembly();

   corner_connectors();
  }
}

// Top, Middle, and Bottome rails all have different hole patterns
//
//!1. Using a drill and a 5MM drill bit. Drill 10 each holes in each of the 4 rails (40 total). Drill pattern is below.  
//!2. Insert rivets using rivet gun.  Do NOT insert the end rivets until the corner connectors are installed. 
//!![Picture](./docs/dimensioned_top_rail.png) <br>
//
module frame_top_assembly(){
      explode([0,0,CE],explode_children =true, show_line=false) 
  assembly("frame_top"){
      frame_top();
  }
}

//
//!1. Using a drill and a 5MM drill bit. Drill 10 each holes in each of the 4 rails (40 total). Drill pattern is below.  
//!2. Insert rivets using rivet gun.  Do NOT insert the end rivets until the corner connectors are installed. 
//!![Picture](./docs/dimensioned_vertical_rail.png) <br>
//
module frame_middle_assembly(){
  assembly("frame_middle"){
    frame_middle();
  }
}

//
//!1. Using a drill and a 5MM drill bit. Drill 5 each holes in each of the 4 rails (20 total). Drill pattern is below.  
//!2. Insert rivets using rivet gun.  Do NOT insert the end rivets until the corner connectors are installed. 
//!![Picture](./docs/dimensioned_bottom_rail.png) <br>
//
module frame_bottom_assembly(){
  explode([0,0,-CE],explode_children =true, show_line=false) 
  assembly("frame_bottom"){
    frame_bottom();
  }
}




module frame_top(){
    // left and right top rails
  union(){
      explode([-CE,0,CE],explode_children =true, show_line=false) 

      xmove(neg_shift) zmove(pos_shift) zrot(-90) top_rail(); 

      explode([CE,0,CE], true, show_line=false) 
      xmove(pos_shift) zmove(pos_shift) zrot(90) top_rail(); 
  }

  
  // front and back top rails
  union(){
    ymove(neg_shift)
    explode([0,-CE,CE], true, show_line=false) 
    zmove(pos_shift)top_rail();

   ymove(pos_shift)
   zrot(180){
     explode([0,-CE,CE], true, show_line=false) 
     zmove(pos_shift)top_rail();
   }

  }


}

module frame_bottom(){

  // left and right bottom rails
  union(){
    explode([-CE,0,-CE], true, show_line=false) 
    xmove(neg_shift) zmove(neg_shift) zrot(-90) bottom_rail(); 

    explode([CE,0,-CE], true, show_line=false) 
    xmove(pos_shift) zmove(neg_shift) zrot(90) bottom_rail(); 
  }

  // front and back bottom rails
  union(){
     ymove(neg_shift)
     explode([0,-CE,-CE], true, show_line=false) 
     zmove(neg_shift)bottom_rail();
     
     ymove(pos_shift)
     zrot(180)
     explode([0,-CE,-CE], true, show_line=false) 
     zmove(neg_shift)bottom_rail();
  }
}



module frame_middle(){

  // front left and right vertical rails
  ymove(neg_shift)
  union(){
    explode([-CE,-CE,0], true, show_line=false) 
    xmove(neg_shift) vertical_rail(side="left");

    explode([CE,-CE,0], true, show_line=false) 
    xmove(pos_shift) vertical_rail(side="right");
  }

  // back left and right vertical rails
  ymove(pos_shift)
  zrot(180)
  union(){
    explode([-CE,-CE,0], true, show_line=false) 
     xmove(neg_shift) vertical_rail(side="left");

     explode([CE,-CE,0], true, show_line=false) 
     xmove(pos_shift) vertical_rail(side="right");

  }
}




module frame_front(){
    explode([0,-CE,CE], true, show_line=false) 
    zmove(pos_shift)top_rail();

    explode([0,-CE,-CE], true, show_line=false) 
    zmove(neg_shift)bottom_rail();

    explode([-CE,-CE,0], true, show_line=false) 
    xmove(neg_shift) vertical_rail(side="left");

    explode([CE,-CE,0], true, show_line=false) 
    xmove(pos_shift) vertical_rail(side="right");
}


module frame_back(){
//  mirror([0,1,0]) frame_front();    
   zrot(180){
     explode([0,-CE,CE], true, show_line=false) 
     zmove(pos_shift)top_rail();

     explode([0,-CE,-CE], true, show_line=false) 
     zmove(neg_shift)bottom_rail();

     explode([-CE,-CE,0], true, show_line=false) 
     xmove(neg_shift) vertical_rail(side="left");

     explode([CE,-CE,0], true, show_line=false) 
     xmove(pos_shift) vertical_rail(side="right");
   }
}

module corner_connectors(){
// top connectors
 union(){
   union(){
      corner_connector(TOP);
    }
    mirror([0,1,0])
    union(){
      corner_connector(TOP);
    }
 }

 mirror([1,0,0])
 union(){
   union(){
      corner_connector(TOP);
    }
    mirror([0,1,0])
    union(){
      corner_connector(TOP);
    }
 }


 // bottom connnectors
 union(){
   union(){
      corner_connector(BOT);
    }
    mirror([0,1,0])
    union(){
      corner_connector(BOT);
    }
 }
 mirror([1,0,0])
 union(){
   union(){
      corner_connector(BOT);
    }
    mirror([0,1,0])
    union(){
      corner_connector(BOT);
    }
 }

}

module corner_connector(pos=TOP){

  //color("orange")
  if (pos == TOP){

  explode(d=[-CE, -CE, CE], explode_children =false, offset=[0,0,0], show_line=false)
  {
    zmove(frame_od/2 - inch(1)/2)
    ymove(-frame_od/2 + inch(1)/2)
    xmove(-frame_od/2 + inch(1)/2)
    xrot(-90) zrot(90)


    corner_tube_top_assembly();

    // calls corner_tube_connector.scad
    //corner_tube_connector_top();
    /*
        xmove(-CORNER/2)
        zmove(5*MM) 
        ymove(-5*MM) 
        ymove(CORNER/2) 
        zmove(-CORNER/2) 
        xmove(4.3)
        yrot(-90)
   explode(d=[0,0,30],offset=[0,0,0], explode_children = true, show_line = true) 
   rivet();
   */

}
  }
  else 
  if (pos == BOT){

  explode(d=[CE, -CE, -CE], explode_children =false, offset=[0,0,0], show_line=false)
  {
    zmove(-frame_od/2 + inch(1)/2)
    ymove(-frame_od/2 + inch(1)/2)
    xmove(frame_od/2 - inch(1)/2)
    zrot(180)
    // calls corner_tube_connector.scad
    corner_tube_connector_bottom();
  }
  }



}



module top_rail(){
    l = 149.2;
    rivet_array(rivet_hole_pattern_top, side="top", l=l)
    rivet_array(rivet_hole_pattern_typical, side="front", l=l)
    drill_hole_pattern(rivet_hole_pattern_top, side="top", l=l)
    drill_hole_pattern(rivet_hole_pattern_typical, side="front", l=l)
    square_tube(l=l); 
}

module bottom_rail(){
    l = 149.2;
    rivet_array(rivet_hole_pattern_typical, side="front", l=l)
    drill_hole_pattern(rivet_hole_pattern_typical, side="front", l=l)
    square_tube(l=l); 
}

module vertical_rail(side="right"){
    l = 149.2;
    if(side == "left"){
        hflip()
        yrot(90)
        rivet_array(rivet_hole_pattern_typical, side="top", l=l)
        rivet_array(rivet_hole_pattern_typical, side="front", l=l)
         drill_hole_pattern(rivet_hole_pattern_typical, side="top", l=l)
        drill_hole_pattern(rivet_hole_pattern_typical, side="front", l=l)
        square_tube(l=l); 
    }else{
        yrot(90)
        rivet_array(rivet_hole_pattern_typical, side="top", l=l)
        rivet_array(rivet_hole_pattern_typical, side="front", l=l)
         drill_hole_pattern(rivet_hole_pattern_typical, side="top", l=l)
        drill_hole_pattern(rivet_hole_pattern_typical, side="front", l=l)
        square_tube(l=l); 
 
    }

}