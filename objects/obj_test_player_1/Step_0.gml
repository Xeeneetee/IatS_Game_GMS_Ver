// inputs. WASD configuration.

right_key = keyboard_check(ord("D"));
up_key = keyboard_check(ord("W"));
left_key = keyboard_check(ord("A"));
down_key = keyboard_check(ord("S"));

// get xspd and yspd

xspd = (right_key - left_key) * move_spd;
yspd = (down_key - up_key) * move_spd;

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