/// @description Insert description here
// You can write your code in this editor

depth = 10;

orbit_direction = 1;

orbit_other = obj_player; // adapt to the name of your player object's name
orbit_speed = 2.25; // how fast the orbiting object travels within it's orbit
orbit_length = 280; // how big the orbit circunference is
//	(bug: freezes @ 250)

orbit_place = 0; // starting position of the object - in this case at the right of the player (not much relevant as it will change by orbiting in the steps)

spawn_timer = room_speed * 3;

mx = x;
my = y;

wandering = true;

global.can_orbit = false;
//clicked = global.active;

can_orbit = false;

mx = x; 
my = y;

bond = false;

active = false;
broken = false;

bond_strength = 70;

care = 0;
unbreakable = false;

bond_grow = false;
bond_fade = false;
maintained = false;
broken = false;

//bond_strength = 50;


global.active = false;
global.broken = false;

global.bond_strength = 80;

global.care = 0;
global.unbreakable = false;

global.bond_grow = false;
global.bond_fade = false;
global.maintained = false;
global.broken = false;

global.bond_strength = 50;

