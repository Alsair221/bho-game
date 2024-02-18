/// @description 
// Вы можете записать свой код в этом редакторе

draw_set_font(fnt_main_font);
var _text_width = string_width_ext(text, font_size, width - padding_left - padding_right);
var _text_height = string_height_ext(text, font_size, width - padding_left - padding_right);

var _button_width = width;
var _button_height = _text_height + padding_top + padding_bottom;
var _button_width_half = _button_width / 2;
var _button_height_half = _button_height / 2;

var _text_position_x = 0;
var _text_position_y = 0;

switch(text_align){
	case fa_left:
		_text_position_x = -_button_width_half + padding_left;
		_text_position_y = -_text_height / 2 + (padding_top - padding_bottom) / 2;
	break;
	case fa_right:
		_text_position_x = _button_width_half - padding_right;
		_text_position_y = -_text_height / 2 + (padding_top - padding_bottom) / 2;
	break;
	default:
		_text_position_x = (padding_left - padding_right) / 2;
		_text_position_y = -_text_height / 2 + (padding_top - padding_bottom) / 2;
	break;
}

var _is_hover = false;
if (!disabled)
if (mouse_x > x - _button_width_half && mouse_x < x + _button_width_half)
if (mouse_y > y - _button_height_half && mouse_y < y + _button_height_half)
	_is_hover = true;

//отрисовка кнопки
switch(draw_variant){
	case "default":
	default:
		//стандартная кнопка, квадратная
		draw_set_alpha(1);
		if (!disabled){
			draw_set_color(color_bg);
		}else{
			draw_set_color(color_bg_disabled);
		}
		draw_rectangle(x - _button_width_half, y - _button_height_half, x + _button_width_half, y + _button_height_half, false);
		draw_set_alpha(blink);
		draw_set_color(color_bg_blink);
		draw_rectangle(x - _button_width_half, y - _button_height_half, x + _button_width_half, y + _button_height_half, false);
		draw_set_alpha(1);
		
		if (!disabled){
			if (!_is_hover){
				draw_set_color(color);
			}else{
				draw_set_color(color_hover);
			}
		}else{
			draw_set_color(color_disabled);
		}
		draw_rectangle(x - _button_width_half, y - _button_height_half, x + _button_width_half, y + _button_height_half, true);
		draw_rectangle(x - _button_width_half + 1, y - _button_height_half + 1, x + _button_width_half - 1, y + _button_height_half - 1, true);
		draw_set_halign(text_align);
		draw_set_valign(fa_top);
		if (!disabled){
			draw_set_color(color_text);
		}else{
			draw_set_color(color_text_disabled);
		}
		//draw_rectangle(x - _button_width_half + padding_left, y - _button_height_half + padding_top, x + _button_width_half - padding_right, y + _button_height_half - padding_bottom, true);
		var _draw_text = text;
		if (_is_hover && text_hover != "")
			_draw_text = text_hover;
		draw_text_ext(x + _text_position_x, y + _text_position_y, _draw_text, font_size, width - padding_left - padding_right);
	break;
}

//отрисовка линии до объекта цели
if (draw_target_line && (target != -1 || (target_pos_x != 0 && target_pos_y != 0))){
	//базовые значения
	var _circle_target_x = 0;
	var _circle_target_y = 0;
	var _circle_x = x;
	var _circle_y = y + _button_height_half;
	if (target != -1){
		_circle_target_x = target.x;
		_circle_target_y = target.y;
	}else{
		_circle_target_x = target_pos_x;
		_circle_target_y = target_pos_y;
	}
	var _delta_circle_x = _circle_x - _circle_target_x;
	var _delta_circle_y = _circle_y - _circle_target_y;
	var _delta_triangle = 50;
	
	//перемещение кружка на кнопке
	if (_delta_circle_y > 0){
		_circle_y = y - _button_height_half;
		_delta_circle_y = _circle_y - _circle_target_y;
		
		if (_delta_circle_y < 0){
			if (_delta_circle_x > 0){
				_circle_y = y;
				_delta_circle_y = _circle_y - _circle_target_y;
			
				_circle_x = x - _button_width_half;
				_delta_circle_x = _circle_x - _circle_target_x;
			}else{
				_circle_y = y;
				_delta_circle_y = _circle_y - _circle_target_y;
			
				_circle_x = x + _button_width_half;
				_delta_circle_x = _circle_x - _circle_target_x;
			}
		}
	}
	
	
	var _dop_triangle_l_x = 0;
	var _dop_triangle_l_y = 0;
	var _dop_triangle_r_x = 0;
	var _dop_triangle_r_y = 0;
	//изменение расстояния для уголка
	if (abs(_delta_circle_x) < _delta_triangle){ _delta_triangle = abs(_delta_circle_x); }
	if (abs(_delta_circle_y) < _delta_triangle){ _delta_triangle = abs(_delta_circle_y); }
	
	//изменение дельты для уголка
	if (_delta_circle_x > 0){
		_delta_circle_x -= _delta_triangle;
	}else{
		_delta_circle_x += _delta_triangle;
	}
	if (_delta_circle_y > 0){
		_delta_circle_y -= _delta_triangle;
	}else{
		_delta_circle_y += _delta_triangle;
	}
	
	//отрисовка линии и кружков
	draw_set_alpha(1);
	draw_set_color(c_white);
	draw_circle(_circle_target_x, _circle_target_y, 4, true);
	draw_circle(_circle_target_x, _circle_target_y, 5, true);
	
	draw_circle(_circle_x, _circle_y, 4, true);
	draw_circle(_circle_x, _circle_y, 5, true);
	
	//линия от цели
	if (_delta_circle_x > 0){
		draw_line_width(_circle_target_x + 4, _circle_target_y, 
			_circle_target_x + _delta_circle_x, _circle_target_y, 2);
	}else if (_delta_circle_x < 0){
		draw_line_width(_circle_target_x - 4, _circle_target_y, 
			_circle_target_x + _delta_circle_x, _circle_target_y, 2);
	}else{
		if (_circle_x - _circle_target_x > 0){
			_dop_triangle_l_x = 4;
		}else{
			_dop_triangle_l_x = -4;
		}
		if (_circle_y - _circle_target_y > 0){
			_dop_triangle_l_y = 4;
		}else{
			_dop_triangle_l_y = -4;
		}
		
	}
	
	//линия от кнопки
	if (_delta_circle_y < 0){
		draw_line_width(_circle_x, _circle_y + 4, 
			_circle_x, _circle_y - _delta_circle_y, 2);
	}else if (_delta_circle_y > 0){
		draw_line_width(_circle_x, _circle_y - 4, 
			_circle_x, _circle_y - _delta_circle_y, 2);
	}else{
		if (_circle_x - _circle_target_x > 0){
			_dop_triangle_r_x = -4;
		}else{
			_dop_triangle_r_x = 4;
		}
		if (_circle_y - _circle_target_y > 0){
			_dop_triangle_r_y = -4;
		}else{
			_dop_triangle_r_y = 4;
		}
	}
	
	//косая линия
	draw_line_width(_circle_target_x + _delta_circle_x + _dop_triangle_l_x, _circle_target_y + _dop_triangle_l_y, 
		_circle_x + _dop_triangle_r_x, _circle_y - _delta_circle_y + _dop_triangle_r_y, 2);
}