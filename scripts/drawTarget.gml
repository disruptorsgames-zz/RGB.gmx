d3d_set_lighting(false);

if (instance_exists(o_player) && o_player.target == id)
{
    var s = ternary(width > 10, width + 8, width);
    draw_rectangle_color(x - s, y - s, x + s, y + s, c_black, c_black, c_black, c_black, true);
}
    
d3d_set_lighting(true);