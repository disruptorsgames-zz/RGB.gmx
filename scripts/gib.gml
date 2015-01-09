/// gib(count, color)
repeat(round(random(argument0)) + 16)
{
    with(instance_create(x, y, o_gib))
    {
        color = argument1;
    }
}