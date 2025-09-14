# 计时计分板
scoreboard objectives add server_cleaner dummy
scoreboard players add 服务器娘 server_cleaner 1
# 在30s,3s,2s,1s时分别出现提示
execute if score 服务器娘 server_cleaner matches 11400 run tellraw @a ["[",{"text":"服务器娘","color":"light_purple"},"] ","30秒后要大餐一顿了喵！"]
execute if score 服务器娘 server_cleaner matches 11940 run tellraw @a ["[",{"text":"服务器娘","color":"light_purple"},"] ",{"text":"马上就要开动啦！","color":"aqua"}]
execute if score 服务器娘 server_cleaner matches 11960 run tellraw @a ["[",{"text":"服务器娘","color":"light_purple"},"] ",{"text":"掉落物赶紧都捡掉喵！（流口水）","color":"yellow"}]
execute if score 服务器娘 server_cleaner matches 11980 run tellraw @a ["[",{"text":"服务器娘","color":"light_purple"},"] ",{"text":"我开动啦！","color":"red"}]
# 清理掉落物并显示提示
execute if score 服务器娘 server_cleaner matches 12000 run tellraw @a ["[",{"text":"服务器娘","color":"light_purple"},"] ",{"text":"又饱餐一顿了喵！"}]
execute if score 服务器娘 server_cleaner matches 12000.. run kill @e[type=minecraft:item]
# 复原
execute if score 服务器娘 server_cleaner matches 12000.. run scoreboard players set 服务器娘 server_cleaner 0