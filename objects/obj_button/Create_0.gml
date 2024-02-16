/// @description 
// Вы можете записать свой код в этом редакторе

text = "Тестовый тест тестович"; //текст
text_hover = ""; //текст при наведении
text_align = fa_center;

font_size = 20; //высота строки

draw_variant = ""; //вариант кнопки
color = make_color_rgb(33, 62, 82); //цвет
color_hover = make_color_rgb(83, 126, 156); //цвет наведения

target = -1; //объект привязки
target_distance = 100; //дистанция привязки
target_direction = 45; //угол от объекта привязки

action = function() { return true; }

width = 250; //ширина

//отступы
padding_top = 20;
padding_left = 10;
padding_right = 10;
padding_bottom = 10;
function padding(_top, _right, _bottom, _left){
	padding_top = _top;
	padding_left = _left;
	padding_right = _right;
	padding_bottom = _bottom;
}

