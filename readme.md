<a name="TOP"></a>
# OpenMakersCube

![Picture](./assemblies/main_assembled.png) <br>
**Open Maker's Cube** is an open source project developed for making electronics project design and testing more fun and convenient. Due to its versatile design, the Maker's Cube can be used for other hobbies and applications.

The itch needing scratching is the ratsnest of wires and cables generated when building electronics bread board circuits. I frequently use Raspberry Pis and other microcontrollers/SBCs.  With these devices comes the need for power strips which quickly leads to a maze of entangled power cords.

Portability of any electronics project can be an issue.  If a project is built on the kitchen table for example, relocating requires a lot of disconnecting and re-routing.  Inevetibly wires came loose from the breadboards, resulting in needless troubleshooting.

Ergonomically, bending over and wiring breadboard circuits for hours is hard on the back and neck.  Adequate Lighting can also be a concern.

The Maker's cube is lightweight. Around 3.5 lbs base unit only and is less than 7 lbs fully loaded with hardware(Rpi's/Arduinos, electronic components, plugin power supplies).

The dimensions are 200mm (8in.) x 200mm (8in.) x 200mm (8in.).  This size is perfect for any desk or table.  Not taking up any more space than a typical laptop.

The frame is made out of lightweight 1 in. square aluminum tubing. In early designs, 80/20 was used, but added almost 2x the weight.

M3 Threaded aluminum inserts are inserted into the aluminum frame to hold the components securely. The threaded inserts do require a rivet insertion tool. There are a lot of rivets, so inserting rivets into the frame is the most time consuming process. 

All plastic parts (orange) are printed with PETG. I went with PETG to hopefully withstand the heat better. Especially in the summer months. Obviously, print in any material to fit your needs.

There are mounting plates to support Raspberry PIs and Arduino UNOs in both landscape and portrait orientations.  Due to the flexibility of the DIN Rail clips, you can design any mounting plate for any device which can easily be attached to the DIN rail clips using two 2 - 3mm securing screws.

There is a mounting plate which holds a standard 400 pt solderless breadboard in both landscape and portrait orientations.

Mounted in the center of the Maker's cube is a 6 outlet power strip with 4 - 2.4A USB ports. This allows for mulitple electrical plugins inside the cube keeping the corded 'ratsnest' inside the body of the cube.  The power strip has an extra long 9.8 ft cord.

By design, only M3 screws are used.  This requires only a simple 2.5mm allen key, which I leave inside the tray.  The DIN rail mounting clips can normally be removed by hand.  However, if there are a lot of mounted components, the only other tool needed is a small flat tipped screwdriver to unlock the clips.

I use 6 inch plastic wire ties to keep the cables/wires organized inside the Maker's cube body.

There is a removable stand (prop) which is used to tilt the cube back at a 30 deg angle which allows the user to work at a comfortable eye level.

The detachable LED magnifier lamp is extremely handy.  It is super bright and having a magnifier lens makes it extremely easy to see the intricate details.

As an after thought, I designed a crude helping hands assembly.  It uses 3mm aluminum armature wire and conventional alligator clips.  This is helpful if you need to solder or hold components.  Yes, the wire will eventually break with excessive bending back-and-forth, but the wire is cheap and can be easily replaced. 

I use 3M's 'Dual Lock' fastener tape to secure the power supply to the inside bottom frame of the cube.  The allows the power supply to be easily removed if need be.  Also, the front 'prop' stand which tilts the cube at an angle, uses small sections of this tape to secure itself inside the cube's inner frame for transport.

To be extremely modular and flexible I designed the DIN Rail clips to be generic by nature. There two 3mm threaded inserts for mounting external components. The idea is you can design and mount anything you'd like to the clip.  

