if instance_exists(o_player) {
    var xx = (o_player.x div CELL_WIDTH) * CELL_WIDTH + CELL_WIDTH/2
    var yy = (o_player.y div CELL_HEIGHT) * CELL_HEIGHT + CELL_HEIGHT/2
    //Now got coords in grid, now check if a path is possible
    if mp_grid_path(grid_, path, x,y,xx,yy,false) {
        //Move along path
        path_start(path,spd,path_action_stop,false);
    }
}
alarm[0] = room_speed;