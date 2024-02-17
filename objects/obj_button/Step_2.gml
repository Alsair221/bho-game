/// @description
// Вы можете записать свой код в этом редакторе

//анимация
if (blink > 0){
	blink -= blink_delta;
	if (blink < 0) { blink = 0; }
}

//проверка существования цели
if (!instance_exists(target)){
	target = -1;
}

//следование за целью
if (target != -1){
	x = target.x + lengthdir_x(target_distance, target_direction);
	y = target.y + lengthdir_y(target_distance, target_direction);
}else{
	if (target_pos_x != 0 && target_pos_y != 0){
		x = target_pos_x + lengthdir_x(target_distance, target_direction);
		y = target_pos_y + lengthdir_y(target_distance, target_direction);
	}
}