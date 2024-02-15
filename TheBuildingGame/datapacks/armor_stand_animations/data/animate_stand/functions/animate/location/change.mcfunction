execute if score @s cas_movpose matches 1 run function animate_stand:animate/location/change/1
execute if score @s[tag=!casTemp] cas_movpose matches 2 run function animate_stand:animate/location/change/2
execute if score @s[tag=!casTemp] cas_movpose matches 3 run function animate_stand:animate/location/change/3
execute if score @s[tag=!casTemp] cas_movpose matches 4 run function animate_stand:animate/location/change/4
execute if score @s[tag=!casTemp] cas_movpose matches 5 run function animate_stand:animate/location/change/5
tag @s[tag=casTemp] remove casTemp
execute store result entity @s Pos[0] double 0.0625 run scoreboard players get position_x cas_pos
execute store result entity @s Pos[1] double 0.0625 run scoreboard players get position_y cas_pos
execute store result entity @s Pos[2] double 0.0625 run scoreboard players get position_z cas_pos
execute if entity @s[tag=MoveLook] at @s run function animate_stand:animate/location/change/look
scoreboard players operation @s cas_poscurr_1 -= position_x cas_pos
scoreboard players operation @s cas_poscurr_2 -= position_y cas_pos
scoreboard players operation @s cas_poscurr_3 -= position_z cas_pos
scoreboard players set multiply cas_pos 800
scoreboard players operation @s cas_poscurr_1 *= multiply cas_pos
scoreboard players operation @s cas_poscurr_2 *= multiply cas_pos
scoreboard players operation @s cas_poscurr_3 *= multiply cas_pos
scoreboard players operation @s cas_poscurr_1 /= @s cas_movtime
scoreboard players operation @s cas_poscurr_2 /= @s cas_movtime
scoreboard players operation @s cas_poscurr_3 /= @s cas_movtime