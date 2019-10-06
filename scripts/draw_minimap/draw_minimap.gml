///@function draw_minimap(minimapx,minimapy,viewnumber,playerobject,playerobjectmnimpsprite,range,minimapradius);
///@description Draw the minimap
///@param minimapx The x-coordinate to draw the minimap
///@param minimapy The y-coordinate to draw the minimap
///@param viewnumber The number of the view[0-7] that you are using to follow the player
///@param playerobject The object the minimap is based off
///@param playerobjectmnimpsprite The minimap sprite of playerobject
///@param range The range in pixels from the player object to be displayed on the minimap
///@param minimapradius Half of the width in pixels of the minimap sprite
/*
NOTE:
Your minimap sprite must be centered
This script must be run in the draw event of an object called obj_minimap
The bigger the range, the smaller the minimap sprites must be and vice versa. (e.g. 400 range = ~8x8 sprites | 256 range = ~10x10 sprites)
*/
//draw minimap
x = camera_get_view_x(view_camera[argument2])+argument0;
y = camera_get_view_y(view_camera[argument2])+argument1;
draw_self();
//draw objects
for (i=0; i<ds_list_size(global.minimapobjects); i+=1)
{
    with (ds_list_find_value(global.minimapobjects,i))
    {
        if (distance_to_object(argument3) < argument5)
        {
            var dstnc = argument6*(point_distance(argument3.x,argument3.y,x,y)/argument5);
            var ang = point_direction(argument3.x,argument3.y,x,y);
            draw_sprite_ext(ds_list_find_value(global.minimapobjects,other.i+1),0,other.x+lengthdir_x(dstnc,ang),other.y+lengthdir_y(dstnc,ang),1,1,image_angle,c_white,1);
        }
    }
}
//draw player
with (argument3)
{draw_sprite(argument4,0,obj_minimap.x,obj_minimap.y);}