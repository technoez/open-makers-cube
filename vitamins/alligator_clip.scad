
include <NopSCADlib/core.scad>  
include <BOSL/transforms.scad>


module alligator_clip(){
     vitamin(" : Alligator Clip");
    // aligator clip
    zmove(8) zrot(-90) xmove(-45) ymove(-27) 
    //import("../scad/alligator_clip.stl", convexity=3); 
    import("alligator_clip.stl", convexity=3); 
}
