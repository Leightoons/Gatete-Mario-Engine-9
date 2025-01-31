/// @description Item check

//Leaf
if (sprite_index == spr_leaf) {

    //Play 'Sprout' sound
    audio_play_sound(snd_sprout, 0, false);

    //Turn into a real leaf
    instance_create_depth(x, ystart, 11, obj_leaf_sprout);
}

//Feather
else if (sprite_index == spr_feather) {

    //Play 'Sprout' sound
    audio_play_sound(snd_sprout, 0, false);

    //Turn into a real feather
    instance_create_depth(x, ystart, 11, obj_feather_sprout);
}

//Propeller Mushroom
else if (sprite_index == spr_propellershroom) {

	//Play 'Sprout' sound
	audio_play_sound(snd_sprout, 0, false);
	
	//Turn into a real propeller shroom
	instance_create_depth(x, ystart, 11, obj_propellershroom_sprout);
}

//Superbell
else if ((vspeed < 0) && (sprite_index == spr_superbell)) {

	//Play 'Sprout' sound
	audio_play_sound(snd_sprout, 0, false);
	
	//Turn into a superbell
	with (instance_create_depth(x, ystart, 11, obj_superbell)) {
		
		depth = 10;
		yspeed = -3;
	}
}

//Beanstalk
else if (sprite_index == spr_beanstalk) {

	instance_create_layer(x, y, "Main", obj_beanstalk);
}

//Side Beanstalk
else if (sprite_index == spr_beanstalk_side) {

	with (instance_create_layer(x, y, "Main", obj_beanstalk)) {
		
		sprite_index = spr_beanstalk_side;
		vinetype = 1;
	}
}
    
//Otherwise
else {

    //Play 'Sprout' sound
    audio_play_sound(snd_sprout, 0, false);
	if (big == 1) {
	
		shake_camera(6, ceil(audio_sound_length(snd_sprout) * room_speed), true);
	}
    
    //If moving up...
    if (vspeed < 0) {
    
        /*...and the sprite is one of the following, make it bounce.
        if (sprite_index == spr_pswitch)
        || (sprite_index == spr_gswitch)
        || (sprite_index == spr_trampoline)
        || (sprite_index == spr_powblock_blue)
        || (sprite_index == spr_detonator)
        || (sprite_index == spr_key)
        || (sprite_index == spr_egg)
        || (sprite_index == spr_egg_r)
        || (sprite_index == spr_egg_y)
        || (sprite_index == spr_egg_b)  
        || (sprite_index == spr_watermelon_fire)
        || (sprite_index == spr_watermelon_ice)
        || (sprite_index == spr_watermelon_bomb) {
        
            //Set vertical speed
            vspeed = -2.5;
            gravity = 0;
            
            //Deny solid check
            ready = 1;
            alarm[1] = -1;
            
            //Make it bounce outside the block
            bouncy = 1;
        }
		*/
    }
    
    //Exit
    exit;
}

//Destroy
instance_destroy();