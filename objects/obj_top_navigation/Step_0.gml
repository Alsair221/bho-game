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

for(var i = 0; i < ds_list_size(messages_list); i ++){
	var _need_x = i * (message_width + tab_padding);
	if (messages_list[| i][? "x"] > _need_x){
		messages_list[| i][? "x"] -= (messages_list[| i][? "x"] - _need_x) / 10;
	}else if (messages_list[| i][? "x"] < _need_x){
		messages_list[| i][? "x"] += (_need_x - messages_list[| i][? "x"]) / 10;
	}
	
	if (abs(messages_list[| i][? "x"] - _need_x) <= 1){
		messages_list[| i][? "x"] = _need_x;
	}
	
	if (mouse_check_button_pressed(mb_right)){
		if (messages_list[| i][? "deleted"]){
			if (mouse_x > _tab_x1 + tab_padding + messages_list[| i][? "x"])
			if (mouse_x < _tab_x1 + tab_padding + messages_list[| i][? "x"] + message_height)
			if (mouse_y > _tab_y1 + messages_list[| i][? "y"])
			if (mouse_y < _tab_y1 + messages_list[| i][? "y"] + message_height){
				ds_list_delete(messages_list, i);
			}
		}
	}
}