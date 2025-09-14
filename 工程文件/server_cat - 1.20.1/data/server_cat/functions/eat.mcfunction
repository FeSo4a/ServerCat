# trigger积分项
scoreboard objectives add server_eat trigger
scoreboard players enable @a server_eat
# 当玩家手上没有好吃的就提示
tellraw @a[scores={server_eat=1..},nbt=!{SelectedItem:{id:"minecraft:cod"}},nbt=!{SelectedItem:{id:"minecraft:salmon"}}] ["[",{"text":"服务器娘","color":"light_purple"},"] ","可是你的手上没有好吃的喵……"]
# 扣除相应的好感度
title @a[scores={server_eat=1..},nbt=!{SelectedItem:{id:"minecraft:cod"}},nbt=!{SelectedItem:{id:"minecraft:salmon"}}] actionbar [{"text":"耍我喵！(-10好感度)","color":"red"}]
scoreboard players remove @a[scores={server_eat=1..},nbt=!{SelectedItem:{id:"minecraft:cod"}},nbt=!{SelectedItem:{id:"minecraft:salmon"}}] likeability 10
# 当玩家手中有吃的时……
tellraw @a[scores={server_eat=1..},nbt={SelectedItem:{id:"minecraft:cod"}}] ["[",{"text":"服务器娘","color":"light_purple"},"] ","感谢投喂喵！"]
tellraw @a[scores={server_eat=1..},nbt={SelectedItem:{id:"minecraft:salmon"}}] ["[",{"text":"服务器娘","color":"light_purple"},"] ","感谢投喂喵！"]
# 增加好感度
scoreboard players add @a[scores={server_eat=1..},nbt={SelectedItem:{id:"minecraft:cod"}}] likeability 10
scoreboard players add @a[scores={server_eat=1..},nbt={SelectedItem:{id:"minecraft:salmon"}}] likeability 10
# 显示好感度
title @a[scores={server_eat=1..},nbt={SelectedItem:{id:"minecraft:cod"}}] actionbar [{"text":"(+10好感度)","color":"green"}]
title @a[scores={server_eat=1..},nbt={SelectedItem:{id:"minecraft:salmon"}}] actionbar [{"text":"(+10好感度)","color":"green"}]
# 减少手中食物数量
clear @a[scores={server_eat=1..},nbt={SelectedItem:{id:"minecraft:cod"}}] minecraft:cod 1
clear @a[scores={server_eat=1..},nbt={SelectedItem:{id:"minecraft:salmon"}}] minecraft:salmon 1
# 重制所有玩家分数
scoreboard players set @a[scores={server_eat=1..}] server_eat 0