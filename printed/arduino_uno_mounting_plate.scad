
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


use <../vitamins/rivet.scad>
include <NopSCADlib/lib.scad>   

// ============== Constants ===============

IN = 25.4;
MM = 1;
$fn=30;



body_dim = [71*MM, 64*MM, 2*MM];

font_height = 7*MM;


support_ht  = 7*MM;
support_dia = 8*MM;

support_locs = [
 [5.7*MM,  8.0*MM, 2.0*MM],
 [7.0*MM, 56.2*MM, 2.0*MM],
 [57.8*MM, 41.0*MM, 2.0*MM],
 [57.8*MM, 13.1*MM, 2.0*MM]
];

// spin plate

spin_plate_hole_ctoc_spacing_large = 22*MM;
large_hole_dia = 6*MM;
small_hole_dia = 3.2*MM;



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


// ============== Render ==================

//arduino_uno_mounting_plate_3d_print_ready(NONE);
//arduino_uno_mounting_plate_3d_print_ready(TEVO);
arduino_uno_mounting_plate_3d_print_ready(ENDER3);

// ============= Modules ==================

module arduino_uno_mounting_plate_3d_print_ready(scale_factor=NONE){
  scale(3DPRINTER_SCALE[scale_factor])
  arduino_uno_mounting_plate();

}

module arduino_uno_mounting_plate(){
stl("arduino_uno_mounting_plate");

color("orange")
difference(){

   union(){
        cube(body_dim);
        supports();
        arduino_text();
    }
  rivet_sockets();
  hole_array_assy();

 }
}

module supports(){

    for (i = [0:3]){
        translate(support_locs[i])
            union(){
                difference(){
                    cylinder(d = support_dia, h = support_ht );
                }
        }
    }

}

module rivet_sockets(){
 for (i = [0:3]){
      translate(support_locs[i])
        translate([0,0,6*MM - 2*MM])
        scale(HOLE_SIZE_COEF)
        rivet_plug(ht = 20*MM);
   }
}

module arduino_text(){
    translate([63*MM, 33*MM, 1.5*MM ])
    rotate(-90)
    linear_extrude(height=1.5)
    text("Arduino UNO", size=font_height, halign="center");
}

module hole_array_assy(){

   // vertical
  translate([body_dim[0]/2, body_dim[1]/2, 0])
  hole_array();


   // horiz
   translate([body_dim[0]/2, body_dim[1]/2, 0])
   rotate([0,0,90])
   hole_array();

}

module hole_array(){
  //translate([body_dim[0]/2, body_dim[1]/2, 0])
  union(){
    spin_plate_holes_large();
    //translate([0, spin_plate_hole_ctoc_spacing_large + 8.5*MM, 0])
    spin_plate_holes_small();
  }
}

module spin_plate_holes_small(){

    translate([8*MM, 0, 0])

       scale(HOLE_SIZE_COEF)
        cylinder(d =small_hole_dia, body_dim[2] + 2*MM, center=true);
    
    mirror([1,0,0])
     translate([8*MM, 0, 0])
        scale(HOLE_SIZE_COEF)
        cylinder(d =small_hole_dia, body_dim[2] + 2*MM, center=true);

     translate([0, 8*MM, 0])
        scale(HOLE_SIZE_COEF)
        cylinder(d =small_hole_dia, body_dim[2] + 2*MM, center=true);
    
    mirror([0,1,0])
     translate([0, 8*MM, 0])
        scale(HOLE_SIZE_COEF)
        cylinder(d =small_hole_dia, body_dim[2] + 2*MM, center=true);

}

module spin_plate_holes_large(){

  //translate([body_dim[0]/2, 0, 0])
  rotate(90)
   for ( i = [-1:1]){
     translate([i * spin_plate_hole_ctoc_spacing_large, 0, 0])
        scale(HOLE_SIZE_COEF)
        cylinder(d = large_hole_dia, body_dim[2] + 2*MM, center=true);
   }
}
