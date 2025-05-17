draw_set_color(make_color_rgb(181, 145, 0))
draw_rectangle(4, 4, 192 + (string_length(string(global.braincells)) - 1) * 24, 56, false)
draw_set_color(make_color_rgb(110, 71, 43))
draw_rectangle(6, 6, 190 + (string_length(string(global.braincells)) - 1) * 24, 54, false)

draw_sprite_ext(BrainCells, 0, 64, 32, 8, 8, 0, c_white, 1)

draw_set_color(c_black)
draw_set_valign(fa_middle)
draw_set_font(HighQuality)
draw_text_transformed(128, 32, "- " + string(global.braincells), 2.5, 2.5, 0)

ResetDraw()