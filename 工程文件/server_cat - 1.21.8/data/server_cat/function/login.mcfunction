# 新增计分板
scoreboard objectives add server_login dummy
# 显示玩家进入提示
scoreboard players add @a server_login 0
tellraw @a[scores={server_login=0}] ["[",{"text":"服务器娘","color":"light_purple"},"] ",{"text":"欢迎加入喵！","color":"yellow"}]
tellraw @a[scores={server_login=0}] ["[",{"text":"服务器娘","color":"light_purple"},"] ",{"text":"输入/trigger server_help查看帮助喵！","color":"aqua"}]
scoreboard players reset * server_login
scoreboard players add @a server_login 1