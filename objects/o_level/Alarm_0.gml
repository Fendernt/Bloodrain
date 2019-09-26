/// @description 
for(var _y = 1; _y < room_height; _y+=32){
	for(var _x = 1; _x < room_width; _x+=32){
		
		var map_id = layer_tilemap_get_id(layer_get_id("WallTiles"));
		var data = tilemap_get_at_pixel(map_id, _x, _y) & tile_index_mask;
		if data !=0 {
			instance_create_layer(_x,_y,"Instances",o_collidable);	
		}
		else {
			//do nothing	
		}
	} 	
}
