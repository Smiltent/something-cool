
draw_set_color(c_white);
draw_text(16, 16, "Time: " + string_format(timer, 1, 2));

if (global.bestTime != -1) {
	draw_text(16, 40, "Best: " + string_format(global.bestTime, 1, 2));	
}
