include </dotSCAD/src/rounded_square.scad>;
include <NopSCADlib/core.scad> 
include <BOSL/constants.scad>
include <BOSL/transforms.scad>
use <BOSL/shapes.scad>

// ============ Constants ===============
IN = 25.4;
MM = 1;
$fn = 30;


rubber_foot_dim  = [24*MM, 24*MM, 4.8*MM ];


// scaling for 3D printers

HOLE_SIZE_COEF = 1.1;

NONE   = 0;
TEVO   = 1;
ENDER3 = 2;

3DPRINTER_SCALE = [
    [1, 1, 1],    // NONE.  no rescaling
    [1, 1, 1], // TEVO
    [1, 1, 1]  // ENDER3
];


// ============ Renders ===============

rubber_foot();

// ============ Modules ===============

module rubber_foot(explode_d=[0,0,0]){
  vitamin(" : 1 inch sq rubber foot");

  //explode(d=[0,0,20],offset=[0,0, 0], explode_children = false, show_line= true) 
  explode(d=explode_d,offset=[0,0, 0], explode_children = false, show_line= true) 
  color("wheat", .5) 
cuboid(rubber_foot_dim, fillet=1, 
  edges=EDGE_TOP_FR + EDGE_TOP_RT + EDGE_FR_RT 
  + EDGE_FR_LF + EDGE_TOP_LF + EDGE_TOP_BK + EDGE_BK_RT + EDGE_BK_LF, 
  $fn=24
  );


}

module rubber_foot_diff(explode_d=[0,0,0]){
  //vitamin(" : 1 inch sq rubber foot");

  //explode(d=[0,0,20],offset=[0,0, 0], explode_children = false, show_line= true) 
  explode(d=explode_d,offset=[0,0, 0], explode_children = false, show_line= true) 
  color("wheat", .5) 
cuboid(rubber_foot_dim, fillet=1, 
  edges=EDGE_TOP_FR + EDGE_TOP_RT + EDGE_FR_RT 
  + EDGE_FR_LF + EDGE_TOP_LF + EDGE_TOP_BK + EDGE_BK_RT + EDGE_BK_LF, 
  $fn=24
  );


}