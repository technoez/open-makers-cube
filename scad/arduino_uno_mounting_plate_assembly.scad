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
use <../printed/arduino_uno_mounting_plate.scad>

// vitamins
use <../vitamins/rivet.scad>
include <NopSCADlib/vitamins/screws.scad>

// assemblies
use <back_spin_plate_assembly.scad>
use <din_rail_clip_assembly.scad>



//
//!1. 3D print 1 each Arduino Uno mounting plate. [See Print Settings](#PRINT_SETTINGS)
//!2. Using a threaded insert rivet gun, insert the 4 rivets as indicated.
//!3. Attach Arduino Uno, backspin plate assy, and din rail clip assy together with screws.
//!4. 4 8MM screws secure the Arduino Uno to the mounting plate.
//!5. 2 8MM screw secure the Arduino Uno mounting plate to the spin plate.
//!6. 2 12MM screws secure the spin plate to the din rail clip.
//!7. 1 16MM screw is optional and is used for additional security of the din rail clip to the din rail.
//
module arduino_uno_mounting_plate_portrait_assembly(){
    pose([55, 0, 282.8], [39.7735, -17.2694, 13.0567])
    assembly("arduino_uno_mounting_plate_portrait"){

          backspin_and_din_rail_assy();

         arudino_mounting_plate_and_arduino_assy(4);

    }// assembly
}

//
//!1. 3D print 1 each Arduino Uno mounting plate. [See Print Settings](#PRINT_SETTINGS)
//!2. Using a threaded insert rivet gun, insert the 4 rivets as indicated.
//!3. Attach Arduino Uno, backspin plate assy, and din rail clip assy together with screws.
//!4. 4 8MM screws secure the Arduino Uno to the mounting plate.
//!5. 2 8MM screw secure the Arduino Uno mounting plate to the spin plate.
//!6. 2 12MM screws secure the spin plate to the din rail clip.
//!7. 1 16MM screw is optional and is used for additional security of the din rail clip to the din rail.
//
module arduino_uno_mounting_plate_landscape_assembly(){
    pose([52.9, 0, 283.5], [27.5488, -31.55, 31.75])
    assembly("arduino_uno_mounting_plate_landscape"){

          backspin_and_din_rail_assy();

         arudino_mounting_plate_and_arduino_assy(1);

    }// assembly
}


module backspin_and_din_rail_assy(){
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

module arudino_mounting_plate_and_arduino_assy(orient=1){

      // rotate mounting plate and arduino based on orientation
      // 4 positions 1,2,3,4
      arduino_uno_mounting_plate_orientation(orient)
      {

            // arduino uno mounting plate
            explode(d=[0,-45,0], explode_children=true, show_line=false) 
            {
                xmove(-.5)
                zmove(-1.5)
                xrot(90)
                arduino_uno_mounting_plate();
                arduino_uno_mounting_plate_rivets();
            }


        explode(d=[0,-45,0], explode_children=true, show_line=false) 
        arduino_uno_mounting_plate_8MM_screws();
        
        explode(d=[0,-12,0], explode_children=true, show_line=false) 
        arduino_uno_mounting_plate_12MM_screws();

        explode(d=[0,-3,0], explode_children=true, show_line=false) 
        arduino_uno_mounting_plate_16MM_screw();

        // arduino uno
        explode(d=[0,-70,0], explode_children=true, show_line=false) 
        { 
                xmove(25.5)
                zmove(30.5)
                ymove(-10)
                xrot(90)
                //hidden()
               pcb(ArduinoUno3);
        }

        explode(d=[0,-65,0], explode_children=true, show_line=false) 
        arduino_uno_mounting_screws();

      }


}
 
module arduino_uno_mounting_plate_orientation(orient=1){

  if(orient == 1)
  {
     children(0);  // mounting plate 
     children(3);  // arduino pcb
     children(4);  // arduino pcb screws
     children(5);  
  }else
  if(orient == 2) {

     zmove(-4)
     xmove(65)
     yrot(-90)
     {
       children(0);  // mounting plate
       children(3);  // arduino pcb
       children(4);  // arduino pcb screws
       children(5);  
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
       children(5);  
    }
  }else
  if(orient == 4) {

     zmove(65)
     xmove(4.5)
     yrot(-270)
     {
       children(0);  // mounting plate
       children(3);  // arduino pcb
       children(4);  
       children(5);  
    }
  }


  children(1);  // 8mm mounting plate screws
  children(2);  // 12mm mounting plate screws

  //echo($children);
}

module arduino_uno_mounting_screws(){
  ymove(-6.7)
   {
        ymove(-5) zmove(6.5) xmove(5.2) xrot(90) screw(M3_cap_screw, 8);
        ymove(-5) zmove(6.5 + 48.2) xmove(5.2 + 1.3) xrot(90) screw(M3_cap_screw, 8);
        ymove(-5) zmove(6.5 + 5) xmove(5.2 + 50.8 + 1.3) xrot(90) screw(M3_cap_screw, 8);
        ymove(-5) zmove(6.5 + 5 + 27.9) xmove(5.2 + 50.8 + 1.3) xrot(90) screw(M3_cap_screw, 8);
   }

}

module arduino_uno_mounting_plate_rivets(){

    ymove(-5) zmove(6.5) xmove(5.2) xrot(90) rivet();
    ymove(-5) zmove(6.5 + 48.2) xmove(5.2 + 1.3) xrot(90) rivet(); 
    ymove(-5) zmove(6.5 + 5) xmove(5.2 + 50.8 + 1.3) xrot(90) rivet();
    ymove(-5) zmove(6.5 + 5 + 27.9) xmove(5.2 + 50.8 + 1.3) xrot(90) rivet();
}

module arduino_uno_mounting_plate_8MM_screws(){
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

module arduino_uno_mounting_plate_12MM_screws(){
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

module arduino_uno_mounting_plate_16MM_screw(){
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
  echo($vpr, $vpt);
  $explode=1;
  arduino_uno_mounting_plate_landscape_assembly();
 //arduino_uno_mounting_plate_portrait_assembly();
   //arduino_uno_mounting_plate_assembly(1);
   //arduino_uno_mounting_plate_assembly(2);
   //arduino_uno_mounting_plate_assembly(3);
   //arduino_uno_mounting_plate_assembly(4);
}
 