direction = point_direction(x, y, targetpos[0], targetpos[1])

speed = (dsin((point_distance(x, y, targetpos[0], targetpos[1]) / point_distance(startpos[0], startpos[1], targetpos[0], targetpos[1])) * 90) + 0.5) * 10

if point_distance(x, y, targetpos[0], targetpos[1]) < 5 {
	startpos = [x, y]
	targetpos = [irandom_range(96, 864), irandom_range(64, 448)]
}