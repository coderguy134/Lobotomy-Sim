x = 96

if y == 320 {
	image_xscale = 3
	image_yscale = 3
	speed = random_range(1,5)
	multi = 1
}
if y == 192 {
	image_xscale = 2
	image_yscale = 2
	speed = random_range(4,8)
	multi = 2
}
if y == 64 {
	image_xscale = 1
	image_yscale = 1
	speed = random_range(8,20)
	multi = 3
}

alarm[0] = irandom_range(10, 30)

targetpos = 864