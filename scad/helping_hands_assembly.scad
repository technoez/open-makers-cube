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
use <../printed/helping_hands.scad>
include <NopSCADlib/core.scad> 

//
//!1. 3D print 2 each armature union, din rail clip, and helping hands mount [See Print Settings](#PRINT_SETTINGS)
//!2. Using a 3MM tap, tap the 4 holes of the armature unions.  
//!3. Using a 3MM tap, tap the 2 holes located on the face of the helping hands mount. 
//!4. Cut 2 each 5 inch sections of the 3MM armature wire.
//!5. insert one side of the armature wire into the armature union and an alligator clip into the other end of the armature union and secure with the 8MM screws. 
//!6. Insert the other end of the 3MM armature wire into the helping hands mount and secure with a 8MM M3 screw.
//!7. Use the 2 12MM M3 screws to secure the helping hands mount to the din rail clip. 
//
module helping_hands_assembly(){
   pose([80.2, 0, 323.6], [32.0298, 8.74044, -6.51976])
   assembly("helping_hands"){
       zmove(34)
       xmove(-155)
       helping_hands_assy();
   }
}

