
![Picture](./assemblies/main_assembled.png) <br>
**Open Maker's Cube** is an open source project developed for making electronics project design and testing more fun and convenient. Due to its versatile design, the Maker's Cube can be used for other hobbies and applications.

The itch needing scratching is the ratsnest of wires and cables generated when building electronics bread board circuits. I frequently use Raspberry Pis and other microcontrollers/SBCs.  With these devices comes the need for power strips which quickly leads to a maze of entangled power cords.
 
Portability of any electronics project can be an issue.  If a project is built on the kitchen table for example, relocating requires a lot of disconnecting and re-routing.  Inevetibly wires came loose from the breadboards, resulting in needless troubleshooting.

Ergonomically, bending over and wiring breadboard circuits for hours is hard on the back and neck.  Adequate Lighting can also be a concern.

The Maker's cube is lightweight. Around 6 lbs fully loaded with hardware.

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
1. [NopSCADlib](https://github.com/nophead/NopSCADlib/blob/master/readme.md)
2. [BOSL](https://github.com/revarbat/BOSL/wiki) 

Thank you to the authors of these libraries.  I'm relatively new to OpenScad programming, so my code is not perfect and not always fully parameterized.


In summary, Maker's Cube goal is to address the following concerns:
 1. **Portability**
    Contain the electronics project in one location and easy to transport. A fully loaded cube weighs less than 6 lbs.
 2. **Less back strain** 
    You can comfortably work on your projects in a seated position, eliminating the need to bend over a table/desk for hours.
 3. **Less eye strain**
    There is a flexible super bright LED lamp mounted to the cube with a 1.75X magnifier glass.
 4. **Modularity**
    Due to the Clip-on DIN Rail system, components can be easily re-positioned/removed from the cube.
 5. **Project tidyness**
    A 6 outlet power strip with 6 - 2.4A USB ports is located inside the base of the cube. 
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

### Vendor Parts Links (aka vitamins):
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








