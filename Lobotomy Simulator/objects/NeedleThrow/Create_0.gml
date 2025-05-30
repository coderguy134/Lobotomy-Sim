target_x = 0
target_y = 0

thrown = false
destroy = false
done = false

impact = 0

image_xscale = 8
image_yscale = 8

if tries == 0 {
	global.addamountmulti = 0
	global.starsadd = 1
	instance_create_depth(0, 0, -100, Flashbang, {persist : true, roomgoto : RV_Lobbymy})
}