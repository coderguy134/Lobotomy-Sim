x1 = lerp(deltax1, x1, 0.2)
y1 = lerp(deltay1, y1, 0.2)

x2 = lerp(deltax2, x2, 0.2)
y2 = lerp(deltay2, y2, 0.2)

x3 = lerp(deltax3, x3, 0.2)
x3 = lerp(deltay3, y3, 0.2)

if(timer1 >= timermax1) {
	deltax1 = x1
	x1 = irandom_range(0, 960)
	deltay1 = y1
	y1 = irandom_range(0, 540)
	timer1 = 0
	timermax1 = irandom_range(60, 300)
}

else {
	timer1 += 1
}