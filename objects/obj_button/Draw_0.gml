/// @description 
// Вы можете записать свой код в этом редакторе

draw_set_font(main_font);
var _text_width = string_width_ext(text, font_size, width - padding_left - padding_right);
var _text_height = string_height_ext(text, font_size, width - padding_left - padding_right);

var _button_width = width;
var _button_height = _text_height + padding_top + padding_bottom;
var _button_width_half = _button_width / 2;
var _button_height_half = _button_height / 2;

switch(text_align){
	case fa_left:
		var _text_position_x = -_button_width_half + padding_left;
		var _text_position_y = -_text_height / 2 + (padding_top - padding_bottom) / 2;
	break;
	case fa_right:
		var _text_position_x = _button_width_half - padding_right;
		var _text_position_y = -_text_height / 2 + (padding_top - padding_bottom) / 2;
	break;
	default:
		var _text_position_x = (padding_left - padding_right) / 2;
		var _text_position_y = -_text_height / 2 + (padding_top - padding_bottom) / 2;
	break;
}

var _is_hover = false;
if 

switch(draw_variant){
	case "default":
	default:
		draw_set_alpha(1);
		draw_set_color(make_color_rgb(10, 20, 26));
		draw_rectangle(x - _button_width_half, y - _button_height_half, x + _button_width_half, y + _button_height_half, false);
		draw_set_color(color);
		draw_rectangle(x - _button_width_half, y - _button_height_half, x + _button_width_half, y + _button_height_half, true);
		draw_rectangle(x - _button_width_half + 1, y - _button_height_half + 1, x + _button_width_half - 1, y + _button_height_half - 1, true);
		draw_set_halign(text_align);
		draw_set_valign(fa_top);
		draw_set_color(make_color_rgb(175, 215, 255));
		//draw_rectangle(x - _button_width_half + padding_left, y - _button_height_half + padding_top, x + _button_width_half - padding_right, y + _button_height_half - padding_bottom, true);
		draw_text_ext(x + _text_position_x, y + _text_position_y, text, font_size, width - padding_left - padding_right);
	break;
}