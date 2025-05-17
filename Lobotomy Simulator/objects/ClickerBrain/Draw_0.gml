draw_self()

draw_healthbar(x - 64, y - 128, x + 64, y - 160, clicks / 0.2, c_black, make_color_rgb(irandom_range(0, 255), irandom_range(0, 255), irandom_range(0, 255)), c_green, 0, true, true)

draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_color(c_black)
draw_text(x, y - 192, timer)

ResetDraw()