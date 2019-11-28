// BOSL Library 
include <bosl/constants.scad>
use <bosl/shapes.scad>
use <bosl/transforms.scad>

// dimensioning libray
// Need to customizing sizing for each part
DOC_SCALING_FACTOR = 1;
include</dimlines/dimlines.scad>
DIM_LINE_WIDTH = .5 * DOC_SCALING_FACTOR;
DIM_SPACE = .1 * DOC_SCALING_FACTOR;


// makers cube files
/*
use<back_spin_plate.scad>
use<din_rail_clip.scad>
use <../vitamins/alligator_clip.scad>
use <../printed/armature_union.scad>
*/

use<../vitamins/rivet.scad>


// Obiscad attach utility
use <obiscad/obiscad/attach.scad>


// https://github.com/nophead/NopSCADlib
// referenced from the OPENSCADPATH env variable
include <NopSCADlib/core.scad>  
include <NopSCADlib/utils/round.scad>



rivet_hole_pattern_typical = [7.93, 41.27, 74.6, 107.93, 141.27 ];
rivet_hole_pattern_top     = [14.60, 41.27, 74.6, 107.93, 134.60 ];
neg_shift = -149/2 - inch(1)/2;
pos_shift = 149/2 + inch(1)/2;
 

// *************** Render ******************
  l = 149.2; 

  // add rivets to square tube assy
  //rivet_array(rivet_hole_pattern_typical, l=l, side="front")
  //rivet_array(rivet_hole_pattern_typical, l=l, side="top")


  // add 5mm holes to square tube assy

//dimensioned_top_rail();
//dimensioned_vertical_rail();
dimensioned_bottom_rail();

  //dimensioning(tube_len = l, pat= rivet_hole_pattern_top);

// *************** Modules ******************
module dimensioned_top_rail(){
  yrot(0)
  dimensioning(tube_len = l, pat= rivet_hole_pattern_top, pos="top")
  drill_hole_pattern(rivet_hole_pattern_top, l=l, side="top")
  dimensioning(tube_len = l, pat= rivet_hole_pattern_typical, pos="front")
  drill_hole_pattern(rivet_hole_pattern_typical, l=l, side="front")
  square_tube(l=l); 

  // label
  color("orange")
  zmove(inch(1)/2)
  ymove(30) 
  xmove(-50)
  scale(.8)
  text(str("Top Horizontal Rail"));
  //text(str("5MM Dia Holes (5ea)"));
}

module dimensioned_bottom_rail(){
/*j
  translate([rivet_hole_pattern_typical[0], inch(1)/2,  DIM_HEIGHT])
  leader_line(angle=-70, radius=2.5, angle_length=DIM_SPACE * 12,
      horz_line_length=.25, line_width=DIM_LINE_WIDTH, text="TEST");
*/

yrot(0)
  //dimensioning(tube_len = l, pat= rivet_hole_pattern_top, pos="top")
  //drill_hole_pattern(rivet_hole_pattern_top, l=l, side="top")
  dimensioning(tube_len = l, pat= rivet_hole_pattern_typical, pos="front")
  drill_hole_pattern(rivet_hole_pattern_typical, l=l, side="front")
  square_tube(l=l); 

  // label
  color("orange")
  zmove(inch(1)/2)
  ymove(30) 
  xmove(-60)
  scale(.8)
  text(str("Bottom Horizontal Rail"));
  //text(str("5MM Dia Holes (5ea)"));
  }

module dimensioned_vertical_rail(){
  yrot(90)
  dimensioning(tube_len = l, pat= rivet_hole_pattern_typical, pos="top")
  drill_hole_pattern(rivet_hole_pattern_typical, l=l, side="top")
  dimensioning(tube_len = l, pat= rivet_hole_pattern_typical, pos="front")
  drill_hole_pattern(rivet_hole_pattern_typical, l=l, side="front")
  square_tube(l=l); 

  yrot(90) 
  color("orange")
  zmove(inch(1)/2)
  ymove(30) 
  xmove(-20)
  scale(.8)
  text(str("Vertical Rail"));

}

