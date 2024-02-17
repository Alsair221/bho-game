/// @description 
// Вы можете записать свой код в этом редакторе

if (!disabled){
	var _text_height = string_height_ext(text, font_size, width - padding_left - padding_right);
	var _button_width = width;
	var _button_height = _text_height + padding_top + padding_bottom;
	var _button_width_half = _button_width / 2;
	var _button_height_half = _button_height / 2;

	if (mouse_x > x - _button_width_half && mouse_x < x + _button_width_half)
	if (mouse_y > y - _button_height_half && mouse_y < y + _button_height_half){
		blink = 1;
		
		if (action()){
			//действие выполнилось
		}else{
			//действие не выполнилось
		}
	}
}