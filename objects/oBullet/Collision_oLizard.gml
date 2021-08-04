with (other)

{
	audio_play_sound(choose(Lizard_hit_1,Lizard_hit_2, Lizard_hit_3), 0, false);

	hp = hp - 1;
	flash = 3;
	
}

instance_destroy();