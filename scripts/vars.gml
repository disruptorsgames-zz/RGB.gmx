///vars(variable)
var text = argument0;
text = string_replace(text, "%t", ternary(instance_exists(o_player.target), object_get_name(o_player.target.object_index), ""));
text = string_replace(text, "%hp", ternary(instance_exists(o_player), string(o_player.health), ""));
text = string_replace(text, "%mp", ternary(instance_exists(o_player), string(o_player.mana), ""));
return text;