I began the CAD design work in Sketchup. However, since I wanted to release as a open source project, I migrated the CAD design over to [OpenScad](http://openscad.org).  I relied heavlily on these wonderful open source projects:  
1. [NopSCADlib](https://github.com/nophead/NopSCADlib/blob/master/readme.md) - nophead, thanks so much for contributing this library! Absolutely amazing and a huge time saver for generating this beautiful documentation.
2. [BOSL](https://github.com/revarbat/BOSL/wiki) 
3. [Dimlines - A dimensioning library](http://www.cannymachines.com/entries/9/openscad_dimensioned_drawings)
4. [objectarrays](https://github.com/mathcodeprint/openscad-fiddlybits/blob/master/objectarrays.scad)
5. [MCAD](https://github.com/openscad/MCAD)
6. [Obiscad](https://github.com/Obijuan/obiscad)
7. [Textgenerator](https://www.thingiverse.com/thing:59817)
8. [Shimonbox](https://github.com/ubitux/shimonbox)
9. [Openscad-threads](http://dkprojects.net/openscad-threads/)
10. [Chamfersfor OpenScad](https://github.com/SebiTimeWaster/Chamfers-for-OpenSCAD)
11. [BOLTS](https://www.bolts-library.org/en/index.html)
12. [Din Rail Inspiration](https://www.thingiverse.com/thing:101024) RobertHunt Thingiverse

Thank you to the authors of these libraries. I may not have used all them directly in this project, but have gained inspiration from all. 
I may have used other libraries which I have not given credit. If so, please contact me and I'll update the list. 
I'm relatively new to OpenScad programming, so my code is not perfect and not always fully parameterized.

In summary, Maker's Cube goal is to address the following concerns:
1. **Portability**
   Contain the electronics project in one location and easy to transport. A fully loaded cube weighs less than 6 lbs.
2. **Less back strain** 
   You can comfortably work on your projects in a seated position, eliminating the need to bend over a table/desk for hours.
3. **Less eye strain**
   There is a flexible super bright LED lamp mounted to the cube with a 1.5X magnifier glass.
4. **Modularity**
   Due to the Clip-on DIN Rail system, components can be easily re-positioned/removed from the cube.
5. **Project tidyness**
   A 6 outlet power strip with 4 - 2.4A USB ports is located inside the base of the cube. 
   This allows for mulitple electrical plugins inside the cube keeping the corded 'ratsnest' inside the body of the cube.

### Tools Required For Build:
1. 3D Printer
2. [Threaded Insert Rivet Gun w/3mm mandrel](https://www.amazon.com/gp/product/B06XVB3MMG/ref=ppx_yo_dt_b_search_asin_title?ie=UTF8&psc=1)
3. 2.5mm Allen Key
4. Saw to Cut 1 in. aluminum tubing.  Chopsaw, hacksaw, other.
5. Knife or razor blades
6. 5mm drill bit to drill holes for 3mm threaded inserts
7. Drill    
8. 3mm x .5mm hole tap.  To tap 3mm holes in 3D printed plastic.

### Parts List and Qty Per Build:
- [See Table Of Contents](readme.md#table-of-contents)

### Vendor List of Parts (aka vitamins):
- [M3 Threaded Rivet Inserts (bag 100pcs)](https://www.amazon.com/gp/product/B07HKK364C/ref=ppx_yo_dt_b_search_asin_title?ie=UTF8&psc=1)
- [Velcro - 3M Dual Lock 1in wide 6FT Long](https://www.amazon.com/gp/product/B07D2LYFM2/ref=ppx_yo_dt_b_search_asin_title?ie=UTF8&psc=1)
- [PETG Filament - Orange 1Kg (1080 FT long)](https://www.amazon.com/gp/product/B014VM9ALM/ref=ppx_yo_dt_b_asin_title_o00_s00?ie=UTF8&psc=1)
- [6 Outlet power strip (SuperDanny)](https://www.amazon.com/gp/product/B077ZSC6RQ/ref=ppx_yo_dt_b_search_asin_title?ie=UTF8&psc=1)
- [Breadboard - Half Size (pack 6 ea)](https://www.amazon.com/gp/product/B01NARN7SM/ref=ppx_yo_dt_b_search_asin_title?ie=UTF8&psc=1)
- [Rubber Bumpers (pack of 20 ea)](https://www.amazon.com/gp/product/B01G5WX4M2/ref=ppx_yo_dt_b_search_asin_title?ie=UTF8&psc=1)
- [Screws - M3 x 5 (pack of 100)](https://www.boltdepot.com/Product-Details.aspx?product=6377)
- [Screws - M3 x 8](https://www.boltdepot.com/Product-Details.aspx?product=6379)
- [Screws - M3 x 12](https://www.boltdepot.com/Product-Details.aspx?product=6381)
- [Screws - M3 x 16](https://www.boltdepot.com/Product-Details.aspx?product=6382)
- [Washers - M3](https://www.boltdepot.com/Product-Details.aspx?product=4513)
- [Magnifier Lamp](https://www.amazon.com/gp/product/B019R1BN3U/ref=ppx_yo_dt_b_search_asin_title?ie=UTF8&psc=1)
- [Armature Wire 3MM (32.8 ft copper/alum)](https://www.amazon.com/gp/product/B07CQL7Y5B/ref=ppx_yo_dt_b_search_asin_title?ie=UTF8&psc=1)
- [Tygon Tubing 50FT 1/8" OD (cover alligator clips)](https://www.zoro.com/tygon-tubing-clear-18-in-inside-dia-50-ft-acf00006/i/G4124294/)
- [Alligator Clips (Package of 50)](https://www.amazon.com/gp/product/B01D9BO4OO/ref=ppx_yo_dt_b_search_asin_title?ie=UTF8&psc=1)
- [Plastic Ties Blk 6 in (pk 250)](https://www.amazon.com/gp/product/B0718T3FMF/ref=ppx_yo_dt_b_search_asin_title?ie=UTF8&psc=1)
- [2.5MM Allen Wrench (pk 100)](https://www.amazon.com/gp/product/B005SE78Z8/ref=ppx_yo_dt_b_search_asin_title?ie=UTF8&psc=1)
- [Din Rails 200MM (20 Pak)](https://www.amazon.com/gp/product/B07HMW318D/ref=ppx_yo_dt_b_asin_title_o08_s00?ie=UTF8&psc=1)


<a name="PICS_GALLERY"></a>
### Picture Gallery 
- ![](./docs/messy_1.jpg)
- ![](./docs/makers_cube_table1.jpg)
- ![](./docs/makers_cube_table2.jpg)
- ![](./docs/makers_cube_table3.jpg)
- ![](./docs/makers_cube_table4.jpg)
- ![](./docs/makers_cube_table5.jpg)
- ![](./docs/makers_cube_table6.jpg)

### 3D Printing
All of the STL models for this project are located in the /stls subdirectory.

Getting these prints correct was a highly iterative process.  Accuracy is the key to getting these components to fit properly.
Make sure your printer is calibrated and X/Y print scaling is correct.
<a name="PRINT_SETTINGS"></a>
### 3D Print Settings
<table>
<tr><th>STL</th><th>Resolution</th><th>Infill %</th><th>Supports</th><th>Comments</th></tr>
<tr><td>arduino_uno_mounting_plate.stl</td><td align="center">.3</td><td align="center">20</td><td align="center">NO</td><td>STL file located in <b>/stls</b> directory</td></tr>
<tr><td>armature_union.stl</td><td align="center">.3</td><td align="center">100</td><td align="center">NO</td><td>STL file located in <b>/stls</b> directory</td></tr>
<tr><td>back_spin_plate.stl</td><td align="center">.3</td><td align="center">20</td><td align="center">NO</td><td>STL file located in <b>/stls</b> directory</td></tr>
<tr><td>carry_handle.stl</td><td align="center">.3</td><td align="center">20</td><td align="center">NO</td><td>STL file located in <b>/stls</b> directory</td></tr>
<tr><td>corner_tube_connector_bottom.stl</td><td align="center">.3</td><td align="center">20</td><td align="center"><b>YES</b></td><td>STL file located in <b>/stls</b> directory</td></tr>
<tr><td>corner_tube_connector_bottom_v2.stl</td><td align="center">.3</td><td align="center">20</td><td align="center">NO</td><td>Alternate print orientation not requiring supports and stronger. STL file located in <b>/docs</b> directory</td></tr>
<tr><td>corner_tube_connector_top.stl</td><td align="center">.3</td><td align="center">20</td><td align="center"><b>YES</b></td><td>STL file located in <b>/stls</b> directory</td></tr>
<tr><td>corner_tube_connector_top_v2.stl</td><td align="center">.3</td><td align="center">20</td><td align="center">NO</td><td>Alternate print orientation not requiring supports and stronger. STL file located in <b>/docs</b> directory</td></tr>
<tr><td>din_rail_clip.stl</td><td align="center">.3</td><td align="center">100</td><td align="center">NO</td><td>STL file located in <b>/stls</b> directory</td></tr>
<tr><td>helping_hands_mount.stl</td><td align="center">.3</td><td align="center">20</td><td align="center">NO</td><td>STL file located in <b>/stls</b> directory</td></tr>
<tr><td>prop.stl</td><td align="center">.3</td><td align="center">20</td><td align="center">NO</td><td>STL file located in <b>/stls</b> directory</td></tr>
<tr><td>raspberry_pi_mounting_plate.stl</td><td align="center">.3</td><td align="center">20</td><td align="center">NO</td><td>STL file located in <b>/stls</b> directory</td></tr>
<tr><td>small_breadboard_holder.stl</td><td align="center">.3</td><td align="center">20</td><td align="center">NO</td><td>STL file located in <b>/stls</b> directory</td></tr>
</table>


![Main Assembly](assemblies/main_assembled.png)


---
## Table of Contents
1. [Parts list](#Parts_list)
1. [Prop Assembly](#prop_assembly)
1. [Power Strip Assembly](#power_strip_assembly)
1. [Tray Assembly](#tray_assembly)
1. [Corner Lamp Holder Assembly](#corner_lamp_holder_assembly)
1. [Din Rail Clip Assembly](#din_rail_clip_assembly)
1. [Back Spin Plate Assembly](#back_spin_plate_assembly)
1. [Raspberry Pi Mounting Plate Portrait Assembly](#raspberry_pi_mounting_plate_portrait_assembly)
1. [Arduino Uno Mounting Plate Portrait Assembly](#arduino_uno_mounting_plate_portrait_assembly)
1. [Small Breadboard Portrait Assembly](#small_breadboard_portrait_assembly)
1. [Small Breadboard Landscape Assembly](#small_breadboard_landscape_assembly)
1. [Carry Handle Assembly](#carry_handle_assembly)
1. [Din Rail Assembly](#din_rail_assembly)
1. [Corner Tube Top Assembly](#corner_tube_top_assembly)
1. [Frame Bottom Assembly](#frame_bottom_assembly)
1. [Frame Middle Assembly](#frame_middle_assembly)
1. [Frame Top Assembly](#frame_top_assembly)
1. [Frame Assembly](#frame_assembly)
1. [Helping Hands Assembly](#helping_hands_assembly)
1. [Main Assembly](#main_assembly)

[Top](#TOP)

---
<a name="Parts_list"></a>
## Parts list
| <span style="writing-mode: vertical-rl; text-orientation: mixed;">Prop</span> | <span style="writing-mode: vertical-rl; text-orientation: mixed;">Power&nbsp;Strip</span> | <span style="writing-mode: vertical-rl; text-orientation: mixed;">Tray</span> | <span style="writing-mode: vertical-rl; text-orientation: mixed;">Corner&nbsp;Lamp&nbsp;Holder</span> | <span style="writing-mode: vertical-rl; text-orientation: mixed;">Din&nbsp;Rail&nbsp;Clip</span> | <span style="writing-mode: vertical-rl; text-orientation: mixed;">Back&nbsp;Spin&nbsp;Plate</span> | <span style="writing-mode: vertical-rl; text-orientation: mixed;">Raspberry&nbsp;Pi&nbsp;Mounting&nbsp;Plate&nbsp;Portrait</span> | <span style="writing-mode: vertical-rl; text-orientation: mixed;">Arduino&nbsp;Uno&nbsp;Mounting&nbsp;Plate&nbsp;Portrait</span> | <span style="writing-mode: vertical-rl; text-orientation: mixed;">Small&nbsp;Breadboard&nbsp;Portrait</span> | <span style="writing-mode: vertical-rl; text-orientation: mixed;">Small&nbsp;Breadboard&nbsp;Landscape</span> | <span style="writing-mode: vertical-rl; text-orientation: mixed;">Carry&nbsp;Handle</span> | <span style="writing-mode: vertical-rl; text-orientation: mixed;">Din&nbsp;Rail</span> | <span style="writing-mode: vertical-rl; text-orientation: mixed;">Corner&nbsp;Tube&nbsp;Top</span> | <span style="writing-mode: vertical-rl; text-orientation: mixed;">Frame&nbsp;Bottom</span> | <span style="writing-mode: vertical-rl; text-orientation: mixed;">Frame&nbsp;Middle</span> | <span style="writing-mode: vertical-rl; text-orientation: mixed;">Frame&nbsp;Top</span> | <span style="writing-mode: vertical-rl; text-orientation: mixed;">Frame</span> | <span style="writing-mode: vertical-rl; text-orientation: mixed;">Helping&nbsp;Hands</span> | <span style="writing-mode: vertical-rl; text-orientation: mixed;">Main</span> | <span style="writing-mode: vertical-rl; text-orientation: mixed;">TOTALS</span> |  |
|--:|--:|--:|--:|--:|--:|--:|--:|--:|--:|--:|--:|--:|--:|--:|--:|--:|--:|--:|--:|:--|
| &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;2&nbsp; |  &nbsp;&nbsp;2&nbsp; | &nbsp;&nbsp;  3M Dual lock velcro 149mm long |
| &nbsp;&nbsp;2&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;2&nbsp; |  &nbsp;&nbsp;4&nbsp; | &nbsp;&nbsp;  3M Dual lock velcro 6mm long |
| &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;2&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; |  &nbsp;&nbsp;2&nbsp; | &nbsp;&nbsp;  3M Dual lock velcro 85mm long |
| &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;1&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; |  &nbsp;&nbsp;1&nbsp; | &nbsp;&nbsp;  Super Danny 6 outlet Power Strip |
| &nbsp;&nbsp;2&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;4&nbsp; |  &nbsp;&nbsp;6&nbsp; | &nbsp;&nbsp; 1 inch sq rubber foot |
| &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;4&nbsp; | &nbsp;&nbsp;4&nbsp; | &nbsp;&nbsp;4&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; |  &nbsp;&nbsp;12&nbsp; | &nbsp;&nbsp; 1IN Aluminum Square Tube 149.2 MM long |
| &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;7&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; |  &nbsp;&nbsp;7&nbsp; | &nbsp;&nbsp; 35MM Din Rail 200 MM long |
| &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;2&nbsp; | &nbsp;&nbsp;.&nbsp; |  &nbsp;&nbsp;2&nbsp; | &nbsp;&nbsp; 3MM Armature wire - 5 inches long |
| &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;8&nbsp; | &nbsp;&nbsp;8&nbsp; | &nbsp;&nbsp;4&nbsp; | &nbsp;&nbsp;4&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;4&nbsp; | &nbsp;&nbsp;20&nbsp; | &nbsp;&nbsp;40&nbsp; | &nbsp;&nbsp;40&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; |  &nbsp;&nbsp;128&nbsp; | &nbsp;&nbsp; 3MM threaded rivet insert |
| &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;2&nbsp; | &nbsp;&nbsp;.&nbsp; |  &nbsp;&nbsp;2&nbsp; | &nbsp;&nbsp; Alligator Clip |
| &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;1&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; |  &nbsp;&nbsp;1&nbsp; | &nbsp;&nbsp; Arduino Uno R3 |
| &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;1&nbsp; |  &nbsp;&nbsp;1&nbsp; | &nbsp;&nbsp; Magnifier Lamp Assembly |
| &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;1&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; |  &nbsp;&nbsp;1&nbsp; | &nbsp;&nbsp; Micro SD card |
| &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;1&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; |  &nbsp;&nbsp;1&nbsp; | &nbsp;&nbsp; Raspberry Pi 3 |
| &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;2&nbsp; | &nbsp;&nbsp;12&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;2&nbsp; | &nbsp;&nbsp;2&nbsp; | &nbsp;&nbsp;2&nbsp; | &nbsp;&nbsp;2&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;2&nbsp; | &nbsp;&nbsp;.&nbsp; |  &nbsp;&nbsp;24&nbsp; | &nbsp;&nbsp; Screw M3 cap x 12mm |
| &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;1&nbsp; | &nbsp;&nbsp;1&nbsp; | &nbsp;&nbsp;1&nbsp; | &nbsp;&nbsp;1&nbsp; | &nbsp;&nbsp;2&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;1&nbsp; | &nbsp;&nbsp;.&nbsp; |  &nbsp;&nbsp;7&nbsp; | &nbsp;&nbsp; Screw M3 cap x 16mm |
| &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;1&nbsp; | &nbsp;&nbsp;1&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; |  &nbsp;&nbsp;2&nbsp; | &nbsp;&nbsp; Screw M3 cap x 5mm |
| &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;4&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;6&nbsp; | &nbsp;&nbsp;6&nbsp; | &nbsp;&nbsp;2&nbsp; | &nbsp;&nbsp;2&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;14&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;6&nbsp; | &nbsp;&nbsp;.&nbsp; |  &nbsp;&nbsp;40&nbsp; | &nbsp;&nbsp; Screw M3 cap x 8mm |
| &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;1&nbsp; | &nbsp;&nbsp;1&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; |  &nbsp;&nbsp;2&nbsp; | &nbsp;&nbsp; Small Breadboard |
| &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;2&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;2&nbsp; | &nbsp;&nbsp;14&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; |  &nbsp;&nbsp;18&nbsp; | &nbsp;&nbsp; Washer  M3 x 7mm x 0.5mm |
|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | | **3D Printed parts** |
| &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;1&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;1&nbsp; | &nbsp;&nbsp;&nbsp;arduino_uno_mounting_plate.stl |
| &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;2&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;2&nbsp; | &nbsp;&nbsp;&nbsp;armature_union.stl |
| &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;4&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;4&nbsp; | &nbsp;&nbsp;&nbsp;back_spin_plate.stl |
| &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;1&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;1&nbsp; | &nbsp;&nbsp;&nbsp;carry_handle.stl |
| &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;4&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;4&nbsp; | &nbsp;&nbsp;&nbsp;corner_tube_connector_bottom.stl |
| &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;4&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;1&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;5&nbsp; | &nbsp;&nbsp;&nbsp;din_rail_clip.stl |
| &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;1&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;1&nbsp; | &nbsp;&nbsp;&nbsp;helping_hands_mount.stl |
| &nbsp;&nbsp;1&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;1&nbsp; | &nbsp;&nbsp;&nbsp;prop.stl |
| &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;1&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;1&nbsp; | &nbsp;&nbsp;&nbsp;raspberry_pi_mounting_plate.stl |
| &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;1&nbsp; | &nbsp;&nbsp;1&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;.&nbsp; | &nbsp;&nbsp;2&nbsp; | &nbsp;&nbsp;&nbsp;small_breadboard_holder.stl |

[Top](#TOP)

---
<a name="prop_assembly"></a>
## Prop Assembly
### Vitamins
|Qty|Description|
|--:|:----------|
|2|  3M Dual lock velcro 6mm long|
|2| 1 inch sq rubber foot|


### 3D Printed parts

| 1 x prop.stl |
|--|
| ![prop.stl](stls/prop.png) 



### Assembly instructions
![prop_assembly](assemblies/prop_assembly.png)


1. 3D print prop. [See Print Settings](#PRINT_SETTINGS)
2. Using scissors, cut 2 ea 6mm x 1in strip of 3M dual lock velcro.
3. Remove adhesive backing from dual lock strips and attach to prop as indicated.
4. Remove adhesive backing from the 2 each rubber feet and attach to the bottom of the prop.


![prop_assembled](assemblies/prop_assembled.png)

[Top](#TOP)

---
<a name="power_strip_assembly"></a>
## Power Strip Assembly
### Vitamins
|Qty|Description|
|--:|:----------|
|2|  3M Dual lock velcro 85mm long|
|1|  Super Danny 6 outlet Power Strip|


### Assembly instructions
![power_strip_assembly](assemblies/power_strip_assembly_tn.png)

1. Using scissors, cut 2 each 1in x 85MM dual lock velcro.
2. Remove backing from dual lock strips and attach to the bottom of the power strip as indicated.


![power_strip_assembled](assemblies/power_strip_assembled_tn.png)

[Top](#TOP)

---
<a name="tray_assembly"></a>
## Tray Assembly
### Vitamins
|Qty|Description|
|--:|:----------|
|2| Screw M3 cap x 12mm|
|2| Washer  M3 x 7mm x 0.5mm|


### Assembly instructions
![tray_assembly](assemblies/tray_assembly_tn.png)

1. Insert 2 ea. M3 x 12MM screws through two M3 flat washers.
2. Insert screw/washer assy through the front tray slots.
3. Secure tray to top frame assy. 


![tray_assembled](assemblies/tray_assembled_tn.png)

[Top](#TOP)

---
<a name="corner_lamp_holder_assembly"></a>
## 4 x Corner Lamp Holder Assembly
### Vitamins
|Qty|Description|
|--:|:----------|
|12| Screw M3 cap x 12mm|
|4| Screw M3 cap x 8mm|


### Assembly instructions
![corner_lamp_holder_assembly](assemblies/corner_lamp_holder_assembly_tn.png)

1. 3D print 4 each lamp holder corner prieces. [See Print Settings](#PRINT_SETTINGS)
2. Using a 3mm x .5mm hole tap, tap the back horizontal hole for the 8mm M3 screw. This screw will be used to secure the lamp in place.
3. Screw in 8mm screw a few turns.
4. When the frame assembly is assembled, use the remaining 3 12MM M3 screws to secure to frame corners.

![corner_lamp_holder_assembled](assemblies/corner_lamp_holder_assembled_tn.png)

[Top](#TOP)

---
<a name="din_rail_clip_assembly"></a>
## 4 x Din Rail Clip Assembly
### Vitamins
|Qty|Description|
|--:|:----------|
|8| 3MM threaded rivet insert|


### 3D Printed parts

| 4 x din_rail_clip.stl |
|--|
| ![din_rail_clip.stl](stls/din_rail_clip.png) 



### Assembly instructions
![din_rail_clip_assembly](assemblies/din_rail_clip_assembly_tn.png)

1. 3D print 4 each din rail clips. [See Print Settings](#PRINT_SETTINGS)
2. Using a threaded insert rivet gun, insert the rivets as indicated.
3. Using an M3 tap, tap the small center hole.  This is optional and is be used to provide additional security of the din clip to the din rail.


![din_rail_clip_assembled](assemblies/din_rail_clip_assembled_tn.png)

[Top](#TOP)

---
<a name="back_spin_plate_assembly"></a>
## 4 x Back Spin Plate Assembly
### Vitamins
|Qty|Description|
|--:|:----------|
|8| 3MM threaded rivet insert|


### 3D Printed parts

| 4 x back_spin_plate.stl |
|--|
| ![back_spin_plate.stl](stls/back_spin_plate.png) 



### Assembly instructions
![back_spin_plate_assembly](assemblies/back_spin_plate_assembly_tn.png)

1. 3D print 4 each back spin plates. [See Print Settings](#PRINT_SETTINGS)
2. Using a threaded insert rivet gun, insert the rivets as indicated.


![back_spin_plate_assembled](assemblies/back_spin_plate_assembled_tn.png)

[Top](#TOP)

---
<a name="raspberry_pi_mounting_plate_portrait_assembly"></a>
## Raspberry Pi Mounting Plate Portrait Assembly
### Vitamins
|Qty|Description|
|--:|:----------|
|1| Screw M3 cap x 16mm|
|1| Micro SD card|
|4| 3MM threaded rivet insert|
|1| Raspberry Pi 3|
|2| Screw M3 cap x 12mm|
|6| Screw M3 cap x 8mm|


### 3D Printed parts

| 1 x raspberry_pi_mounting_plate.stl |
|--|
| ![raspberry_pi_mounting_plate.stl](stls/raspberry_pi_mounting_plate.png) 



### Sub-assemblies

| 1 x back_spin_plate_assembly | 1 x din_rail_clip_assembly |
|--|--|
| ![back_spin_plate_assembled](assemblies/back_spin_plate_assembled_tn.png) | ![din_rail_clip_assembled](assemblies/din_rail_clip_assembled_tn.png) 



### Assembly instructions
![raspberry_pi_mounting_plate_portrait_assembly](assemblies/raspberry_pi_mounting_plate_portrait_assembly_tn.png)

1. 3D print 1 each raspberry pi mounting plate. [See Print Settings](#PRINT_SETTINGS)
2. Using a threaded insert rivet gun, insert the 4 rivets as indicated.
3. Attach Raspberry PI, backspin plate assy, and din rail clip assy together with screws.
4. 4 8MM screws secure the Raspberry pi to the mounting plate.
5. 2 8MM screw secure the raspbery pi mounting plate to the spin plate.
6. 2 12MM screws secure the spin plate to the din rail clip.
7. 1 16MM screw is optional and is used for additional security of the din rail clip to the din rail.

![raspberry_pi_mounting_plate_portrait_assembled](assemblies/raspberry_pi_mounting_plate_portrait_assembled_tn.png)

[Top](#TOP)

---
<a name="arduino_uno_mounting_plate_portrait_assembly"></a>
## Arduino Uno Mounting Plate Portrait Assembly
### Vitamins
|Qty|Description|
|--:|:----------|
|1| Screw M3 cap x 16mm|
|2| Screw M3 cap x 12mm|
|4| 3MM threaded rivet insert|
|1| Arduino Uno R3|
|6| Screw M3 cap x 8mm|


### 3D Printed parts

| 1 x arduino_uno_mounting_plate.stl |
|--|
| ![arduino_uno_mounting_plate.stl](stls/arduino_uno_mounting_plate.png) 



### Sub-assemblies

| 1 x back_spin_plate_assembly | 1 x din_rail_clip_assembly |
|--|--|
| ![back_spin_plate_assembled](assemblies/back_spin_plate_assembled_tn.png) | ![din_rail_clip_assembled](assemblies/din_rail_clip_assembled_tn.png) 



### Assembly instructions
![arduino_uno_mounting_plate_portrait_assembly](assemblies/arduino_uno_mounting_plate_portrait_assembly_tn.png)

1. 3D print 1 each Arduino Uno mounting plate. [See Print Settings](#PRINT_SETTINGS)
2. Using a threaded insert rivet gun, insert the 4 rivets as indicated.
3. Attach Arduino Uno, backspin plate assy, and din rail clip assy together with screws.
4. 4 8MM screws secure the Arduino Uno to the mounting plate.
5. 2 8MM screw secure the Arduino Uno mounting plate to the spin plate.
6. 2 12MM screws secure the spin plate to the din rail clip.
7. 1 16MM screw is optional and is used for additional security of the din rail clip to the din rail.

![arduino_uno_mounting_plate_portrait_assembled](assemblies/arduino_uno_mounting_plate_portrait_assembled_tn.png)

[Top](#TOP)

---
<a name="small_breadboard_portrait_assembly"></a>
## Small Breadboard Portrait Assembly
### Vitamins
|Qty|Description|
|--:|:----------|
|1| Screw M3 cap x 16mm|
|1| Small Breadboard|
|1| Screw M3 cap x 5mm|
|2| Screw M3 cap x 12mm|
|2| Screw M3 cap x 8mm|


### 3D Printed parts

| 1 x small_breadboard_holder.stl |
|--|
| ![small_breadboard_holder.stl](stls/small_breadboard_holder.png) 



### Sub-assemblies

| 1 x back_spin_plate_assembly | 1 x din_rail_clip_assembly |
|--|--|
| ![back_spin_plate_assembled](assemblies/back_spin_plate_assembled_tn.png) | ![din_rail_clip_assembled](assemblies/din_rail_clip_assembled_tn.png) 



### Assembly instructions
![small_breadboard_portrait_assembly](assemblies/small_breadboard_portrait_assembly_tn.png)

1. 3D print 1 each small breadboard holder. [See Print Settings](#PRINT_SETTINGS)
2. Using a 3mm tap, tap the small horizontal hole located on the side of the breadboard holder.
3. 1 5MM screw secures the breadboard to the holder from the side.
4. 2 8MM screws secure the breadboard holder to the spin plate.
5. 2 12MM screws secure the spin plate to the din rail clip.
6. 1 16MM screw is optional and is used for additional security of the din rail clip to the din rail.

![small_breadboard_portrait_assembled](assemblies/small_breadboard_portrait_assembled_tn.png)

[Top](#TOP)

---
<a name="small_breadboard_landscape_assembly"></a>
## Small Breadboard Landscape Assembly
### Vitamins
|Qty|Description|
|--:|:----------|
|1| Screw M3 cap x 16mm|
|1| Small Breadboard|
|1| Screw M3 cap x 5mm|
|2| Screw M3 cap x 12mm|
|2| Screw M3 cap x 8mm|


### 3D Printed parts

| 1 x small_breadboard_holder.stl |
|--|
| ![small_breadboard_holder.stl](stls/small_breadboard_holder.png) 



### Sub-assemblies

| 1 x back_spin_plate_assembly | 1 x din_rail_clip_assembly |
|--|--|
| ![back_spin_plate_assembled](assemblies/back_spin_plate_assembled_tn.png) | ![din_rail_clip_assembled](assemblies/din_rail_clip_assembled_tn.png) 



### Assembly instructions
![small_breadboard_landscape_assembly](assemblies/small_breadboard_landscape_assembly_tn.png)

1. 3D print 1 each small breadboard holder. [See Print Settings](#PRINT_SETTINGS)
2. Using a 3mm tap, tap the small horizontal hole located on the side of the breadboard holder.
3. 1 5MM screw secures the breadboard to the holder from the side.
4. 2 8MM screws secure the breadboard holder to the spin plate.
5. 2 12MM screws secure the spin plate to the din rail clip.
6. 1 16MM screw is optional and is used for additional security of the din rail clip to the din rail.

![small_breadboard_landscape_assembled](assemblies/small_breadboard_landscape_assembled_tn.png)

[Top](#TOP)

---
<a name="carry_handle_assembly"></a>
## Carry Handle Assembly
### Vitamins
|Qty|Description|
|--:|:----------|
|2| Screw M3 cap x 16mm|
|2| Washer  M3 x 7mm x 0.5mm|


### 3D Printed parts

| 1 x carry_handle.stl |
|--|
| ![carry_handle.stl](stls/carry_handle.png) 



### Assembly instructions
![carry_handle_assembly](assemblies/carry_handle_assembly.png)

1. 3D print 1 each carry handle. [See Print Settings](#PRINT_SETTINGS)
2. Insert 2 each 16MM M3 screws into 2 each M3 washers.
3. Once frame assembly is assembled, attach carry hadndle to top of frame as indicated.  

![carry_handle_assembled](assemblies/carry_handle_assembled.png)

[Top](#TOP)

---
<a name="din_rail_assembly"></a>
## Din Rail Assembly
### Vitamins
|Qty|Description|
|--:|:----------|
|14| Screw M3 cap x 8mm|
|7| 35MM Din Rail 200 MM long|
|14| Washer  M3 x 7mm x 0.5mm|


### Assembly instructions
![din_rail_assembly](assemblies/din_rail_assembly_tn.png)

1. Use M3 8MM screws and M3 washers to attach the din rail to the outer frame assembly.  
2. Position the din rail in any position which works best for your project need. 

![din_rail_assembled](assemblies/din_rail_assembled_tn.png)

[Top](#TOP)

---
<a name="corner_tube_top_assembly"></a>
## 4 x Corner Tube Top Assembly
### Vitamins
|Qty|Description|
|--:|:----------|
|4| 3MM threaded rivet insert|


### Assembly instructions
![corner_tube_top_assembly](assemblies/corner_tube_top_assembly_tn.png)

1. 3D print 4 each corner tube connector tops . [See Print Settings](#PRINT_SETTINGS)
2. Using a threaded insert rivet gun, insert the rivets as indicated.

![corner_tube_top_assembled](assemblies/corner_tube_top_assembled_tn.png)

[Top](#TOP)

---
<a name="frame_bottom_assembly"></a>
## Frame Bottom Assembly
### Vitamins
|Qty|Description|
|--:|:----------|
|4| 1IN Aluminum Square Tube 149.2 MM long|
|20| 3MM threaded rivet insert|


### Assembly instructions
![frame_bottom_assembly](assemblies/frame_bottom_assembly_tn.png)

1. Using a drill and a 5MM drill bit. Drill 5 each holes in each of the 4 rails (20 total). Drill pattern is below.  
2. Insert rivets using rivet gun.  Do NOT insert the end rivets until the corner connectors are installed. 
![Picture](./docs/dimensioned_bottom_rail.png) <br>

![frame_bottom_assembled](assemblies/frame_bottom_assembled_tn.png)

[Top](#TOP)

---
<a name="frame_middle_assembly"></a>
## Frame Middle Assembly
### Vitamins
|Qty|Description|
|--:|:----------|
|4| 1IN Aluminum Square Tube 149.2 MM long|
|40| 3MM threaded rivet insert|


### Assembly instructions
![frame_middle_assembly](assemblies/frame_middle_assembly_tn.png)

1. Using a drill and a 5MM drill bit. Drill 10 each holes in each of the 4 rails (40 total). Drill pattern is below.  
2. Insert rivets using rivet gun.  Do NOT insert the end rivets until the corner connectors are installed. 
![Picture](./docs/dimensioned_vertical_rail.png) <br>

![frame_middle_assembled](assemblies/frame_middle_assembled_tn.png)

[Top](#TOP)

---
<a name="frame_top_assembly"></a>
## Frame Top Assembly
### Vitamins
|Qty|Description|
|--:|:----------|
|4| 1IN Aluminum Square Tube 149.2 MM long|
|40| 3MM threaded rivet insert|


### Assembly instructions
![frame_top_assembly](assemblies/frame_top_assembly_tn.png)

1. Using a drill and a 5MM drill bit. Drill 10 each holes in each of the 4 rails (40 total). Drill pattern is below.  
2. Insert rivets using rivet gun.  Do NOT insert the end rivets until the corner connectors are installed. 
![Picture](./docs/dimensioned_top_rail.png) <br>

![frame_top_assembled](assemblies/frame_top_assembled_tn.png)

[Top](#TOP)

---
<a name="frame_assembly"></a>
## Frame Assembly
### 3D Printed parts

| 4 x corner_tube_connector_bottom.stl |
|--|
| ![corner_tube_connector_bottom.stl](stls/corner_tube_connector_bottom.png) 



### Sub-assemblies

| 4 x corner_tube_top_assembly | 1 x frame_bottom_assembly | 1 x frame_middle_assembly |
|--|--|--|
| ![corner_tube_top_assembled](assemblies/corner_tube_top_assembled_tn.png) | ![frame_bottom_assembled](assemblies/frame_bottom_assembled_tn.png) | ![frame_middle_assembled](assemblies/frame_middle_assembled_tn.png) 


| 1 x frame_top_assembly |
|--|
| ![frame_top_assembled](assemblies/frame_top_assembled_tn.png) 



### Assembly instructions
![frame_assembly](assemblies/frame_assembly_tn.png)

![frame_assembled](assemblies/frame_assembled_tn.png)

[Top](#TOP)

---
<a name="helping_hands_assembly"></a>
## Helping Hands Assembly
### Vitamins
|Qty|Description|
|--:|:----------|
|2| 3MM Armature wire - 5 inches long|
|2| Alligator Clip|
|1| Screw M3 cap x 16mm|
|2| Screw M3 cap x 12mm|
|6| Screw M3 cap x 8mm|


### 3D Printed parts

| 2 x armature_union.stl | 1 x din_rail_clip.stl | 1 x helping_hands_mount.stl |
|--|--|--|
| ![armature_union.stl](stls/armature_union.png) | ![din_rail_clip.stl](stls/din_rail_clip.png) | ![helping_hands_mount.stl](stls/helping_hands_mount.png) 



### Assembly instructions
![helping_hands_assembly](assemblies/helping_hands_assembly_tn.png)

1. 3D print 2 each armature union, din rail clip, and helping hands mount [See Print Settings](#PRINT_SETTINGS)
2. Using a 3MM tap, tap the 4 holes of the armature unions.  
3. Using a 3MM tap, tap the 2 holes located on the face of the helping hands mount. 
4. Cut 2 each 5 inch sections of the 3MM armature wire.
5. insert one side of the armature wire into the armature union and an alligator clip into the other end of the armature union and secure with the 8MM screws. 
6. Insert the other end of the 3MM armature wire into the helping hands mount and secure with a 8MM M3 screw.
7. Use the 2 12MM M3 screws to secure the helping hands mount to the din rail clip. 

![helping_hands_assembled](assemblies/helping_hands_assembled_tn.png)

[Top](#TOP)

---
<a name="main_assembly"></a>
## Main Assembly
### Vitamins
|Qty|Description|
|--:|:----------|
|2|  3M Dual lock velcro 149mm long|
|1| Magnifier Lamp Assembly|
|2|  3M Dual lock velcro 6mm long|
|4| 1 inch sq rubber foot|


### Sub-assemblies

| 1 x arduino_uno_mounting_plate_portrait_assembly | 1 x carry_handle_assembly | 4 x corner_lamp_holder_assembly |
|--|--|--|
| ![arduino_uno_mounting_plate_portrait_assembled](assemblies/arduino_uno_mounting_plate_portrait_assembled_tn.png) | ![carry_handle_assembled](assemblies/carry_handle_assembled_tn.png) | ![corner_lamp_holder_assembled](assemblies/corner_lamp_holder_assembled_tn.png) 


| 1 x din_rail_assembly | 1 x frame_assembly | 1 x helping_hands_assembly |
|--|--|--|
| ![din_rail_assembled](assemblies/din_rail_assembled_tn.png) | ![frame_assembled](assemblies/frame_assembled_tn.png) | ![helping_hands_assembled](assemblies/helping_hands_assembled_tn.png) 


| 1 x power_strip_assembly | 1 x prop_assembly | 1 x raspberry_pi_mounting_plate_portrait_assembly |
|--|--|--|
| ![power_strip_assembled](assemblies/power_strip_assembled_tn.png) | ![prop_assembled](assemblies/prop_assembled_tn.png) | ![raspberry_pi_mounting_plate_portrait_assembled](assemblies/raspberry_pi_mounting_plate_portrait_assembled_tn.png) 


| 1 x small_breadboard_landscape_assembly | 1 x small_breadboard_portrait_assembly | 1 x tray_assembly |
|--|--|--|
| ![small_breadboard_landscape_assembled](assemblies/small_breadboard_landscape_assembled_tn.png) | ![small_breadboard_portrait_assembled](assemblies/small_breadboard_portrait_assembled_tn.png) | ![tray_assembled](assemblies/tray_assembled_tn.png) 



### Assembly instructions
![main_assembly](assemblies/main_assembly.png)

1. Cut 2 each 149mm sections of dual lock velcro.
2. Remove dual lock backing and stick to the front and back inner bottom frame assembly. The power supply will stick to these velcro strips. 
3. Attach 4 each rubber feet to the bottom 4 corners of the cube.
4. Cut 2 each 6mm sections of dual lock velcro.
5. Attach these small strips of velcro to the left inner frame where the prop will go when it is stored inside the cube. 
6. Insert LED magnifying lamp into one of the 4 corner posts.
7. Attach all other assemblies as indicated.

![main_assembled](assemblies/main_assembled.png)

[Top](#TOP)
"# open-makers-cube" 
