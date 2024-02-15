scoreboard players operation position_x cas_pos = @s cas_position4_1
scoreboard players operation position_y cas_pos = @s cas_position4_2
scoreboard players operation position_z cas_pos = @s cas_position4_3
execute if entity @s[tag=Move5] run function animate_stand:animate/location/change/_5
execute if entity @s[tag=!Move5,tag=Move1] run function animate_stand:animate/location/change/_1
execute if entity @s[tag=!Move5,tag=!Move1,tag=Move2] run function animate_stand:animate/location/change/_2
execute if entity @s[tag=!Move5,tag=!Move1,tag=!Move2,tag=Move3] run function animate_stand:animate/location/change/_3