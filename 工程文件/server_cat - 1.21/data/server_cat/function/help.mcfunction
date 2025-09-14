# 添加计分板
scoreboard objectives add server_help trigger
scoreboard players enable @a server_help
# 显示提示
tellraw @a[scores={server_help=1..}] ["[",{"text":"服务器娘","color":"light_purple"},"] ","输入/trigger server_rua可以和我玩喵！"]
tellraw @a[scores={server_help=1..}] ["[",{"text":"服务器娘","color":"light_purple"},"] ","输入/trigger server_eat可以给我喂东西喵~"]
tellraw @a[scores={server_help=1..}] ["[",{"text":"服务器娘","color":"light_purple"},"] ",{"text":"*只能喂食生鱼喵！不要喂奇奇怪怪的东西喵！","color":"red"}]
tellraw @a[scores={server_help=1..}] ["[",{"text":"服务器娘","color":"light_purple"},"] ","输入/trigger server_info可以查询好感度喵！"]
tellraw @a[scores={server_help=1..}] ["[",{"text":"服务器娘","color":"light_purple"},"] ","还有什么要帮你的吗喵？"]
# 重置
scoreboard players set @a[scores={server_help=1..}] server_help 0