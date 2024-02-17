/// @description 
// Вы можете записать свой код в этом редакторе

text = "Тестовый тест тестович"; //текст
text_hover = ""; //текст при наведении
text_align = fa_center;

font_size = 20; //высота строки

draw_variant = ""; //вариант кнопки
color = make_color_rgb(33, 62, 82); //цвет
color_hover = make_color_rgb(83, 126, 156); //цвет наведения
color_bg = make_color_rgb(10, 20, 26);
color_bg_blink = make_color_rgb(33, 62, 82);
color_text = make_color_rgb(175, 215, 255);

color_disabled = make_color_rgb(62, 62, 62); //цвет
color_bg_disabled = make_color_rgb(26, 26, 26);
color_text_disabled = make_color_rgb(175, 175, 175);

target = -1; //объект привязки
target_distance = 200; //дистанция привязки
target_direction = 45; //угол от объекта привязки
draw_target_line = true; //рисовать линию до объекта
target_pos_x = 0;
target_pos_y = 0;

action = function() { return true; }
disabled = false;

width = 200; //ширина кнопки

//отступы
padding_top = 10;
padding_left = 20;
padding_right = 20;
padding_bottom = 10;

//настройки анимаций
blink = 0;
blink_delta = 0.1;


//функции
function padding(_top = 0, _right = 0, _bottom = 0, _left = 0){
	padding_top = _top;
	padding_left = _left;
	padding_right = _right;
	padding_bottom = _bottom;
}
function set_color(_color_base = make_color_rgb(33, 62, 82), _color_hover = make_color_rgb(83, 126, 156)){
	color = _color_base;
	color_hover = _color_hover;
	
	var _bg_r = color_get_red(_color_base);
	var _bg_g = color_get_green(_color_base);
	var _bg_b = color_get_blue(_color_base);
	
	var _bg_max = max(_bg_r, _bg_g, _bg_b);
	var _bg_min = max(_bg_r, _bg_g, _bg_b);
	
	_bg_r = set_color_delta(_bg_r, _bg_min, _bg_max, -23, -42, -66);
	_bg_g = set_color_delta(_bg_g, _bg_min, _bg_max, -23, -42, -66);
	_bg_b = set_color_delta(_bg_b, _bg_min, _bg_max, -23, -42, -66);
	color_bg = make_color_rgb(_bg_r, _bg_g, _bg_b);
	
	_bg_r = color_get_red(_color_hover);
	_bg_g = color_get_green(_color_hover);
	_bg_b = color_get_blue(_color_hover);
	
	_bg_max = max(_bg_r, _bg_g, _bg_b);
	_bg_min = max(_bg_r, _bg_g, _bg_b);
	
	_bg_r = set_color_delta(_bg_r, _bg_min, _bg_max, 92, 89, 99);
	_bg_g = set_color_delta(_bg_g, _bg_min, _bg_max, 92, 89, 99);
	_bg_b = set_color_delta(_bg_b, _bg_min, _bg_max, 92, 89, 99);
	color_text = make_color_rgb(_bg_r, _bg_g, _bg_b);
	
}
function set_color_delta(_color = 0, _min = 0, _max = 0, _delta_min = 0, _delta_med = 0, _delta_max = 0){
	if (_color == _min){
		_color += _delta_min;
	}else if(_color == _max){
		_color += _delta_max;
	}else{
		_color += _delta_med;
	}
	
	_color = max(min(_color, 255), 0);
	return _color;
}

