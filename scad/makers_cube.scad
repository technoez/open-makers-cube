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




//!
//!![Picture](./assemblies/main_assembled.png) <br>
//!**Open Maker's Cube** is an open source project developed for making electronics project design and testing more fun and convenient. Due to its versatile design, the Maker's Cube can be used for other hobbies and applications.
//!
//!The itch needing scratching is the ratsnest of wires and cables generated when building electronics bread board circuits. I frequently use Raspberry Pis and other microcontrollers/SBCs.  With these devices comes the need for power strips which quickly leads to a maze of entangled power cords.
//! 
//!Portability of any electronics project can be an issue.  If a project is built on the kitchen table for example, relocating requires a lot of disconnecting and re-routing.  Inevetibly wires came loose from the breadboards, resulting in needless troubleshooting.
//!
//!Ergonomically, bending over and wiring breadboard circuits for hours is hard on the back and neck.  Adequate Lighting can also be a concern.
//!
//!The Maker's cube is lightweight. Around 3.5 lbs base unit only and is less than 7 lbs fully loaded with hardware(Rpi's/Arduinos, electronic components, plugin power supplies).
//!
//!The dimensions are 200mm (8in.) x 200mm (8in.) x 200mm (8in.).  This size is perfect for any desk or table.  Not taking up any more space than a typical laptop.
//!
//!The frame is made out of lightweight 1 in. square aluminum tubing. In early designs, 80/20 was used, but added almost 2x the weight.
//!
//!M3 Threaded aluminum inserts are inserted into the aluminum frame to hold the components securely. The threaded inserts do require a rivet insertion tool. There are a lot of rivets, so inserting rivets into the frame is the most time consuming process. 
//!
//!All plastic parts (orange) are printed with PETG. I went with PETG to hopefully withstand the heat better. Especially in the summer months. Obviously, print in any material to fit your needs.
//!
//!There are mounting plates to support Raspberry PIs and Arduino UNOs in both landscape and portrait orientations.  Due to the flexibility of the DIN Rail clips, you can design any mounting plate for any device which can easily be attached to the DIN rail clips using two 2 - 3mm securing screws.
//!
//!There is a mounting plate which holds a standard 400 pt solderless breadboard in both landscape and portrait orientations.
//!
//!Mounted in the center of the Maker's cube is a 6 outlet power strip with 4 - 2.4A USB ports. This allows for mulitple electrical plugins inside the cube keeping the corded 'ratsnest' inside the body of the cube.  The power strip has an extra long 9.8 ft cord.
//!
//!By design, only M3 screws are used.  This requires only a simple 2.5mm allen key, which I leave inside the tray.  The DIN rail mounting clips can normally be removed by hand.  However, if there are a lot of mounted components, the only other tool needed is a small flat tipped screwdriver to unlock the clips.
//!
//!I use 6 inch plastic wire ties to keep the cables/wires organized inside the Maker's cube body.
//!
//!There is a removable stand (prop) which is used to tilt the cube back at a 30 deg angle which allows the user to work at a comfortable eye level.
//!
//!The detachable LED magnifier lamp is extremely handy.  It is super bright and having a magnifier lens makes it extremely easy to see the intricate details.
//!
//!As an after thought, I designed a crude helping hands assembly.  It uses 3mm aluminum armature wire and conventional alligator clips.  This is helpful if you need to solder or hold components.  Yes, the wire will eventually break with excessive bending back-and-forth, but the wire is cheap and can be easily replaced. 
//!
//!I use 3M's 'Dual Lock' fastener tape to secure the power supply to the inside bottom frame of the cube.  The allows the power supply to be easily removed if need be.  Also, the front 'prop' stand which tilts the cube at an angle, uses small sections of this tape to secure itself inside the cube's inner frame for transport.
//!
//!To be extremely modular and flexible I designed the DIN Rail clips to be generic by nature. There two 3mm threaded inserts for mounting external components. The idea is you can design and mount anything you'd like to the clip.  
//!
//!I began the CAD design work in Sketchup. However, since I wanted to release as a open source project, I migrated the CAD design over to [OpenScad](http://openscad.org).  I relied heavlily on these wonderful open source projects:  
//!1. [NopSCADlib](https://github.com/nophead/NopSCADlib/blob/master/readme.md) - nophead, thanks so much for contributing this library! Absolutely amazing and a huge time saver for generating this beautiful documentation.
//!2. [BOSL](https://github.com/revarbat/BOSL/wiki) 
//!3. [Dimlines - A dimensioning library](http://www.cannymachines.com/entries/9/openscad_dimensioned_drawings)
//!4. [objectarrays](https://github.com/mathcodeprint/openscad-fiddlybits/blob/master/objectarrays.scad)
//!5. [MCAD](https://github.com/openscad/MCAD)
//!6. [Obiscad](https://github.com/Obijuan/obiscad)
//!7. [Textgenerator](https://www.thingiverse.com/thing:59817)
//!8. [Shimonbox](https://github.com/ubitux/shimonbox)
//!9. [Openscad-threads](http://dkprojects.net/openscad-threads/)
//!10. [Chamfersfor OpenScad](https://github.com/SebiTimeWaster/Chamfers-for-OpenSCAD)
//!11. [BOLTS](https://www.bolts-library.org/en/index.html)
//!12. [Din Rail Inspiration](https://www.thingiverse.com/thing:101024) RobertHunt Thingiverse
//!
//!Thank you to the authors of these libraries. I may not have used all them directly in this project, but have gained inspiration from all. 
//!I may have used other libraries which I have not given credit. If so, please contact me and I'll update the list. 
//!I'm relatively new to OpenScad programming, so my code is not perfect and not always fully parameterized.
//!
//!In summary, Maker's Cube goal is to address the following concerns:
//! 1. **Portability**
//!    Contain the electronics project in one location and easy to transport. A fully loaded cube weighs less than 6 lbs.
//! 2. **Less back strain** 
//!    You can comfortably work on your projects in a seated position, eliminating the need to bend over a table/desk for hours.
//! 3. **Less eye strain**
//!    There is a flexible super bright LED lamp mounted to the cube with a 1.5X magnifier glass.
//! 4. **Modularity**
//!    Due to the Clip-on DIN Rail system, components can be easily re-positioned/removed from the cube.
//! 5. **Project tidyness**
//!    A 6 outlet power strip with 4 - 2.4A USB ports is located inside the base of the cube. 
//!    This allows for mulitple electrical plugins inside the cube keeping the corded 'ratsnest' inside the body of the cube.
//!
//!### Tools Required For Build:
//!1. 3D Printer
//!2. [Threaded Insert Rivet Gun w/3mm mandrel](https://www.amazon.com/gp/product/B06XVB3MMG/ref=ppx_yo_dt_b_search_asin_title?ie=UTF8&psc=1)
//!3. 2.5mm Allen Key
//!4. Saw to Cut 1 in. aluminum tubing.  Chopsaw, hacksaw, other.
//!5. Knife or razor blades
//!6. 5mm drill bit to drill holes for 3mm threaded inserts
//!7. Drill    
//!8. 3mm x .5mm hole tap.  To tap 3mm holes in 3D printed plastic.
//!
//!### Parts List and Qty Per Build:
//!- [See Table Of Contents](readme.md#table-of-contents)
//!
//!### Vendor List of Parts (aka vitamins):
//!- [M3 Threaded Rivet Inserts (bag 100pcs)](https://www.amazon.com/gp/product/B07HKK364C/ref=ppx_yo_dt_b_search_asin_title?ie=UTF8&psc=1)
//!- [Velcro - 3M Dual Lock 1in wide 6FT Long](https://www.amazon.com/gp/product/B07D2LYFM2/ref=ppx_yo_dt_b_search_asin_title?ie=UTF8&psc=1)
//!- [PETG Filament - Orange 1Kg (1080 FT long)](https://www.amazon.com/gp/product/B014VM9ALM/ref=ppx_yo_dt_b_asin_title_o00_s00?ie=UTF8&psc=1)
//!- [6 Outlet power strip (SuperDanny)](https://www.amazon.com/gp/product/B077ZSC6RQ/ref=ppx_yo_dt_b_search_asin_title?ie=UTF8&psc=1)
//!- [Breadboard - Half Size (pack 6 ea)](https://www.amazon.com/gp/product/B01NARN7SM/ref=ppx_yo_dt_b_search_asin_title?ie=UTF8&psc=1)
//!- [Rubber Bumpers (pack of 20 ea)](https://www.amazon.com/gp/product/B01G5WX4M2/ref=ppx_yo_dt_b_search_asin_title?ie=UTF8&psc=1)
//!- [Screws - M3 x 5 (pack of 100)](https://www.boltdepot.com/Product-Details.aspx?product=6377)
//!- [Screws - M3 x 8](https://www.boltdepot.com/Product-Details.aspx?product=6379)
//!- [Screws - M3 x 12](https://www.boltdepot.com/Product-Details.aspx?product=6381)
//!- [Screws - M3 x 16](https://www.boltdepot.com/Product-Details.aspx?product=6382)
//!- [Washers - M3](https://www.boltdepot.com/Product-Details.aspx?product=4513)
//!- [Magnifier Lamp](https://www.amazon.com/gp/product/B019R1BN3U/ref=ppx_yo_dt_b_search_asin_title?ie=UTF8&psc=1)
//!- [Armature Wire 3MM (32.8 ft copper/alum)](https://www.amazon.com/gp/product/B07CQL7Y5B/ref=ppx_yo_dt_b_search_asin_title?ie=UTF8&psc=1)
//!- [Tygon Tubing 50FT 1/8" OD (cover alligator clips)](https://www.zoro.com/tygon-tubing-clear-18-in-inside-dia-50-ft-acf00006/i/G4124294/)
//!- [Alligator Clips (Package of 50)](https://www.amazon.com/gp/product/B01D9BO4OO/ref=ppx_yo_dt_b_search_asin_title?ie=UTF8&psc=1)
//!- [Plastic Ties Blk 6 in (pk 250)](https://www.amazon.com/gp/product/B0718T3FMF/ref=ppx_yo_dt_b_search_asin_title?ie=UTF8&psc=1)
//!- [2.5MM Allen Wrench (pk 100)](https://www.amazon.com/gp/product/B005SE78Z8/ref=ppx_yo_dt_b_search_asin_title?ie=UTF8&psc=1)
//!- [Din Rails 200MM (20 Pak)](https://www.amazon.com/gp/product/B07HMW318D/ref=ppx_yo_dt_b_asin_title_o08_s00?ie=UTF8&psc=1)
//!
//!
//!<a name="PICS_GALLERY"></a>
//!### Picture Gallery 
//!- ![](./docs/messy_1.jpg)
//!- ![](./docs/makers_cube_table1.jpg)
//!- ![](./docs/makers_cube_table2.jpg)
//!- ![](./docs/makers_cube_table3.jpg)
//!- ![](./docs/makers_cube_table4.jpg)
//!- ![](./docs/makers_cube_table5.jpg)
//!- ![](./docs/makers_cube_table6.jpg)
//!
//!### 3D Printing
//!All of the STL models for this project are located in the /stls subdirectory.
//!
//!Getting these prints correct was a highly iterative process.  Accuracy is the key to getting these components to fit properly.
//!Make sure your printer is calibrated and X/Y print scaling is correct.
//!<a name="PRINT_SETTINGS"></a>
//!### 3D Print Settings
//! <table>
//! <tr><th>STL</th><th>Resolution</th><th>Infill %</th><th>Supports</th><th>Comments</th></tr>
//! <tr><td>arduino_uno_mounting_plate.stl</td><td align="center">.3</td><td align="center">20</td><td align="center">NO</td><td>STL file located in <b>/stls</b> directory</td></tr>
//! <tr><td>armature_union.stl</td><td align="center">.3</td><td align="center">100</td><td align="center">NO</td><td>STL file located in <b>/stls</b> directory</td></tr>
//! <tr><td>back_spin_plate.stl</td><td align="center">.3</td><td align="center">20</td><td align="center">NO</td><td>STL file located in <b>/stls</b> directory</td></tr>
//! <tr><td>carry_handle.stl</td><td align="center">.3</td><td align="center">20</td><td align="center">NO</td><td>STL file located in <b>/stls</b> directory</td></tr>
//! <tr><td>corner_tube_connector_bottom.stl</td><td align="center">.3</td><td align="center">20</td><td align="center"><b>YES</b></td><td>STL file located in <b>/stls</b> directory</td></tr>
//! <tr><td>corner_tube_connector_bottom_v2.stl</td><td align="center">.3</td><td align="center">20</td><td align="center">NO</td><td>Alternate print orientation not requiring supports and stronger. STL file located in <b>/docs</b> directory</td></tr>
//! <tr><td>corner_tube_connector_top.stl</td><td align="center">.3</td><td align="center">20</td><td align="center"><b>YES</b></td><td>STL file located in <b>/stls</b> directory</td></tr>
//! <tr><td>corner_tube_connector_top_v2.stl</td><td align="center">.3</td><td align="center">20</td><td align="center">NO</td><td>Alternate print orientation not requiring supports and stronger. STL file located in <b>/docs</b> directory</td></tr>
//! <tr><td>din_rail_clip.stl</td><td align="center">.3</td><td align="center">100</td><td align="center">NO</td><td>STL file located in <b>/stls</b> directory</td></tr>
//! <tr><td>helping_hands_mount.stl</td><td align="center">.3</td><td align="center">20</td><td align="center">NO</td><td>STL file located in <b>/stls</b> directory</td></tr>
//! <tr><td>prop.stl</td><td align="center">.3</td><td align="center">20</td><td align="center">NO</td><td>STL file located in <b>/stls</b> directory</td></tr>
//! <tr><td>raspberry_pi_mounting_plate.stl</td><td align="center">.3</td><td align="center">20</td><td align="center">NO</td><td>STL file located in <b>/stls</b> directory</td></tr>
//! <tr><td>small_breadboard_holder.stl</td><td align="center">.3</td><td align="center">20</td><td align="center">NO</td><td>STL file located in <b>/stls</b> directory</td></tr>
//! </table>
//!
include <BOSL/constants.scad>
include <BOSL/transforms.scad>
use <BOSL/shapes.scad>
  
