grav += 1.9

if place_meeting(x, y + grav, GeometryGround) or place_meeting(x, y + grav, GeometryBlock) and grav > 0 {
	if not place_meeting(x, y + 1, GeometryGround) and not place_meeting(x, y + 1, GeometryBlock) {
		audio_play_sound(Feet, 0, 0)
	}
	
	while not place_meeting(x, y + 1, GeometryGround) and not place_meeting(x, y + 1, GeometryBlock) {
		y += 1
	}
	grav = 0
}

if place_meeting(x, y + 1, GeometryGround) or place_meeting(x, y + 1, GeometryBlock) {
	if angle >= 315 or angle < 45 {
		angle = 0
	}
	if angle >= 45 and angle < 135 {
		angle = 90
	}
	if angle >= 135 and angle < 225 {
		angle = 180
	}
	if angle >= 225 and angle < 315 {
		angle = 270
	}
}
else {
	angle += 6
}

y += grav

if mouse_check_button_pressed(mb_left) or keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_up) {
	buffer = true
}

if (mouse_check_button(mb_left) or keyboard_check(vk_space) or keyboard_check(vk_up)) and (place_meeting(x, y + 1, GeometryGround) or place_meeting(x, y + 1, GeometryBlock)) and not place_meeting(x, y, GeometryBlock) {
	audio_play_sound(FireInTheHole, 0, 0, 1, 0, random_range(0.5, 2))
	grav = -25
	buffer = false
}

if buffer and place_meeting(x, y, GeometryOrb) {
	audio_play_sound(FireInTheHole, 0, 0, 1, 0, random_range(0.5, 2))
	grav = -24
	buffer = false
}

if grav > 29 {
	grav = 29
}

if place_meeting(x, y, GeometrySpike) or position_meeting(x, bbox_bottom - 16, GeometryBlock) {
	global.addamountmulti -= 1
	alarm[1] = 1
	
	x = xstart
	y = ystart
	
	grav = 0

	direction = 0
	speed = 11

	buffer = false
	angle = 0

	alarm[0] = 60
	
	audio_stop_all()
}

if not position_meeting(x, bbox_bottom - 16, GeometryBlock) and position_meeting(bbox_right, bbox_bottom, GeometryBlock) {
	while place_meeting(x, y, GeometryBlock) {
		y -= 1
	}
}

if place_meeting(x, y, GeometryEnd) or global.addamountmulti == 0 {
	global.starsadd = global.addamountmulti + 1
	instance_create_depth(0, 0, -100, Flashbang, {persist : true, roomgoto : RV_Lobbymy})
}