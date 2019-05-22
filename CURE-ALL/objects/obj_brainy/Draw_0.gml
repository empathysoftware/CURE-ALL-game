/// @description Insert description here
// You can write your code in this editor

draw_self();

//	BASE CASES

//	If bond fades,
//	This is so the bond_width remains a positive integer
if (bond_strength <= 0)
{
	//	Reset to initial bond strength
	bond_strength = 70;
}

//	FORM BOND
//	(draw line from HEART to OTHER)
if(maintained && !broken)
{	

	draw_line_width_color(id.x,id.y,obj_player.x,obj_player.y, bond_strength, c_blue, c_blue);
	
	//	if MAINTAIN while BONDED in AURA
	//	(if click inside mask while active)
	if(mouse_check_button_pressed(mb_left) && position_meeting(mx,my,id) && can_orbit)
	{	
		care++;
		
		//	BOND is RESET
		//	(redraw line with reset thickness)
		bond_strength = 70;
		draw_line_width_color(id.x,id.y,obj_player.x,obj_player.y, bond_strength, c_blue, c_blue);
	}
	
	if unbreakable
	{
		bond_strength--;
		maintained = false;
	}
	
	if bond_fade
		bond_strength--; // rate of BOND strength decrease
}