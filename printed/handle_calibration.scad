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


IN = 25.4;
MM = 1;
$fn = 30;

// TEVO Printer

/**
  Instructions:
  Print cube and measure.  Calculate x,y,circle dia coef and change
  constant values below and print again.
*/
XCOEF   = 1;
YCOEF   = .992;
ZCOEF   = 1;
DIACOEF = 1.1;

cube_dim = [200*MM * XCOEF, 1*IN * YCOEF, 1*MM * ZCOEF];

3mmCircle();

module 3mmCircle(){
difference(){

 cube([10,10, 1], center= true);
   cylinder(d=3*MM * DIACOEF, h=1*MM,center = true);
 }
}

module box1(){

difference(){

    cube(cube_dim);

    translate([20*MM, cube_dim[1]/2])
    cylinder(d=8*MM * DIACOEF);
}

}