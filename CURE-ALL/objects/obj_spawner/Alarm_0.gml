/// @description Insert description here
// You can write your code in this editor


// bind y between 100-300 and 860-1100 so it doesnt run into the orbit of the player
instance_create_layer(choose(10,700), choose(random_range(50, 400), random_range(900,1200)),
					"Instances",choose(obj_grumpy,obj_crafty,obj_sparky,obj_sappy,obj_chirpy,
					obj_brainy,obj_preachy));//obj_brainy,obj_preachy));
					
alarm[0] = spawn_rate; // add CHOOSE(1,2,3) here later for variety