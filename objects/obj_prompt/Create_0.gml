//Both TTL and timer are FRAMES not seconds!!!

//Do not let TTL be less than third of a second (otherwise it becomes too difficult
ttl = max(ttl, room_speed/3);
//Do not let TTL be more than 5 seconds (otherwise it becomes too easy)
ttl = min(ttl, 5*room_speed);
//Set timer to TTL plus a small buffer of third of a second, to allow slight 
timer = ttl + input_buffer;

//Randomize button prompt
image_index = irandom_range(0, 3);