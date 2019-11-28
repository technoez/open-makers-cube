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
use <CONTRIBS/arc_and_sector.scad>


// ================== Constants =====================
IN = 25.4;
MM = 1;


/* ================== Paramaters ==================== */

frame_thk = 1*IN;

// base
base_x = 45*MM;
base_y = 45*MM;
base_z = 5*MM;

base_dim = [base_x, base_y, base_z];

base_hole_dia = 4*MM;

// base holes
// x/y center locations, ref x/y origin 0,0
base_holes_locs = [
    [5*MM, 5*MM],
    [frame_thk/2, 40*MM],
    [40*MM, frame_thk/2]
];

// diameters and heights
base_hole_sizes = [base_hole_dia, base_z]; // for M3

// rivet nut clearance
// rivets stand proud, so create a recess
rivet_recess_dia   = 8.5*MM;
rivet_recess_depth = 1.5*MM;

// socket
skt_id_dia = 23.5*MM;
skt_od_dia = 31*MM;
skt_ht     = 15*MM;


// socket position on base
skt_pos_x = 20*MM;
skt_pos_y = 20*MM;

// thumbscrew
thumb_screw_hole_dia = 2.5*MM;  // Run M3 Tap
$fn=80;



// scaling for 3D printers
NONE   = 0;
TEVO   = 1;
ENDER3 = 2;

3DPRINTER_SCALE = [
    [1, 1, 1],    // NONE.  no rescaling
    [1, .984, 1], // TEVO
    [1, .984, 1]  // ENDER3
];


// =================   Renders   =================== */
corner_socket_base_assy();

//corner_socket_base_assy_3d_print_ready(scale_factor=NONE);
//corner_socket_base_assy_3d_print_ready(scale_factor=TEVO);
//corner_socket_base_assy_3d_print_ready(scale_factor=ENDER3);


// =================   Modules   =================== */

module corner_socket_base_assy_3d_print_ready(scale_factor = NONE){
  scale(3DPRINTER_SCALE[scale_factor])
    corner_socket_base_assy();
}


module corner_socket_base_assy(){

  //color("orange", 1.0)
    union(){
        difference(){
            base();
            base_holes();
        }  

        socket();
    }
}

module socket(){

  difference(){

    union(){

        translate([skt_pos_x,skt_pos_y, base_z])


        difference(){

            difference(){

                // large outer cylinder
                cylinder(d=skt_od_dia, h=skt_ht);

                // small inner cylinder
                // add the .3 to avoid same plane render artifact
                translate([0,0,-.1])
                 cylinder(d=skt_id_dia, h=skt_ht+.3);
            }           

            union(){
                // recessed ring
                translate([0,0,-.01])
                linear_extrude(2*MM) 
                 arc(radius= (skt_id_dia/2) - 1*MM/2, angles=[0,360], width=2*MM + 1*MM , fn=80);

                // vertical locking tab channel
                linear_extrude(skt_ht + .01) 
                arc(radius=(skt_id_dia/2) - 1*MM, angles=[212,235], width=2.5*MM + 1*MM, fn=80 );
            } 

        }
           notch_indicator(); 

    }

    // M3 thumbscrew hole
    union(){
        // make a hole in the side for a M3 Thumbscrew for better security
        pathRadius = (skt_id_dia)/2 + (((skt_od_dia - skt_id_dia)/2)/2);
        translate([skt_pos_x +5, skt_pos_y+5 , base_z])
        translate([pathRadius*cos(45), pathRadius*sin(45), skt_ht/2]) 
        rotate([90,0,-45])
        cylinder(d = thumb_screw_hole_dia, h=(skt_od_dia - skt_id_dia)/2 + 10);
    }


  }

}

module notch_indicator(){
    pathRadius = (skt_id_dia) + (((skt_od_dia - skt_id_dia)/2));
    translate([skt_pos_x +8, skt_pos_y+8 , base_z])
    translate([-pathRadius*cos(45), -pathRadius*sin(45), skt_ht/2]) 
    rotate([0,0,-45])
    cube([2*MM, 2*MM, 4*MM], center=true);
}



module base(){
    radius = 3;
    linear_extrude(height=base_z)
    
    // add outer radius to round corners
    offset(r=radius, $fn=30)
    // shrink 1st before applying a radius, to keep same dimensions
    offset(delta=-radius)
    polygon(points=[[0,0],[0,base_y],[frame_thk, base_y],[base_x, frame_thk],[base_x,0]]);
}

module base_holes(){

  // main thru holes
  for (i =[0:2]){
      translate([base_holes_locs[i][0], base_holes_locs[i][1], .01*MM])
       cylinder(d=base_hole_sizes[0],h=base_hole_sizes[1], $fn=30 );
    }

   // rivet nut recess on the bottomside
  for (i =[0:2]){
      translate([base_holes_locs[i][0], base_holes_locs[i][1], -.01*MM])
       cylinder(d=rivet_recess_dia, h=rivet_recess_depth, $fn=30 );
    }



 
}


