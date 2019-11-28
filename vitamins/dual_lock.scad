// libraries
include <BOSL/transforms.scad>
include <NopSCADlib/core.scad> 



//============  render ==============

dual_lock(149.2);


//============  modules  ==============
module dual_lock(length=149.2, explode_d=[0,0,0]){
     //vitamin("armature_wire() : 3MM Armature wire");
     vitamin(str(" :  3M Dual lock velcro " ,length, "mm long"));

     //explode(d=[0,0,20],offset=[0,0,0], explode_children = false, show_line = true) 
     explode(d=explode_d,offset=[0,0,0], explode_children = false, show_line = true) 
     color("cornsilk", .8) cube([length, inch(1), 3], center=true);
}