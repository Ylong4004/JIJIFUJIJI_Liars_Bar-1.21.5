#随机选一个玩家然后让他出牌
scoreboard players set liar_bar_b_table_stage jijifujiji_liar_bar_variable 4
#到4阶段
scoreboard players set liar_bar_b_table_tick jijifujiji_liar_bar_variable 0
#设置为初始tick0
scoreboard players set liar_bar_b_table_time jijifujiji_liar_bar_variable 45
#秒为45
scoreboard players set liar_bar_b_table_temp jijifujiji_liar_bar_variable 30
#临时变量=20
function liar_bar:3_b_table/5.0_random_player_turn_player with storage minecraft:jijifujiji_liat_bar b_table_position
#随机选择一个没有被淘汰的玩家出牌
tag @a[team=liar_bar_b_table] remove b_table_last
tag @a[team=liar_bar_b_table] remove b_table__shoot
tag @a[team=liar_bar_b_table] remove b_table_after_gun
#清除一些标记
title @a[team=liar_bar_b_table,tag=b_table_playing] title [{text:">>>你的回合<<<",color:"green",bold:true}]
tellraw @a[team=liar_bar_b_table,tag=b_table_playing] [{text:"请选择要出的手牌：",color:"yellow"}]
#显示聊天
scoreboard objectives setdisplay below_name jijifujiji_liar_bar_bullet
#在名字上显示剩余子弹
execute as @a[team=liar_bar_b_table,tag=b_table_playing] at @s run playsound block.anvil.place master @s ~ ~ ~ 1 1 0
#提示回合音效
bossbar set jijifujiji_liar_bar_b_table_time max 30
bossbar set jijifujiji_liar_bar_b_table_time value 30
bossbar set jijifujiji_liar_bar_b_table_time name [{selector:"@a[team=liar_bar_b_table,tag=b_table_playing]",color:"gold",bold:true},{text:"的回合...",color:"yellow"},{"score":{"objective":"jijifujiji_liar_bar_variable","name":"liar_bar_b_table_temp"},color:"gold",bold:true},{text:"s",color:"gold"}]
#立刻更新进度条#新的boss条
scoreboard players enable @a[team=liar_bar_b_table,tag=b_table_playing] jijifujiji_liar_bar_b_table_click
#让玩家可以点按钮
data modify storage minecraft:jijifujiji_liat_bar b_table_position.select1 set value '✘]",color:"red",click_event:{action:"run_command",command:"/trigger jijifujiji_liar_bar_b_table_click set 1'
data modify storage minecraft:jijifujiji_liat_bar b_table_position.select2 set value '✘]",color:"red",click_event:{action:"run_command",command:"/trigger jijifujiji_liar_bar_b_table_click set 2'
data modify storage minecraft:jijifujiji_liat_bar b_table_position.select3 set value '✘]",color:"red",click_event:{action:"run_command",command:"/trigger jijifujiji_liar_bar_b_table_click set 3'
data modify storage minecraft:jijifujiji_liat_bar b_table_position.select4 set value '✘]",color:"red",click_event:{action:"run_command",command:"/trigger jijifujiji_liar_bar_b_table_click set 4'
data modify storage minecraft:jijifujiji_liat_bar b_table_position.select5 set value '✘]",color:"red",click_event:{action:"run_command",command:"/trigger jijifujiji_liar_bar_b_table_click set 5'
#设置传参数据为红色XX触发1-5
execute if entity @a[team=liar_bar_b_table,tag=b_table_1,tag=b_table_playing] run data modify storage minecraft:jijifujiji_liat_bar b_table_position.player_turn set value 1
execute if entity @a[team=liar_bar_b_table,tag=b_table_2,tag=b_table_playing] run data modify storage minecraft:jijifujiji_liat_bar b_table_position.player_turn set value 2
execute if entity @a[team=liar_bar_b_table,tag=b_table_3,tag=b_table_playing] run data modify storage minecraft:jijifujiji_liat_bar b_table_position.player_turn set value 3
execute if entity @a[team=liar_bar_b_table,tag=b_table_4,tag=b_table_playing] run data modify storage minecraft:jijifujiji_liat_bar b_table_position.player_turn set value 4
#根据玩家来设定玩家
execute as @a[team=liar_bar_b_table,tag=b_table_playing] run function liar_bar:3_b_table/5.2_random_player_turn_show with storage minecraft:jijifujiji_liat_bar b_table_position
#给这个玩家发布聊天框按钮
scoreboard players enable @a[team=liar_bar_b_table,tag=b_table_playing] jijifujiji_liar_bar_b_table_click
#让玩家可以点按钮
scoreboard players enable @a[team=liar_bar_b_table,tag=b_table_playing] jijifujiji_liar_bar_b_table_join
#让玩家可以点按钮

############测试
#tellraw @a [{text:"b_table_playing ",color:"red"},{selector:"@a[tag=b_table_playing]",color:"red"},\
#{text:"b_table_last   ",color:"gold"},{selector:"@a[tag=b_table_last]",color:"gold"},\
#{text:"   【【这是5_random_player_turn后】】",color:"green"}]
############测试
