if mouse_check_button(mb_left) and prevon {
	x = mouse_x - mouseoffset[0]
	y = mouse_y - mouseoffset[1]
	
	velocityx = x - xprevious
	velocityy = y - yprevious
}
else {
	x += velocityx
	y += velocityy
	
	if abs(velocityx) < 2 {
		velocityx = 0
	}
	if abs(velocityy) < 2 {
		velocityy = 0
	}
	velocityx -= sign(velocityx) * 2
	velocityy -= sign(velocityy) * 2
	
	if x + velocityx < 0 or x + velocityx > 960 {
		velocityx = -velocityx
	}
	if y + velocityy < 0 or y + velocityy > 540 {
		velocityy = -velocityy
	}
}

if not mouse_check_button(mb_left) {
	prevon = false
}

rotation += ((x - xprevious) + (y - yprevious)) / 10
image_angle -= rotation
if abs(rotation) < 1 {
	rotation = 0
}
rotation -= sign(rotation)

if x < 0 {
	x = 0
}
if x > 960 {
	x = 960
}
if y < 0 {
	y = 0
}
if y > 540 {
	y = 540
}

if impact > 0 {
	impact -= 1
	
	if impact == 0 {
		layer_shader("General", -1)
		layer_shader("Customers", -1)
		layer_shader("Background", -1)
		
		game_set_speed(60, gamespeed_fps)
		
		//audio_play_sound(LobotomySFX, 0, false)
		alarm[0] = 1
		room_goto([ClickerMinigame, IpadMinigame, NeedleTossMinigame, ClassicMinigame, BrainTossMinigame, JoeMetriDash1][irandom_range(0, 5)])
	}
}
var target = instance_place(x, y, Customer)
if instance_exists(target) {
	if target.lobotomizable and sqrt(power(velocityx, 2) + power(velocityy, 2)) > 50 {
		layer_shader("General", FullBlack)
		layer_shader("Customers", FullBlack)
		layer_shader("Background", FullWhite)
	
		game_set_speed(2, gamespeed_fps)
	
		impact = 1
		target.lobotomizable = false
	}
}