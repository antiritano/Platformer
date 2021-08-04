/// @description Insert description here
// You can write your code in this editor
switch (state)
{
 case state.idle: ; break;
 case state.swoop: ; break;
 case state.flee: ; break;
}

if (instance_exists(oPlayer))
{
// Idle code
if (distance_to_object(oPlayer) < aggro_range)
{
 state = state.swoop; // Switch states
 hdir = sign(oPlayer.x - x); // Horizontal direction to player
}

vdir = 1; // Bat starts by going down, assuming it will generally be perched high
if (y < oPlayer.y - max_swoop) {vdir = 1;} // If bat is too high, start flying down
if (y > oPlayer.y + max_swoop) {vdir = -1;} // If bat is too low, start flying up

x += hdir;
y += vdir;

if ((abs(oPlayer.x - x) > turn_distance) && (sign(oPlayer.x - x) == -hdir)) // If bat is further than turn_distance and facing away from player
{
 hdir = -hdir; // Reverse direction
}

// Flee code
// Similar to swoop, but make it move away from the player
if (distance_to_object(oPlayer) > safe_distance) {state = state.idle;}

if (hdir !=0) image_xscale = sign(hdir);

}

if (hp <= 0)
{
instance_change(oDead,true)
}
if (counter_footsteps==0) && (distance_to_object(oPlayer) < aggro_range)
{
	audio_sound_pitch(batflap, random_range(1.2, 1.6))
    audio_play_sound(batflap,5, false);
    counter_footsteps = 20; // number of steps to wait before trying to play the sound again
}
else if (counter_footsteps>0) counter_footsteps--;