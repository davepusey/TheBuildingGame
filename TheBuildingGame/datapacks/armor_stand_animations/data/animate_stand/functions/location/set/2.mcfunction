scoreboard players operation @s cas_position2_1 = position_x cas_pos
scoreboard players operation @s cas_position2_2 = position_y cas_pos
scoreboard players operation @s cas_position2_3 = position_z cas_pos
execute unless score @s cas_postime2 matches 1.. run scoreboard players set @s cas_postime2 100
tellraw @p[tag=casTemp] {"translate":"Set movement frame %s to current armor stand location.","color":"green","with":[{"text":"2"}]}
tag @s add Move2
