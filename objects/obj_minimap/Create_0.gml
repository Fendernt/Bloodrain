///@description Initialize minimap objects
minimap_objects(o_collidable,spr_minimap_wall,obj_enemy,spr_minimap_enemy);
//You must only call minimap_objects(); once
//Once you reach 8 objects to be drawn on the minimap use minimap_more_objects(); as many times as you require
//each minimap_more_objects(); is also still limited to 8 objects
//e.g. minimap_more_objects(obj_enemy9,spr_minimap_enemy9,...,obj_enemy16,spr_minimap_enemy16);
