/// @description Insert description here
// You can write your code in this editor


if(wandering) {
	
	//	spawn on LEFT
	if (x = 10)
	//	move RIGHT
		move_towards_point(700,y,12);
		
	//	spawn on RIGHT
	else if ( x = 700)
	
		//	move LEFT
		move_towards_point(10,y,12);
}

//	if there's no bond, detach
if bond_strength = 0
{
	maintained = false;
	broken = true;
}

if mouse_check_button_pressed(mb_left) 
{
	mx = mouse_x;
	my = mouse_y;
	
	//	if attempt to MAINTAIN and it's UNBREAKABLE, can't further MAINTAIN 
	if (position_meeting(mx,my,id) && !broken && !unbreakable) //	need ID for this instance, so only 1 heart moves to player
	{	
		wandering = false;
		
		//global.bond_grow = true;
		move_towards_point( obj_player.x, obj_player.y, 12 );

		maintained = true; // this is only to start rotation
	}
	//I think the code above is self explanatory but if you need any help understanding some part of it please let me know.
}	

//	if OTHER enters PLAYER AURA
if place_meeting(id.x,id.y,obj_player) // ONLY HAPPENS ONCE @ COLLISION, SO MOD ORBIT PLACE HERE
{
	//	(beginning of orbit, based on where the collider of OTHER intersects PLAYER) 
	//	(need tan because the point associated with the THETA is the one intersecting with the orbit collider)
	//	(need arctan2 to capture THETA, THETA == starting point of rotation; also get THETA in right quadrant)
	//	(need id to reference THIS INSTANCE of the OTHER)
	
	//	...rise is 300. run is 300
	orbit_place = radtodeg(arctan2(id.y, id.x)); 
	
	//	WHERE OTHER STARTS ORBITING
	orbit_place = point_direction(obj_player.x,obj_player.y,id.x,id.y);
	
	//	CLOCKWISE || COUNTERCLOCKWISE
	orbit_direction = choose(1,0);
		
	id.hspeed = 0;
	id.vspeed = 0;

	can_orbit = true;
}

if(can_orbit && maintained && !broken && !unbreakable)
{
	bond_fade = true; 
	
	id.x = orbit_other.x + lengthdir_x(orbit_length, orbit_place); // these 3 instructions make sure that in each step the orbiting object adjusts to the proper position
	id.y = orbit_other.y + lengthdir_y(orbit_length, orbit_place); // these 3 instructions make sure that in each step the orbiting object adjusts to the proper position
	
	
	//	ACTUAL ORBIT
	if orbit_direction
	{
		orbit_place += orbit_speed; // these 3 instructions make sure that in each step the orbiting object adjusts to the proper position
	}
	else
	{
		orbit_place -= orbit_speed;
	}
}

if care = 3
{
	id.hspeed = 0;
	id.vspeed = 0;
	
	unbreakable = true;

	if unbreakable
	{
		score+=110;	//	Need += 150 to instill sense of accomplishment
		care = 0;	//	RESET care so score only increments ONCE in ONE FRAME
	}
}

//	send other to HELL
//	if the BOND fades
if broken = true
{
	id.hspeed = 0;
	id.vspeed = 0;
	
	id.y+=11; // move other downward
}

//	If HEALED
if unbreakable
	id.y-=11; // HEART ascends