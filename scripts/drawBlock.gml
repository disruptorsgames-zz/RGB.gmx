///drawBlock(color, size, texture, shell color)

// outline
draw_set_color(argument3);
outline = argument1 + 0.5;
d3d_draw_block(-outline, -outline, argument1 * 2 + 0.5, outline, outline, -0.5, background_get_texture(b_default), 1, 1);
// box
draw_set_color(argument0);
d3d_draw_block(-argument1, -argument1, 0, argument1, argument1, argument1 * 2, argument2, 1, 1);
// reset color
draw_set_color(c_white);
