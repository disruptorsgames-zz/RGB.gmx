repeat(round(random(argument0)))
{
    with (instance_create(x, y, o_float))
    {
        direction = random(360);
        speed = random(0.5);
        size = 1;
        color = argument1;
    }
}
