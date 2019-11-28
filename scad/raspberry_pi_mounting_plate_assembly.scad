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
//include <NopSCADlib/core.scad>   
include <NopSCADlib/lib.scad>   

// printed
use <../printed/raspberry_pi_mounting_plate.scad>

// vitamins
use <../vitamins/rivet.scad>
include <NopSCADlib/vitamins/screws.scad>

// assemblies
use <back_spin_plate_assembly.scad>
use <din_rail_clip_assembly.scad>



//
//!1. 3D print 1 each raspberry pi mounting plate. [See Print Settings](#PRINT_SETTINGS)
//!2. Using a threaded insert rivet gun, insert the 4 rivets as indicated.
//!3. Attach Raspberry PI, backspin plate assy, and din rail clip assy together with screws.
//!4. 4 8MM screws secure the Raspberry pi to the mounting plate.
//!5. 2 8MM screw secure the raspbery pi mounting plate to the spin plate.
//!6. 2 12MM screws secure the spin plate to the din rail clip.
//!7. 1 16MM screw is optional and is used for additional security of the din rail clip to the din rail.
//
module raspberry_pi_mounting_plate_landscape_assembly(){
    //pose( [65.5, 0, 306.8], [-2.89249, -17.7547, -1.70619])
    //pose([55.7, 0, 284.2], [33.4642, -21.4497, 31.7499])
    pose([59.9, 0, 281.4], [33.5857, -29.0224, 39.6813])
    assembly("raspberry_pi_mounting_plate_landscape"){
        //$explode = 1;

         raspberry_pi_backspin_and_din_rail_assy();

         raspberry_pi_mounting_plate_and_raspberry_pi_assy(1);

    }// assembly


}

//
//!1. 3D print 1 each raspberry pi mounting plate. [See Print Settings](#PRINT_SETTINGS)
//!2. Using a threaded insert rivet gun, insert the 4 rivets as indicated.
//!3. Attach Raspberry PI, backspin plate assy, and din rail clip assy together with screws.
//!4. 4 8MM screws secure the Raspberry pi to the mounting plate.
//!5. 2 8MM screw secure the raspbery pi mounting plate to the spin plate.
//!6. 2 12MM screws secure the spin plate to the din rail clip.
//!7. 1 16MM screw is optional and is used for additional security of the din rail clip to the din rail.
//
module raspberry_pi_mounting_plate_portrait_assembly(){
    //pose( [65.5, 0, 306.8], [-2.89249, -17.7547, -1.70619])
     pose([55.7, 0, 284.2], [33.4642, -21.4497, 31.7499])
    assembly("raspberry_pi_mounting_plate_portrait"){
        //$explode = 1;

         raspberry_pi_backspin_and_din_rail_assy();

         raspberry_pi_mounting_plate_and_raspberry_pi_assy(2);

    }// assembly


}
module raspberry_pi_backspin_and_din_rail_assy(){
        xrot(90){

            // back spin plate assembly
            explode(d=[0,0,10], explode_children=true, show_line=false) 
            {
               ymove(.5)
               xmove(27)
               zrot(90)
               xrot(180)
               back_spin_plate_assembly();
            }


            // din rail clip assembly
            din_rail_clip_assembly();

        }// xrot


}
module raspberry_pi_mounting_plate_and_raspberry_pi_assy(orient=1){
//module arudino_mounting_plate_and_arduino_assy(orient=1){

