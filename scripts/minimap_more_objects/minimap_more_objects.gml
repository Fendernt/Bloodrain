///@function minimap_more_objects(object1,object1mnimpspr,object2,object2mnimpspr,...,object8,object8mnimpspr);
///@description Add more objects to the minimap, up to 8
///@param object# The object to be drawn on the minimap
///@param object#mnimpspr The minimap sprite of the object to be drawn on the minimap
///@param ... Up to 8 objects
/*
NOTE:
MUST BE CALLED AFTER minimap_objects();
Place in create event of obj_minimap
Do NOT include the player object in this list
You can have a total of 8 objects, any more will cause an error
The minimap sprites must have the same origin as the actual sprites (i.e. if the wall sprite is centered, the wall minimap sprite must also be centered)
*/
for (i=0; i<argument_count; i+=1)
{ds_list_add(global.minimapobjects,argument[i]);}