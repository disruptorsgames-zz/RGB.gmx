d3d_set_lighting(false);

if (instance_exists(o_player) && o_player.target == id)
    draw_rectangle_color(x - size, y - size, x + size, y + size, c_white, c_white, c_white, c_white, true);
    
d3d_set_lighting(true);
