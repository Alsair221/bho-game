target = inst_63EC08C6;
action = function(){
	with(obj_top_navigation){
		ds_list_add(messages_list, ds_map_create());
		var i = ds_list_size(messages_list) - 1;
		messages_list[| i][? "type"] = "info";
		messages_list[| i][? "x"] = tab_inner_width - message_width;
		messages_list[| i][? "y"] = 0;
		messages_list[| i][? "readed"] = false;
		messages_list[| i][? "deleted"] = true;
		messages_list[| i][? "clicked"] = false;
	}
}