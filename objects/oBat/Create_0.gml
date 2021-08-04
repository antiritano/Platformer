/// @description Insert description here
// You can write your code in this editor
enum state {idle, swoop, flee};
max_swoop = 3; // How far above or below the player's center the bat goes
turn_distance = 50; // How far pastthe player bat goes before turning
aggro_range = 200; // How close before attacking
safe_distance = 500; // Distance from player before fleeing bat goes idle
state = state.idle; // Idle by default
hdir = 0
vdir = 0
flash = 0
hp = 1
counter_footsteps = 0