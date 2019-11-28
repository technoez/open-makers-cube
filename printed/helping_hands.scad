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


// BOSL Library 
include <bosl/constants.scad>
use <bosl/shapes.scad>
use <bosl/transforms.scad>
use <BOSL/wiring.scad>


// makers cube files
use<back_spin_plate.scad>
use<din_rail_clip.scad>
use<../vitamins/rivet.scad>
use <../vitamins/alligator_clip.scad>
use <../printed/armature_union.scad>


// https://github.com/nophead/NopSCADlib
// referenced from the OPENSCADPATH env variable
include <NopSCADlib/core.scad>  
include <NopSCADlib/vitamins/screws.scad>
include </dotSCAD/src/rounded_square.scad>;


 
// ============ Constants ===============
IN = 25.4;
MM = 1;
$fn = 30;


head_dim  = [17*MM, 36*MM, 11*MM ];

/*
 head  - top part holds armature wires
 bsp   - back spin plate arm. union in a back_spin_plate
*/

// armatrue
arm_hole_dia    = 3*MM;
arm_hole_c_to_c = 26*MM;

arm_clamp_hole_dia = 2.5*MM; // M3 screw to hole arm wire in place

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

echo($vpr, $vpt);
// ============ Renders ===============

//helping_hands_mount_3d_print_ready(NONE);
//helping_hands_mount_3d_print_ready(TEVO);
//helping_hands_mount_3d_print_ready(ENDER3);

// entire assembly 
//$explode = 1;
helping_hands_assy();


// ============ Modules ===============

module helping_hands_mount_3d_print_ready(scale_factor=NONE){
    scale(3DPRINTER_SCALE[scale_factor])
      helping_hands_mount();
}

module helping_hands_mount(){
 //vitamin(" : helping hands mount");
 color(pp1_colour) stl("helping_hands_mount");// generates stl 

  color("orange")
  union(){

    difference(){
      cube(head_dim, center=true);
      arm_holes();
      clamp_holes();
      head_notch();
      head_center_hole();
    }

    difference(){
      tail();
      head_center_hole();
      xmove(22*MM * 2) head_center_hole();
    }
  }



}

module head_notch(){
  zmove(6.5*MM)
   cube([head_dim[0] + 2*MM, 16*MM, 8*MM], center=true);
}
 
module tail(){
translate([-8*MM, -8*MM, -head_dim[2]/2])
   back_spin_plate_helping_hands(rivet_holes = false, countersink=false, post_height=5.4*MM);
}

module head_center_hole(){
  zcyl(d=3.8*MM, h=head_dim[2] + 2*MM);
}

// using BSOL library
module arm_holes(){
  yspread(arm_hole_c_to_c, n=2) 
  scale(HOLE_SIZE_COEF)
  xcyl(l=head_dim[0] + 1*MM, d=arm_hole_dia); 
}

// using BSOL library
module clamp_holes(){
  yspread(arm_hole_c_to_c, n=2) zmove(-head_dim[2]/2 + 2.5*MM) 
  scale(HOLE_SIZE_COEF)
  zcyl(l=(head_dim[2])/2 + 1*MM, d=arm_clamp_hole_dia); 
}

module armature_wire(){
     vitamin("armature_wire() : 3MM Armature wire - 5 inches long");
    // 3mm armature wire
    union(){
        zrot(90)
        color("white") wiring([
            [0,-30,30], [0,-30,50], [0,0,50], [0,0,10]
            ], 
        fillet=10, wires=1, wirediam=3);
    }

}

module armature_arm(){
       union(){

            // stl for 'printed' parts
            color(pp1_colour) stl("armature_union");// generates stl 
            //color(pp1_colour) armature_union_stl();
            color("orange") armature_union(); 
            //%armature_union(); 

 
            // 2 securing screws
            xmove(10)
            union(){
                zmove(13)
                xmove(-20) zrot(-90) xrot(90)
                screw(M3_cap_screw, 8);

                xmove(-20) zrot(-90) xrot(90)
                screw(M3_cap_screw, 8);
            }



           //$explode=1;
            explode(d=20, offset=[0,0,10])
            armature_wire();

            color("silver") 
            explode(d=[0,0,-30])
            alligator_clip();

       }

}

module screw_assy(){
  // screws
  color("silver")

  xrot(180)
  zmove(10)
  union(){
    // 8MM hold armature wire to mounting plate
    zmove(-8)
    yspread(arm_hole_c_to_c) screw(M3_cap_screw, 8);

    // 12MM hold mounting plate to din rail clip 
    zmove(-12)
    xmove(22)
    xspread(22*2) screw(M3_cap_screw, 12);


    // 16MM secure din rail clip to din rail
    //zmove(-64)
    zmove(-18)
    xmove(22)
    screw(M3_cap_screw, 16);


  }

}

module helping_hands_assy(){
    xmove(23)
    zmove(30)
    yrot(90)
    screw_assy();
    zmove(30)
    xmove(30)
    xrot(180)
    yrot(90)
    zrot(180)
    helping_hands_mount();

    yspread(26) armature_arm();
    
    zmove(43)
    ymove(4.5)
    xmove(33)
    yrot(90)
    xrot(90)
    din_rail_clip(true);

}
