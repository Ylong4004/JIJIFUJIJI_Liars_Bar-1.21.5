#OP指令初次使用该数据包建议使用


tellraw @s [{text:"《骗子酒馆OP配置页面》",color:"yellow"}]

tellraw @s [{text:"配置第一桌：",color:"yellow"},\
{text:"【设置坐标】",color:"gold",bold:true,click_event:{action:"suggest_command",command:"/data modify storage jijifujiji_liat_bar a_table_position set value {x:number,y:number,z:number}"},hover_event:{action:"show_text",value:"请把里面的数字改成第一桌的XYZ整数坐标"}},\
{text:"【生成结构】",color:"gold",bold:true,click_event:{action:"run_command",command:"/function liar_bar:1_op_command/a_2_table_generate with storage minecraft:jijifujiji_liat_bar a_table_position"},hover_event:{action:"show_text",value:"按照第一桌的坐标生成桌子结构，这会破坏已有方块，请设置坐标后慎用。"}},\
{text:"【获取命令方块】",color:"gold",bold:true,\
click_event:{action:"run_command",command:"/function liar_bar:1_op_command/a_3_table_command_block"},hover_event:{action:"show_text",value:"获得第一桌开始游戏和结束游戏的命令方块"}}]

tellraw @s [{text:"配置第二桌：",color:"yellow"},\
{text:"【设置坐标】",color:"gold",bold:true,click_event:{action:"suggest_command",command:"/data modify storage jijifujiji_liat_bar b_table_position set value {x:number,y:number,z:number}"},hover_event:{action:"show_text",value:"请把里面的数字改成第二桌的XYZ整数坐标"}},\
{text:"【生成结构】",color:"gold",bold:true,click_event:{action:"run_command",command:"/function liar_bar:1_op_command/b_2_table_generate with storage minecraft:jijifujiji_liat_bar b_table_position"},hover_event:{action:"show_text",value:"按照第二桌的坐标生成桌子结构，这会破坏已有方块，请设置坐标后慎用。"}},\
{text:"【获取命令方块】",color:"gold",bold:true,\
click_event:{action:"run_command",command:"/function liar_bar:1_op_command/b_3_table_command_block"},hover_event:{action:"show_text",value:"获得第二桌开始游戏和结束游戏的命令方块"}}]

tellraw @s [{text:"配置第三桌：",color:"yellow"},\
{text:"【设置坐标】",color:"gold",bold:true,click_event:{action:"suggest_command",command:"/data modify storage jijifujiji_liat_bar c_table_position set value {x:number,y:number,z:number}"},hover_event:{action:"show_text",value:"请把里面的数字改成第三桌的XYZ整数坐标"}},\
{text:"【生成结构】",color:"gold",bold:true,click_event:{action:"run_command",command:"/function liar_bar:1_op_command/c_2_table_generate with storage minecraft:jijifujiji_liat_bar c_table_position"},hover_event:{action:"show_text",value:"按照第三桌的坐标生成桌子结构，这会破坏已有方块，请设置坐标后慎用。"}},\
{text:"【获取命令方块】",color:"gold",bold:true,\
click_event:{action:"run_command",command:"/function liar_bar:1_op_command/c_3_table_command_block"},hover_event:{action:"show_text",value:"获得第三桌开始游戏和结束游戏的命令方块"}}]

tellraw @s [{text:"配置第四桌：",color:"yellow"},\
{text:"【设置坐标】",color:"gold",bold:true,click_event:{action:"suggest_command",command:"/data modify storage jijifujiji_liat_bar d_table_position set value {x:number,y:number,z:number}"},hover_event:{action:"show_text",value:"请把里面的数字改成第四桌的XYZ整数坐标"}},\
{text:"【生成结构】",color:"gold",bold:true,click_event:{action:"run_command",command:"/function liar_bar:1_op_command/d_2_table_generate with storage minecraft:jijifujiji_liat_bar d_table_position"},hover_event:{action:"show_text",value:"按照第四桌的坐标生成桌子结构，这会破坏已有方块，请设置坐标后慎用。"}},\
{text:"【获取命令方块】",color:"gold",bold:true,\
click_event:{action:"run_command",command:"/function liar_bar:1_op_command/d_3_table_command_block"},hover_event:{action:"show_text",value:"获得第四桌开始游戏和结束游戏的命令方块"}}]

tellraw @s [{text:"配置第五桌：",color:"yellow"},\
{text:"【设置坐标】",color:"gold",bold:true,click_event:{action:"suggest_command",command:"/data modify storage jijifujiji_liat_bar e_table_position set value {x:number,y:number,z:number}"},hover_event:{action:"show_text",value:"请把里面的数字改成第五桌的XYZ整数坐标"}},\
{text:"【生成结构】",color:"gold",bold:true,click_event:{action:"run_command",command:"/function liar_bar:1_op_command/e_2_table_generate with storage minecraft:jijifujiji_liat_bar e_table_position"},hover_event:{action:"show_text",value:"按照第五桌的坐标生成桌子结构，这会破坏已有方块，请设置坐标后慎用。"}},\
{text:"【获取命令方块】",color:"gold",bold:true,\
click_event:{action:"run_command",command:"/function liar_bar:1_op_command/e_3_table_command_block"},hover_event:{action:"show_text",value:"获得第五桌开始游戏和结束游戏的命令方块"}}]


execute if score gambling_mode jijifujiji_liar_bar_variable matches 1 run return run tellraw @s \
[{text:"【关闭赌博模式】",color:"gold",bold:true,click_event:{action:"run_command",command:"/function liar_bar:1_op_command/2_gambling_mode_off"},\
hover_event:{action:"show_text",value:"关闭赌货币的选项"}},\
{text:"【获得货币】",color:"gold",bold:true,click_event:{action:"run_command",command:"/function liar_bar:1_op_command/3_gambling_mode_give"},\
hover_event:{action:"show_text",value:"给你发放用于赌博的货币。"}}]

return run tellraw @s [{text:"【开启赌博模式】",color:"gold",bold:true,click_event:{action:"run_command",command:"/function liar_bar:1_op_command/1_gambling_mode_on"},\
hover_event:{action:"show_text",value:"允许玩家赌命的同时可以赌货币，目前不支持录入其他货币。"}}]

