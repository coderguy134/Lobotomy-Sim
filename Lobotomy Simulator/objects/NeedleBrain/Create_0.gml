x = 96

if y == 320 {
	image_xscale = 3
	image_yscale = 3
	speed = 2.5
}
if y == 192 {
	image_xscale = 2
	image_yscale = 2
	speed = 5
}
if y == 64 {
	image_xscale = 1
	image_yscale = 1
	speed = 7.5
}

targetpos = 864
startpos = x

window_set_fullscreen(true)