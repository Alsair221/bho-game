/// @description Интерфейс 
// Вы можете записать свой код в этом редакторе

draw_set_alpha(0.5);
draw_set_color(c_white);
var _max_x = ceil(grid_width / grid_size);
var _max_y = ceil(grid_height / grid_size);
for(var i = 0; i < _max_x; i ++){
	draw_line(grid_size * i, 0, grid_size * i, grid_height);
}
for(var i = 0; i < _max_y; i ++){
	draw_line(0, grid_size * i, grid_width, grid_size * i);
}

draw_set_alpha(1);