if x < 640 and lobotomized == false and walk {
	x += 5
	
	if x == 640 {
		lobotomizable = true
	}
}

if x > 160 and lobotomized and walk {
	x -= 3
}
if x <= 160 and lobotomized {
	GameManager.alarm[0] = max(irandom_range(60, 120) - global.stars * 5, 1)
	instance_destroy()
}

if lobotomizable == false and x == 640 and lobotomized == false {
	lobotomized = true
	walk = false
	
	alarm[1] = 1
}

if lobotomized and not walk {
	count += 1
	
	if count == 60 {
		walk = true
	}
}