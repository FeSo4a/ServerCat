# 添加trigger计分板
scoreboard objectives add server_info trigger
scoreboard players enable @a server_info
# 显示提示
tellraw @a[scores={server_info=1..}] [{"text":"----服务器娘----"}]
tellraw @a[scores={server_info=1..}] [{"text":"作者：FeSo4a","color":"light_purple"}]
execute as @a[scores={server_info=1..}] run tellraw @s ["服务器娘对你的好感度：",{"score":{"objective":"likeability","name":"@s"}}]
tellraw @a[scores={server_info=1..}] [{"text":"如果好感度小于-50会有可怕的事情发生喵！","color":"red"}]
# 重置分数
scoreboard players set @a[scores={server_info=1..}] server_info 0