include <NopSCADlib/lib.scad>   

// 3D printed parts
use <../printed/armature_union.scad>
use <../printed/helping_hands.scad>
use <../printed/din_rail_clip.scad>
use <../printed/corner_tube_connector.scad>
use <../printed/carry_handle.scad>
use <../printed/small_breadboard_holder.scad>
use <../printed/prop.scad>
use <../printed/back_spin_plate.scad>
use <../printed/arduino_uno_mounting_plate.scad>
use <../printed/raspberry_pi_mounting_plate.scad>

// vitamins (non-printed parts)
use <../vitamins/square_tube.scad>
use <../vitamins/din_rail.scad>
use <../vitamins/lamp.scad>
use <../vitamins/dual_lock.scad>
use <../vitamins/rubber_foot.scad>
 
// individual assembly files for cleaner separation
use <helping_hands_assembly.scad>
use <frame_assembly.scad>
use <din_rail_assembly.scad>
use <handle_assembly.scad>
use <small_breadboard_assembly.scad>
use <arduino_uno_mounting_plate_assembly.scad>
use <raspberry_pi_mounting_plate_assembly.scad>
use <corner_lamp_holder_assembly.scad>
use <tray_assembly.scad>
use <prop_assembly.scad>
use <power_strip_assembly.scad>
use <corner_tube_top_assembly.scad>

 
 // need declaration to make printed STLs
