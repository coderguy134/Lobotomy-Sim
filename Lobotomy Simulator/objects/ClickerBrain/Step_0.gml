timer -= 1/60

if clicks < 1 or timer < 0 {
	if timer > 12.5 {
		global.addamountmulti = 2
		global.starsadd = 3
	}
	else if timer > 10 {
		global.addamountmulti = 1.5
		global.starsadd = 2
	}
	else if timer > 7.5 {
		global.addamountmulti = 1
		global.starsadd = 1
	}
	if timer < 0 {
		global.addamountmulti = 0
		global.starsadd = 0
	}
	
	instance_create_depth(0, 0, -100, Flashbang, {persist : true, roomgoto : RV_Lobbymy})
}