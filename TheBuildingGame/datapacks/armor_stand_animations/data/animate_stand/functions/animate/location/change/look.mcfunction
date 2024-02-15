summon area_effect_cloud ~ ~ ~ {Tags:["casKill"]}
execute store result entity @e[type=area_effect_cloud,tag=casKill,limit=1] Pos[0] double 0.0625 run scoreboard players get @s cas_poscurr_1
execute store result entity @e[type=area_effect_cloud,tag=casKill,limit=1] Pos[1] double 0.0625 run scoreboard players get position_y cas_pos
execute store result entity @e[type=area_effect_cloud,tag=casKill,limit=1] Pos[2] double 0.0625 run scoreboard players get @s cas_poscurr_3
tp @s ~ ~ ~ facing entity @e[type=area_effect_cloud,tag=casKill,limit=1] feet
kill @e[type=area_effect_cloud,tag=casKill]
