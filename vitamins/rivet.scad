
include <NopSCADlib/core.scad>  
include <bosl/constants.scad>
//use <bosl/shapes.scad>
use <bosl/transforms.scad>
// ============ Constants ===============
IN = 25.4;
MM = 1;


// ============== Parameters ===============

// M3 threaded rivet
rivet_head_outer_dia = 7.1*MM;
rivet_head_inner_dia = 3.4*MM;
rivet_head_thk       = .8*MM;
rivet_len            = 9.1*MM;
//rivet_body_outer_dia = 4.7*MM;
rivet_body_outer_dia = 5*MM;
rivet_body_inner_dia = 2.9*MM;
rivet_hole_dia       = 5*MM; 


// crimp params
rivet_crimp_inner_dia = rivet_body_outer_dia;
rivet_crimp_outer_dia = rivet_body_outer_dia + 1*MM;
rivet_crimp_height    = 1*MM; // channel height
rivet_crimp_depth     = 2*MM; // thickness of material crimping to.

// ========== Render ==================
rivet();

//rivet_block_cutaway();



// ========== Modules ==================
module rivet(){
  //$explode=1;
  vitamin(" : 3MM threaded rivet insert");

  {

    color("grey", 1)
    rivet_body();
    translate([0,0,rivet_len/2])
      color("grey", 1)
      rivet_head();
  }

    
}

module rivet_body(){
  difference(){
    cylinder(d=rivet_body_outer_dia, h= rivet_len - rivet_head_thk , $fn=30, center=true);
    cylinder(d=rivet_body_inner_dia, h= (rivet_len - rivet_head_thk) + 2, $fn=30, center=true);
  }
}

module rivet_body_solid(ht = rivet_len + 1*MM){
    //cylinder(d=rivet_body_outer_dia, h= rivet_len + 1*MM , $fn=30, center=true);
    cylinder(d=rivet_body_outer_dia, h= ht , $fn=30, center=true);
}



module rivet_head(){
  difference(){
      cylinder(d=rivet_head_outer_dia, h=rivet_head_thk, $fn=30, center=true);
      cylinder(d=rivet_head_inner_dia, h=rivet_head_thk+1, $fn=30, center=true);
  }
}


// use this in a difference operation to create a socket ready to accept a threaded insert 
//module rivet_plug(){
module rivet_plug(ht = rivet_len + 1*MM){
   rivet_body_solid(ht);
   translate([0, 0, ((rivet_len - rivet_head_thk)/2 - rivet_crimp_height/2) - rivet_crimp_depth  ])
      cylinder($fn=30, h=rivet_crimp_height , d=rivet_crimp_outer_dia, center = true);
      //cylinder($fn=30, h=ht , d=rivet_crimp_outer_dia, center = true);

}

module rivet_block_cutaway(){
difference(){

    difference(){

    union(){
        translate([0,0,-1.9])
        cube([10,10,12], center=true);
    }
    rivet_plug();

    }

translate([6,0,0])
    cube([10,10,12], center=true);


}
}


module rivet_array(pattern_dim=[], side="front", l=200){
   children(0);
   if (side == "front"){
       xrot(90)
       for (i = pattern_dim){
            zmove(inch(1)/2 - 4)
            xmove(-l/2 + i)
            explode(20) rivet();
        }
   }

   if (side == "back"){
       xrot(90)
       for (i = pattern_dim){
            zmove(-inch(1)/2 + 4)
            xmove(-l/2 + i)
            explode(20) rivet();
        }
   }

   if (side == "top"){
       for (i = pattern_dim){
            zmove(inch(1)/2 - 4)
            xmove(-l/2 + i)
           explode(20)  rivet();
        }
   }


   if (side == "bottom"){
       xrot(180)
       for (i = pattern_dim){
            zmove(inch(1)/2 - 4)
            xmove(-l/2 + i)
            explode(20) rivet();
        }
   }
}
/* ============== Functions ============== */