module armature_union_stl() armature_union();
module din_rail_clip_stl() din_rail_clip();
module helping_hands_mount_stl() helping_hands_mount();
module corner_tube_connector_top_stl() corner_tube_connector_top();
module corner_tube_connector_bottom_stl() corner_tube_connector_bottom();
module carry_handle_stl() carry_handle();
module small_breadboard_holder_stl() small_breadboard_holder();
module arduino_uno_mounting_plate_stl()  arduino_uno_mounting_plate(); 
module raspberry_pi_mounting_plate_stl()  raspberry_pi_mounting_plate(); 
module back_spin_plate_stl()  back_spin_plate(); 
module prop_stl()  prop(); 






echo($vpr, $vpt);
PROP_BACK = true; // prop in use



//!1. Cut 2 each 149mm sections of dual lock velcro.
//!2. Remove dual lock backing and stick to the front and back inner bottom frame assembly. The power supply will stick to these velcro strips. 
//!3. Attach 4 each rubber feet to the bottom 4 corners of the cube.
//!4. Cut 2 each 6mm sections of dual lock velcro.
//!5. Attach these small strips of velcro to the left inner frame where the prop will go when it is stored inside the cube. 
//!6. Insert LED magnifying lamp into one of the 4 corner posts.
//!7. Attach all other assemblies as indicated.
module main_assembly(){
     //$explode = 1;
     pose( [65.5, 0, 306.8], [-2.89249, -17.7547, -1.70619])

