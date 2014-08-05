///damage(object, amount)
cout(object_get_name(argument0.object_index) + " took " + string(argument1) + " damage!");
return (ternary(instance_exists(argument0), argument1 * ternary(argument0.invul, 0.75, 1.0), 0));
