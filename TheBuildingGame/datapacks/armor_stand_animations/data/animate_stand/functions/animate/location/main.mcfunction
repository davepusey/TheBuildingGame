execute unless score @s cas_movtime matches 1.. run function animate_stand:animate/location/change
execute store result score position_x cas_pos run data get entity @s Pos[0] 12800
execute store result score position_y cas_pos run data get entity @s Pos[1] 12800
execute store result score position_z cas_pos run data get entity @s Pos[2] 12800
scoreboard players operation position_x cas_pos += @s cas_poscurr_1
scoreboard players operation position_y cas_pos += @s cas_poscurr_2
scoreboard players operation position_z cas_pos += @s cas_poscurr_3
data merge entity @s {Motion:[0d,0d,0d]}
execute store result entity @s Pos[0] double 0.000078125 run scoreboard players get position_x cas_pos
execute store result entity @s Pos[1] double 0.000078125 run scoreboard players get position_y cas_pos
execute store result entity @s Pos[2] double 0.000078125 run scoreboard players get position_z cas_pos
execute if entity @s[tag=MoveLook] at @s run function animate_stand:animate/location/change/looking
scoreboard players remove @s cas_movtime 1