module dimensioning(tube_len=200, pat = [], pos="top", desc=""){
    children(0);

rot_val = (pos=="front")? 90: 0;
xrot(rot_val)
union(){


  // dimension vertical lines

   // outer edge vertical line
   color("black")
   xmove((-tube_len/2))
   zmove(inch(1)/2)
   zrot(90)
   line(length=24, width=DIM_LINE_WIDTH, height=DIM_HEIGHT, left_arrow=false, right_arrow=false);

  color("red")
  zmove(inch(1)/2)
  //leader_line(angle=-45, radius=2.5, angle_length=DIM_SPACE * 12,
  leader_line(angle=-45, radius=2.5, angle_length=DIM_SPACE * 100,
        horz_line_length=5, line_width=DIM_LINE_WIDTH, text="5MM dia - 5ea");


   // inner vertical lines
   color("black")
   for (i = pat){
        xmove((-tube_len/2) + i)
        zmove(inch(1)/2)
        zrot(90)
        line(length=24, width=DIM_LINE_WIDTH, height=DIM_HEIGHT, left_arrow=false, right_arrow=false);
   } 

   // last outer edge vertical line
   color("black")
   xmove((tube_len/2))
   zmove(inch(1)/2)
   zrot(90)
   line(length=24, width=DIM_LINE_WIDTH, height=DIM_HEIGHT, left_arrow=false, right_arrow=false);



   // dimensions 
   color("black")
   ymove(20)
   zmove(inch(1)/2)
   for (i = [0:4]){
       if (i == 0){
        xmove((-tube_len/2))
        //dimensions(length=pat[i], line_width=DIM_LINE_WIDTH, loc=DIM_CENTER );
        dimensions(length=pat[i], line_width=DIM_LINE_WIDTH, loc=DIM_LEFT );
        xmove((-tube_len/2) + pat[i] )
        dimensions(length=pat[i+1] - pat[i], line_width=DIM_LINE_WIDTH, loc=DIM_CENTER );

     
       }else{
         xmove((-tube_len/2) + pat[i] )
          if (i < 4) {
            dimensions(length=pat[i+1] - pat[i], line_width=DIM_LINE_WIDTH, loc=DIM_CENTER );
          }else{
            xmove((-tube_len/2) + pat[i-2] )
             dimensions(length=tube_len - pat[i], line_width=DIM_LINE_WIDTH, loc=DIM_RIGHT );
          }
       }
    }

   
        //translate([HOLE1_XOFFSET, HOLE_Y1_OFFSET, DIM_HEIGHT])
        //translate([inch(1)/2, pat[1], DIM_HEIGHT])
/*
    xmove(-20) 
    zmove(inch(1)/2)
    ymove(6)
    scale(.5)
    //text(str("Rail - "));
    //text(str("Top Rail - ", pos));
*/
}
  // dimension lines

}

module square_tube(l=200){
   
   vitamin(str(" : 1IN Aluminum Square Tube " , l, " MM long"));

   color("silver" , 1)
   difference(){

        difference(){
            cube([l, inch(1), inch(1)], center=true);
            cube([l + 1 , inch(1)-2, inch(1)-2], center=true);
        }
   }


}

module drill_hole_pattern(pattern_dim = [], side="front", l=200){
   // Front view is Z/X
   // sides are front, back, left, right
   // reference starts from left to right 

difference(){
   children(0);
   
 //color("black")
   if (side == "front"){
       xrot(90)
       for (i = pattern_dim){
            zmove(inch(1)/2)
            xmove(-l/2 + i)
            drill(5/2, h = 25);
        }
   }

   if (side == "back"){
       xrot(90)
       for (i = pattern_dim){
            zmove(-inch(1)/2)
            xmove(-l/2 + i)
            drill(5/2, h = 25);
        }
   }

   if (side == "top"){
       for (i = pattern_dim){
            zmove(inch(1)/2)
            xmove(-l/2 + i)
            drill(5/2, h = 25);
        }
   }

   if (side == "bottom"){
       xrot(180)
       for (i = pattern_dim){
            zmove(inch(1)/2)
            xmove(-l/2 + i)
            drill(5/2, h = 25);
        }
   }

} // difference   
 

}
