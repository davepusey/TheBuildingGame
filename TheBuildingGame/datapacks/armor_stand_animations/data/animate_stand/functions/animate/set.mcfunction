execute as @e[type=armor_stand,distance=..50] if score @s cas_uuidleast_q = @p[tag=casSelected] cas_uuidleast_q if score @s cas_uuidmost_q = @p[tag=casSelected] cas_uuidmost_q run tag @s add casTemp
execute if score @s zcas_click matches 87 run tag @e[type=armor_stand,tag=casTemp,limit=1] add MoveLook
execute if score @s zcas_click matches 88 run tag @e[type=armor_stand,tag=casTemp,limit=1] remove MoveLook
scoreboard players set ani_count cas_pos 0
execute if score @s zcas_click matches 89 if entity @e[type=armor_stand,tag=casTemp,limit=1,tag=Animate1] run scoreboard players add ani_count cas_pos 1
execute if score @s zcas_click matches 89 if entity @e[type=armor_stand,tag=casTemp,limit=1,tag=Animate2] run scoreboard players add ani_count cas_pos 1
execute if score @s zcas_click matches 89 if entity @e[type=armor_stand,tag=casTemp,limit=1,tag=Animate3] run scoreboard players add ani_count cas_pos 1
execute if score @s zcas_click matches 89 if entity @e[type=armor_stand,tag=casTemp,limit=1,tag=Animate4] run scoreboard players add ani_count cas_pos 1
execute if score @s zcas_click matches 89 if entity @e[type=armor_stand,tag=casTemp,limit=1,tag=Animate5] run scoreboard players add ani_count cas_pos 1
execute if score @s zcas_click matches 89 if score ani_count cas_pos matches 2.. run tag @e[type=armor_stand,tag=casTemp,limit=1] add Animating
execute if score @s zcas_click matches 89 if score ani_count cas_pos matches 2.. run scoreboard players set @e[type=armor_stand,tag=casTemp,limit=1] cas_anipose 1
execute if score @s zcas_click matches 89 if score ani_count cas_pos matches 2.. run scoreboard players set @e[type=armor_stand,tag=casTemp,limit=1] cas_anitime 0
execute if score @s zcas_click matches 89 unless score ani_count cas_pos matches 2.. run tellraw @s {"translate":"Cannot start the animation, set at least 2 different poses first.","color":"red"}
execute if score @s zcas_click matches 90 run tag @e[type=armor_stand,tag=casTemp,limit=1] remove Animating
execute if score @s zcas_click matches 91 if entity @e[type=armor_stand,tag=casTemp,limit=1,tag=Move1] run scoreboard players add ani_count cas_pos 1
execute if score @s zcas_click matches 91 if entity @e[type=armor_stand,tag=casTemp,limit=1,tag=Move2] run scoreboard players add ani_count cas_pos 1
execute if score @s zcas_click matches 91 if entity @e[type=armor_stand,tag=casTemp,limit=1,tag=Move3] run scoreboard players add ani_count cas_pos 1
execute if score @s zcas_click matches 91 if entity @e[type=armor_stand,tag=casTemp,limit=1,tag=Move4] run scoreboard players add ani_count cas_pos 1
execute if score @s zcas_click matches 91 if entity @e[type=armor_stand,tag=casTemp,limit=1,tag=Move5] run scoreboard players add ani_count cas_pos 1
execute if score @s zcas_click matches 91 if score ani_count cas_pos matches 2.. run tag @e[type=armor_stand,tag=casTemp,limit=1] add Moving
execute if score @s zcas_click matches 91 if score ani_count cas_pos matches 2.. run scoreboard players set @e[type=armor_stand,tag=casTemp,limit=1] cas_movpose 1
execute if score @s zcas_click matches 91 if score ani_count cas_pos matches 2.. run scoreboard players set @e[type=armor_stand,tag=casTemp,limit=1] cas_movtime 0
execute if score @s zcas_click matches 91 unless score ani_count cas_pos matches 2.. run tellraw @s {"translate":"Cannot start the movement, set at least 2 different locations first.","color":"red"}
execute if score @s zcas_click matches 92 run tag @e[type=armor_stand,tag=casTemp,limit=1] remove Moving
execute unless entity @e[type=armor_stand,tag=casTemp] run tellraw @s {"translate":"Selected armor stand not in range or does not exist anymore.","color":"red"}
tag @e[type=armor_stand,tag=casTemp] remove casTemp
