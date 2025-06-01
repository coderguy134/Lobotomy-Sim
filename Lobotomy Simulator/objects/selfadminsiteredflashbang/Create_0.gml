x1 = irandom_range(0, 960)
deltax1 = x1
y1 = irandom_range(0, 540)
deltay1 = y1
timer1 = 0
timermax1 = 0

x2 = irandom_range(0, 960)
deltax2 = x2
y2 = irandom_range(0, 540)
deltay2 = y2
timer2 = 0
timermax2 = 0

x3 = irandom_range(0, 960)
deltax3 = x3
y3 = irandom_range(0, 540)
deltay3 = y3
timer3 = 0
timermax3 = 0

#macro COLOUR_FOR_NO_MOVE make_colour_rgb(127,127,255)

// name of what you want it to be called in the shader
distortion_stage = shader_get_sampler_index(Lobotomized, "distortion_texture_page") 

application_surface_draw_enable(false)