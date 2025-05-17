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
	instance_destroy()
}

if lobotomizable == false and x == 640 {
	image_index = 1
	lobotomized = true
	walk = false
}

if lobotomized and not walk {
	count += 1
	
	if count == 60 {
		walk = true
	}
}