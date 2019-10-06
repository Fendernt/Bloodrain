///@description Clear memory
ds_list_destroy(global.minimapobjects);
/*
This function will remove the given list data-structure from memory, freeing up the resources it was using and removing all values that it contained.
This function should always be used when you are finished using the ds_list to prevent memory leaks that can slow down and crash your game.
*/