
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


include <NopSCADlib/lib.scad>   

// ============ Constants ===============
IN = 25.4;
MM = 1;
$fn = 30;

LARGE_HOLE_DIA = 6*MM;
RIVET_HOLE_DIA = 5*MM;



// center to center
LARGE_HOLE_CC = 22*MM;



body_dim = [60*MM, 16*MM, 2*MM];
post_dia = 8*MM;
post_ht  = 6*MM;
post_inner_dia = 3.4*MM;


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


//back_spin_plate_3d_print_ready(NONE);
//back_spin_plate_3d_print_ready(TEVO);
//back_spin_plate_3d_print_ready(ENDER3);

//back_spin_plate(countersink=true);



//back_spin_plate();
// ============ Modules ===============

module back_spin_plate_3d_print_ready(scale_factor = NONE){
    scale(3DPRINTER_SCALE[scale_factor])
    back_spin_plate(rivet_holes=true);

}

module back_spin_plate(rivet_holes=true, post_height=post_ht, countersink=true){
  stl("back_spin_plate");

  difference(){

    cube(body_dim);
    large_holes(countersink=countersink);
    if (rivet_holes)
     rivet_holes();
  }

  difference(){
   posts(post_height=post_height);
   large_holes(countersink=countersink);
  }




}

module back_spin_plate_helping_hands(rivet_holes=true, post_height=post_ht, countersink=true){
  //stl("back_spin_plate");

  difference(){

    cube(body_dim);
    large_holes(countersink=countersink);
    if (rivet_holes)
     rivet_holes();
  }

  difference(){
   posts(post_height=post_height);
   large_holes(countersink=countersink);
  }




}
module rivet_holes(){
    translate([(body_dim[0]/2) - 8*MM, body_dim[1]/2, -2])
       scale(HOLE_SIZE_COEF)
       cylinder(d=RIVET_HOLE_DIA, h=5*MM);

    translate([(body_dim[0]/2) + 8*MM, body_dim[1]/2, -2])
       scale(HOLE_SIZE_COEF)
       cylinder(d=RIVET_HOLE_DIA, h=5*MM);


}

module posts(post_height = post_ht){
    translate([body_dim[0]/2, body_dim[1]/2, 0])
    for (i = [-1:1]){
        
        // skip center post
        if (i != 0){

            difference(){

                union(){
                    translate([i*LARGE_HOLE_CC, 0, 2])
                    scale(HOLE_SIZE_COEF)
                        //cylinder(d=post_dia, h=post_ht);
                        cylinder(d=post_dia, h=post_height);
                }
                union(){
                    translate([i*LARGE_HOLE_CC, 0, 0])
                    scale(HOLE_SIZE_COEF)
                        cylinder(d=post_inner_dia, h=20*MM);
                }
            }// difference
        }// for i
    }

}


module large_holes(countersink=true){

    translate([body_dim[0]/2, body_dim[1]/2, 0])
    for (i = [-1:1]){


      // always make center hole
      if (i== 0){
       translate([i*LARGE_HOLE_CC, 0, -1])
        scale(HOLE_SIZE_COEF)
        cylinder(d=LARGE_HOLE_DIA, h=4*MM);
      }

      // outer holes are optional base on arg countersink
      if ((i == -1) && (countersink == true)){
       translate([i*LARGE_HOLE_CC, 0, -1])
        scale(HOLE_SIZE_COEF)
        cylinder(d=LARGE_HOLE_DIA, h=4*MM);
      }

      if ((i == 1) && (countersink == true)){
       translate([i*LARGE_HOLE_CC, 0, -1])
        scale(HOLE_SIZE_COEF)
        cylinder(d=LARGE_HOLE_DIA, h=4*MM);
      }
    }

}