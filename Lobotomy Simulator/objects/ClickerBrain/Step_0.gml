timer -= 1/60

if clicks < 1 {
	instance_create_depth(0, 0, -100, Flashbang, {persist : true, roomgoto : RV_Lobbymy})
}