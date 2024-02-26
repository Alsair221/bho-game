/// @description 
// Вы можете записать свой код в этом редакторе

tab_width = 500;
tab_height = 30;
tab_padding = 10;
tab_inner_width = tab_width - tab_padding * 2;

message_width = 40;
message_height = 40;
messages_list = ds_list_create();

ds_list_add(messages_list, ds_map_create());
var i = ds_list_size(messages_list) - 1;
messages_list[| i][? "type"] = "info";
messages_list[| i][? "x"] = tab_inner_width - message_width;
messages_list[| i][? "y"] = 0;
messages_list[| i][? "readed"] = false;
messages_list[| i][? "deleted"] = false;
messages_list[| i][? "clicked"] = true;