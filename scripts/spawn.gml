///spawn(object)

// pick the location
sx = random(room_width);
sy = random(room_height);
while (!place_free(sx, sy)) 
{
    sx = random(room_width);
    sy = random(room_height);
}

// spawn
instance_create(sx, sy, argument0);