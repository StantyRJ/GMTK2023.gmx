///scr_road_check()
next = self
full = true
open_spots = 0

for(i = 0; i < 4; i++)
{
    var inst = instance_place(x+lengthdir_x(16,(i)*90),y+lengthdir_y(16,(i)*90),all);
    if(inst == noone)
    {
        open_spots ++
    }
    else
    {
        if(inst.object_index == obj_tree)
            open_spots ++
    }
} 

if(open_spots > 1)
    full = false

if(open_spots > 0)
    next = noone
    
if(perma_no == true)
    next = self
    
alarm[0] = 10
