image_xscale -= 0.025
image_yscale -= 0.025

image_angle += rotspeed

if impact == 1 {
	layer_shader("Instances", -1)
	layer_shader("Needle", -1)
	layer_shader("Background", -1)
		
	game_set_speed(60, gamespeed_fps)
		
	//audio_play_sound(LobotomySFX, 0, false)
	room_goto(RV_Lobbymy)
}

if image_xscale == 1 and place_meeting(x, y, NeedleBrain) and impact == 0 {
	layer_shader("Instances", FullBlack)
	layer_shader("Needle", FullBlack)
	layer_shader("Background", FullWhite)
	
	game_set_speed(2, gamespeed_fps)
	
	impact = 1
}

if image_xscale < 0 {
	instance_destroy()
}