     assembly("main") {

  if (PROP_BACK == true){
     xrot(-14)
     makers_cube_assy();
     explode(d=[0,0,-50],explode_children = true, show_line= false) 
    makers_cube_prop_front();
  }else{
     makers_cube_assy();
     makers_cube_prop_parked();
  }

   }
}
 
module makers_cube_prop_front(){
      zmove(-100)
      ymove(-109)
      zrot(180)
      prop_assembly();
}

module makers_cube_prop_parked(){
      zmove(-40)
      xmove(-58.2)
      zrot(270)
      prop_assembly();
}


module makers_cube_assy(){
   { 

      explode(d=[-100,0, 0], show_line= false) 
      helping_hands_assembly();

      // main frame assembly
      frame_assembly();

      //corner_tube_top_assembly();

      din_rail_assembly();
 
      explode(d=[0,0, 100],explode_children = true, show_line= false) 
      carry_handle_assembly();


      // front side breadboard
      explode(d=[0,-80,0],explode_children = true, show_line= false) 
      xmove(-80) 
      zmove(12)
      ymove(-131)
      small_breadboard_landscape_assembly();

      
      // right side breadboard
      explode(d=[90,0,0],explode_children = true, show_line= false) 
      xmove(130)  
      zmove(-54)
      ymove(11) 
      zrot(90)
      small_breadboard_portrait_assembly();


