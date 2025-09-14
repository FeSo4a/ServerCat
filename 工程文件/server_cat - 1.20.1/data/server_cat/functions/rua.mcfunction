# 新增计分板
scoreboard objectives add server_rua trigger
scoreboard objectives add rua_t dummy
scoreboard objectives add rua_times dummy
scoreboard players enable @a server_rua
# （摸摸
tellraw @a[scores={server_rua=1..}] ["[",{"text":"服务器娘","color":"light_purple"},"] ","喵~好舒服喵！"]
# 增加好感度
scoreboard players add @a[scores={server_rua=1..}] likeability 1
title @a[scores={server_rua=1..}] actionbar [{"text":"(+1好感度)","color":"green"}]
# 从摸第一下开始计时1分钟并统计rua的次数
scoreboard players add @a[scores={server_rua=1}] rua_times 1
execute as @a[scores={rua_times=1..}] run scoreboard players add @s rua_t 1
execute as @a if score @s rua_t matches 1200.. run scoreboard players set @s rua_t 0
execute as @a if score @s rua_t matches 1200.. run scoreboard players set @s rua_times 0
# 当次数太多会发生可怕的事情喵！
execute as @a if score @s rua_times matches 10.. run tellraw @s ["[",{"text":"服务器娘","color":"light_purple"},"] ",{"text":"（炸毛）喵呜！不要……不要再摸了……再摸……再摸就要……（瘫软下来）","color":"red"}]
execute as @a if score @s rua_times matches 10.. run scoreboard players remove @a[scores={server_rua=1..}] likeability 30
execute as @a if score @s rua_times matches 10.. run title @s actionbar [{"text":"喵！(-30好感度)","color":"red"}]
execute as @a if score @s rua_times matches 10.. run scoreboard players set @s rua_t 0
execute as @a if score @s rua_times matches 10.. run scoreboard players set @s rua_times 0
# 重置
scoreboard players set @a[scores={server_rua=1..}] server_rua 0