      // rotate mounting plate and arduino based on orientation
      // 4 positions 1,2,3,4
      raspberry_pi_mounting_plate_orientation(orient)
      {

            // raspberry pi mounting plate
            explode(d=[0,-35,0], explode_children=true, show_line=false) 
            {
                xmove(0)
                zmove(0.15)
                xrot(90)
                color("orange") 
                raspberry_pi_mounting_plate();
                raspberry_pi_mounting_plate_rivets();
            }


        explode(d=[0,-30,0], explode_children=true, show_line=false) 
        raspberry_pi_mounting_plate_8MM_screws();

        explode(d=[0,-10,0], explode_children=true, show_line=false) 
        raspberry_pi_mounting_plate_12MM_screws();

        explode(d=[0,-2,0], explode_children=true, show_line=false) 
        raspberry_pi_mounting_plate_16MM_screw();

        // raspberry pi 
        explode(d=[0,-60,0], explode_children=true, show_line=false) 
        { 
                xmove(44.9)
                zmove(30.5)
                ymove(-10)
                xrot(90)
                pcb(RPI3);
        }
 
        explode(d=[0,-55,0], explode_children=true, show_line=false) 
        raspberry_pi_mounting_screws();

      }


}

module raspberry_pi_mounting_plate_orientation(orient=1){

  if(orient == 1)
  {
     children(0);  // mounting plate 
     children(3);  // arduino pcb
     children(4);  // arduino pcb screws
     children(5);  // arduino pcb screws
  }else
  if(orient == 2) {

     zmove(-4)
     xmove(65)
     yrot(-90)
     {
       children(0);  // mounting plate
       children(3);  // arduino pcb
       children(4);  // arduino pcb screws
       children(5);  // arduino pcb screws
    }
  }else
  if(orient == 3) {

     zmove(62)
     xmove(70)
     yrot(-180)
     {
       children(0);  // mounting plate
       children(3);  // arduino pcb
       children(4);  // arduino pcb screws
       children(5);  // arduino pcb screws
    }
  }else
  if(orient == 4) {

     zmove(65)
     xmove(4.5)
     yrot(-270)
     {
       children(0);  // mounting plate
       children(3);  // arduino pcb
       children(4);  // arduino pcb screws
       children(5);  // arduino pcb screws
    }
  }


  children(1);  // 8mm mounting plate screws
  children(2);  // 12mm mounting plate screws

  //echo($children);
}

module raspberry_pi_mounting_screws(){
   ymove(-6.7)
   {
        ymove(-5) zmove(6) xmove(6) xrot(90)screw(M3_cap_screw, 8);
        ymove(-5) zmove(55) xmove(6) xrot(90)screw(M3_cap_screw, 8);
        ymove(-5) zmove(6) xmove(64) xrot(90)screw(M3_cap_screw, 8);
        ymove(-5) zmove(55) xmove(64) xrot(90)screw(M3_cap_screw, 8);
   }

}

module raspberry_pi_mounting_plate_rivets(){

    ymove(-5) zmove(6) xmove(6) xrot(90) rivet();
    ymove(-5) zmove(55) xmove(6) xrot(90) rivet(); 
    ymove(-5) zmove(6) xmove(64) xrot(90) rivet();
    ymove(-5) zmove(55) xmove(64) xrot(90) rivet();
}

module raspberry_pi_mounting_plate_8MM_screws(){
     // 8MM screws to hold breadboard holder to backspin plate
    xrot(90)
    { 
        zmove(2)
        xmove(35)
        ymove(30.5)
        yspread(16) 
        screw(M3_cap_screw, 8);
    }
} 

module raspberry_pi_mounting_plate_12MM_screws(){
     // 12MM screws secure backspin plate to din rail clip 
     xrot(90)
     {
        zmove(-8)
        xmove(35)
        ymove(30.5)
        yspread(44) 
        screw(M3_cap_screw, 12);
    }
}

module raspberry_pi_mounting_plate_16MM_screw(){
     // 12MM screws secure backspin plate to din rail clip 
     xrot(90)
     {
        zmove(-8)
        xmove(35)
        ymove(30.5)
        //yspread(44) 
        screw(M3_cap_screw, 16);
    }
}

if ($preview){
   //raspberry_pi_mounting_plate_assembly(1);
   echo($vpr, $vpt);
   $explode=1;
   raspberry_pi_mounting_plate_portrait_assembly();
}
 