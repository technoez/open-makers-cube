
include <NopSCADlib/core.scad>  
include <BOSL/transforms.scad>


module small_breadboard(){
    vitamin(" : Small Breadboard");
    zmove(8) zrot(-90) xmove(-45) ymove(-27) 
    import("small_breadboard.stl", convexity=3); 
}