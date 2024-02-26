/// @description
// Вы можете записать свой код в этом редакторе

var _display_pos_x = 0;
var _display_pos_y = 0;
var _display_width = room_width;
var _display_height = room_height;

var _tab_width = tab_width;
var _tab_x1 = _display_pos_x + _display_width / 2 - _tab_width / 2;
var _tab_x2 = _display_pos_x + _display_width / 2 + _tab_width / 2;
var _tab_y1 = _display_pos_y;
var _tab_y2 = _display_pos_y + tab_height;

draw_set_color(c_gray);
draw_set_alpha(1);
draw_rectangle(_tab_x1, _tab_y1, _tab_x2, _tab_y2, true);

for(var i = 0; i < ds_list_size(messages_list); i ++){
	draw_set_color(c_black);
	draw_rectangle(_tab_x1 +  + messages_list[| i][? "x"] + tab_padding, _tab_y1 + messages_list[| i][? "y"], _tab_x1 + messages_list[| i][? "x"] + message_width + tab_padding, _tab_y1 + messages_list[| i][? "y"] + message_height, false);
	draw_set_color(c_gray);
	draw_rectangle(_tab_x1 + messages_list[| i][? "x"] + tab_padding, _tab_y1 + messages_list[| i][? "y"], _tab_x1 + messages_list[| i][? "x"] + message_width + tab_padding, _tab_y1 + messages_list[| i][? "y"] + message_height, true);
}