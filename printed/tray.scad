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

include </dotSCAD/src/rounded_square.scad>;
include <BOSL/constants.scad>
include <BOSL/transforms.scad>
use <BOSL/shapes.scad>

// ============ Constants ===============
IN = 25.4;
MM = 1;
$fn = 30;


body_dim  = [200*MM, 102*MM, 25*MM ];
inner_dim = [body_dim[0] - 60*MM,  body_dim[1] - 6*MM,  body_dim[2] - 25*MM ];


side_notch = ((body_dim[0]/2) - 1*IN/2) + 1*MM ;
// scaling for 3D printers

HOLE_SIZE_COEF = 1.1;

NONE   = 0;
TEVO   = 1;
ENDER3 = 2;

3DPRINTER_SCALE = [
    [1, 1, 1],    // NONE.  no rescaling
    [1, 1, 1], // TEVO
    [1, 1, 1]  // ENDER3
];


// ============ Renders ===============

 //tray_3d_print_ready(NONE);
 //tray_3d_print_ready(TEVO);
 //tray_3d_print_ready(ENDER3);

//debug_frame_blocks();


// ============ Modules ===============

module tray_3d_print_ready(scale_factor=NONE){
  scale(3DPRINTER_SCALE[scale_factor])
    tray();
}

module tray(show_text = true){
        difference(){
            main_body();

            notch_out();
            mirror([1,0,0]) notch_out();

            screw_slot();
            mirror([1,0,0]) screw_slot();
        }
        inner_fillet();
        mirror([1,0,0]) inner_fillet();

      if (show_text == true)
        technoez_text();
}

module screw_slot(){
   translate([ (body_dim[0]/2) - ((1*IN/2)*1 ), 0 , body_dim[2]/2 ])
   slot(l=5, r1=2, r2=2, h=5);   
}

module main_body(){
  difference(){
      cube(body_dim, center=true);
          inner_tray();
  }
}
module notch_out(){
    translate([ side_notch, 0 , -2*MM])
      cube([1*IN + 4*MM , body_dim[1] + 1*MM, body_dim[2]], center=true);
}

module inner_fillet(){
translate([ side_notch - 15*MM, 0 , (body_dim[2]/2) - 2*MM ])
  interior_fillet(l=body_dim[1], r=3, orient=ORIENT_Y_180);
}

module inner_tray(){
    translate([0,0, - (body_dim[2])/2 + 3*MM])
        linear_extrude(50)
            rounded_square(
                size = inner_dim ,
                corner_r = 5, 
                center = true
            );
}

module technoez_text(){
    //translate([62*MM, 30*MM, 1.5*MM ])
    xmove(21*MM) zmove(-.5*MM) translate([-body_dim[0]/2, 0, (body_dim[2]/2) ])
    rotate(-90)
    #linear_extrude(height=1.5)
      text("www.technoez.com", size=7*MM, halign="center");
}

module debug_frame_blocks(){
    translate([((body_dim[0]/2) - 1*IN/2)  , 0 , 0])
    #cube([1*IN  , body_dim[1] + 1*MM, body_dim[2]], center=true);

    mirror([1,0,0]) translate([((body_dim[0]/2) - 1*IN/2)  , 0 , 0])
    #cube([1*IN  , body_dim[1] + 1*MM, body_dim[2]], center=true);
}

if ($preview == true){
   tray(false);
}