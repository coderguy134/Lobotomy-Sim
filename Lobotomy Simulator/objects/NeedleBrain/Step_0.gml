direction = point_direction(x, y, targetpos[0], targetpos[1])

speed = dsin((point_distance(x, y, targetpos[1], targetpos[0]) / point_distance(startpos[0], startpos[1], targetpos[0], targetpos[1])) * 360) * 5

if point_distance(x, y, targetpos[1], targetpos[0]) < 3 {
	startpos = [x, y]
	targetpos = [irandom_range(96, 864), irandom_range(64, 448)]
}