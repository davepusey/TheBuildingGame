scoreboard players operation @s cas_position4_1 = position_x cas_pos
scoreboard players operation @s cas_position4_2 = position_y cas_pos
scoreboard players operation @s cas_position4_3 = position_z cas_pos
execute unless score @s cas_postime4 matches 1.. run scoreboard players set @s cas_postime4 100
tellraw @p[tag=casTemp] {"translate":"Set movement frame %s to current armor stand location.","color":"green","with":[{"text":"4"}]}
tag @s add Move4
