// inputs. WASD configuration.

right_key = keyboard_check(ord("D")) || keyboard_check(vk_right);
up_key = keyboard_check(ord("W")) || keyboard_check(vk_up);
left_key = keyboard_check(ord("A")) || keyboard_check(vk_left);
down_key = keyboard_check(ord("S")) || keyboard_check(vk_down);

// get xspd and yspd

xspd = (right_key - left_key) * move_spd;
yspd = (down_key - up_key) * move_spd;

// set the sprite

mask_index = sprite[DOWN];

if abs(xspd) >= abs(yspd)
	{
		if xspd > 0 {face = RIGHT};
		if xspd < 0 {face = LEFT};
	}
	else
	{
		if yspd > 0 {face = DOWN};
		if yspd < 0 {face = UP};
	}
	
if xspd > 0 && face = LEFT {face = RIGHT};
if xspd < 0 && face = RIGHT {face = LEFT};

if yspd > 0 && face = UP {face = DOWN};
if yspd < 0 && face = DOWN {face = UP};

sprite_index = sprite[face];

// collision detection code

if place_meeting(x + xspd, y, obj_test_wall)
	{
		xspd = 0;	
	}
	
if place_meeting(x, y + yspd, obj_test_wall)
	{
		yspd = 0;	
	}

// actually moving the player

x += xspd;
y += yspd;

// animate

if xspd == 0 && yspd == 0
	{
		image_index = 0;
	}