      // front side arduino portrait
      explode(d=[0,-90,0],explode_children = true, show_line= false) 
      xmove(30) 
      zmove(12)
      ymove(-131)
      arduino_uno_mounting_plate_portrait_assembly();
 

      // right side raspberry pi portrait
      explode(d=[90,0,0],explode_children = true, show_line= false) 
      xmove(130) 
      zmove(-54)
      ymove(-100)
      zrot(90)
      raspberry_pi_mounting_plate_portrait_assembly();

   
      explode(d=[0,0,50],explode_children = true, show_line= false)
      {

         xmove(55)
         ymove(-100)
         zmove(100)
         corner_lamp_holder_assembly(2);

         xmove(55)
         ymove(100-45)
         zmove(100)
         corner_lamp_holder_assembly(3);

         xmove(-100)
         ymove(-100)
         zmove(100)
         corner_lamp_holder_assembly(1);

         xmove(-100)
         ymove(100 -45)
         zmove(100)
         corner_lamp_holder_assembly(4);
      } 
      

      explode(d=[0,0,50],explode_children = true, show_line= false)
      zmove(100-10)
      zrot(90)
      tray_assembly(false);


      explode(d=[0,200,30],explode_children = true, show_line= false)
      xmove(17)
      zmove(-53.5)
      zrot(90)
      power_strip_assembly();


     // dual lock velcro attached to frame to hold super_danny p/s
      mirror([0,1,0])
      ymove(-87)
      zmove(-73)
      dual_lock(149, [0,0,10]);

      ymove(-87)
      zmove(-73)
      dual_lock(149, [0,0,10]);


      // dual lock attached to frame to hold prop
      mirror([0,1,0])
      ymove(-87.5)
      zmove(-24)
      xmove(-73)
      yrot(90) 
      dual_lock(6, [0,0,10] );

      ymove(-87.5)
      zmove(-24)
      xmove(-73)
      yrot(90) 
      dual_lock(6, [0,0,10]);

      // lamp assy
      explode(d=[0,0,100],explode_children = true, show_line= false)
      ymove(-140)
      xmove(-80)
      zmove(220)
      zrot(180)
      lamp_assy();

     // rubber foot front left
     ymove(-200/2  + inch(1)/2)
     zmove(-200/2 )
     xmove(-200/2 + inch(1)/2)
     xrot(180)
     rubber_foot([0,0,20]);

     // rubber foot front right 
     ymove(-200/2  + inch(1)/2)
     zmove(-200/2 )
     xmove(200/2 - inch(1)/2)
     xrot(180)
     rubber_foot([0,0,20]);


     // rubber foot back left
     ymove(200/2  - inch(1)/2)
     zmove(-200/2 )
     xmove(-200/2 + inch(1)/2)
     xrot(180)
     rubber_foot([0,0,20]);

     // rubber foot back right 
     ymove(200/2  - inch(1)/2)
     zmove(-200/2 )
     xmove(200/2 - inch(1)/2)
     xrot(180)
     rubber_foot([0,0,20]);





}


}


if($preview){
    $explode=1;
    main_assembly();

}
   

