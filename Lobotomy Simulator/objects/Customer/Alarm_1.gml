if global.addamountmulti > 0 {
	image_index = 1

	var targetcells = global.cellper * global.addamountmulti
	var total = 0
	var current = 0
	repeat(ceil(power(targetcells / 10, 1/5)) - 1) {
		current = floor(targetcells / ceil(power(targetcells / 10, 1/5)) * random_range(0.75, 1))
		instance_create_layer(x, y + 21 * image_yscale, "General", BrainCell, {value : current})
		
		total += current
	}
	
	instance_create_layer(x, y + 21 * image_yscale, "General", BrainCell, {value : targetcells - total})
}
else {
	image_index = 2
}