/// @description 
// Вы можете записать свой код в этом редакторе

if (tab != old_tab){
	old_tab = tab;
	for(var i = 0; i < ds_list_size(buttons); i ++){
		if (instance_exists(buttons[| i])){
			instance_destroy(buttons[| i]);
		}
	}
	ds_list_clear(buttons);
	
	switch(tab){
		case "main":
			var _new_button = instance_create_depth(0, 0, -20, obj_button);
			_new_button.x = global.display_width / 2;
			_new_button.y = global.display_height - 100;
			//_new_button.target_pos_x = _new_button.x + 250;
			//_new_button.target_pos_y = _new_button.y;
			_new_button.this_pos_x = _new_button.x;
			_new_button.this_pos_y = _new_button.y;
			_new_button.text = "Выход";
			_new_button.action = function(){ game_end(); }
			ds_list_add(buttons, _new_button);

			var _new_button = instance_create_depth(0, 0, -20, obj_button);
			_new_button.x = global.display_width / 2;
			_new_button.y = global.display_height - 150;
			_new_button.this_pos_x = _new_button.x;
			_new_button.this_pos_y = _new_button.y;
			_new_button.text = "Редактор кораблей";
			_new_button.action = function(){
				with(obj_controller_main_menu){
					instance_destroy();
				}
				room_goto(room_ship_creator);
			}
			ds_list_add(buttons, _new_button);

			var _new_button = instance_create_depth(0, 0, -20, obj_button);
			_new_button.x = global.display_width / 2;
			_new_button.y = global.display_height - 200;
			_new_button.this_pos_x = _new_button.x;
			_new_button.this_pos_y = _new_button.y;
			_new_button.text = "Настройки";
			_new_button.action = function(){
				obj_controller_main_menu.tab = "settings"; 
			}
			ds_list_add(buttons, _new_button);

			var _new_button = instance_create_depth(0, 0, -20, obj_button);
			_new_button.x = global.display_width / 2;
			_new_button.y = global.display_height - 250;
			_new_button.this_pos_x = _new_button.x;
			_new_button.this_pos_y = _new_button.y;
			_new_button.text = "Играть";
			_new_button.action = function(){
				obj_controller_main_menu.tab = "play"; 
			}
			ds_list_add(buttons, _new_button);
		break;
		case "settings":
		case "play":
			var _new_button = instance_create_depth(0, 0, -20, obj_button);
			_new_button.x = global.display_width - 200;
			_new_button.y = global.display_height - 100;
			//_new_button.target_pos_x = _new_button.x + 250;
			//_new_button.target_pos_y = _new_button.y;
			_new_button.this_pos_x = _new_button.x;
			_new_button.this_pos_y = _new_button.y;
			_new_button.text = "Назад";
			_new_button.action = function(){
				obj_controller_main_menu.tab = "main"; 
			}
			ds_list_add(buttons, _new_button);
		break;
	}
}