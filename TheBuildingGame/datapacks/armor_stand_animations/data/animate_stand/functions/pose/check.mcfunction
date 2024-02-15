execute as @e[type=armor_stand,distance=..50] if score @s cas_uuidleast_q = @p[tag=casSelected] cas_uuidleast_q if score @s cas_uuidmost_q = @p[tag=casSelected] cas_uuidmost_q run tag @s add casTemp
execute if score @s cas_anipose matches 1 as @e[type=armor_stand,tag=casTemp,limit=1] run function animate_stand:pose/check/1
execute if score @s cas_anipose matches 2 as @e[type=armor_stand,tag=casTemp,limit=1] run function animate_stand:pose/check/2
execute if score @s cas_anipose matches 3 as @e[type=armor_stand,tag=casTemp,limit=1] run function animate_stand:pose/check/3
execute if score @s cas_anipose matches 4 as @e[type=armor_stand,tag=casTemp,limit=1] run function animate_stand:pose/check/4
execute if score @s cas_anipose matches 5 as @e[type=armor_stand,tag=casTemp,limit=1] run function animate_stand:pose/check/5
execute unless entity @e[type=armor_stand,tag=casTemp] run tellraw @s {"translate":"Selected armor stand not in range or does not exist anymore.","color":"red"}
execute if entity @e[type=armor_stand,tag=casTemp] unless score @s cas_anipose matches 1.. run tellraw @s {"translate":"Select a frame to modify first.","color":"red"}
tag @e[type=armor_stand,tag=casTemp] remove casTemp
