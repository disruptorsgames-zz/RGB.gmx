///setFullscreen(value, window_width, window_height)
window_set_fullscreen(argument0);
view_wview[0] = ternary(argument0, display_get_width(), argument1);
view_hview[0] = ternary(argument0, display_get_height(), argument2);
display_reset(0, false);