execute store result score position_x cas_pos run data get entity @s Pos[0] 16
execute store result score position_y cas_pos run data get entity @s Pos[1] 16
execute store result score position_z cas_pos run data get entity @s Pos[2] 16
execute store result entity @s Pos[0] double 0.0625 run scoreboard players get position_x cas_pos
execute store result entity @s Pos[1] double 0.0625 run scoreboard players get position_y cas_pos
execute store result entity @s Pos[2] double 0.0625 run scoreboard players get position_z cas_pos