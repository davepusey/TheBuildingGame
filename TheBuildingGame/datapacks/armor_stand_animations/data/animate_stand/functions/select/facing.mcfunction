scoreboard players set @s cas_anipose 0
execute anchored eyes positioned ^ ^ ^ run summon area_effect_cloud ~ ~ ~ {Tags:["casPosition"]}
execute as @e[type=area_effect_cloud,tag=casPosition] at @s rotated as @p[tag=casTemp] run function animate_stand:select/position
execute positioned ^ ^ ^20 as @e[type=armor_stand,distance=..25] run function animate_stand:select/check_position
execute as @e[type=armor_stand,tag=casTemp,limit=1,sort=nearest] run function animate_stand:select/uuid
execute unless entity @e[type=armor_stand,tag=casTemp] run tellraw @s {"translate":"Not looking at an armor stand or armor stand too far away.","color":"red"}
execute unless entity @e[type=armor_stand,tag=casTemp] run tag @s remove casSelected
tag @e[type=armor_stand,tag=casTemp] remove casTemp
