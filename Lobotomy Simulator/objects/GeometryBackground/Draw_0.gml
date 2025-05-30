draw_self()

if offsetxx != 0 {
	draw_sprite(JoeMetriBackground, 0, x - sign(offsetxx) * 992, y)
}
if offsetyy != 0 {
	draw_sprite(JoeMetriBackground, 0, x, y - sign(offsetyy) * 734)
}
if offsetyy != 0 and offsetxx != 0 {
	draw_sprite(JoeMetriBackground, 0, x - sign(offsetxx) * 992, y - sign(offsetyy) * 734)
}