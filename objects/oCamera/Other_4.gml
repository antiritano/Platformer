if room = Menu
{
audio_play_sound(MenuScreen, 1, true);
}
if room = Room1
{
	audio_stop_sound(MenuScreen)
	audio_stop_all()
audio_play_sound(Background_music, 1, true);
}