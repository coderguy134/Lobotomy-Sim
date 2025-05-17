image_xscale = max(ceil(power(value, 1/4)) + random_range(-1, 1), 3)
image_yscale = max(ceil(power(value, 1/4)) + random_range(-1, 1), 3)

image_index = irandom_range(0, 5)
image_angle = irandom_range(0, 360)

xvel = random_range(-2, 2)
grav = random_range(-4, -6)
ground = y + irandom_range(96, 160)
count = 30