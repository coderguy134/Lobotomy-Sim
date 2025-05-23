x = 466
y = 272

image_xscale = 15
image_yscale = 15

rotarea = irandom_range(-1, 1)

if rotarea == -1 {
	choices = [irandom_range(0, 2), irandom_range(3, 8), irandom_range(3, 8)]
}
else if rotarea == 0 {
	choices = [irandom_range(3, 8), irandom_range(0, 2), irandom_range(3, 8)]
}
else {
	choices = [irandom_range(3, 8), irandom_range(3, 8), irandom_range(0, 2)]
}