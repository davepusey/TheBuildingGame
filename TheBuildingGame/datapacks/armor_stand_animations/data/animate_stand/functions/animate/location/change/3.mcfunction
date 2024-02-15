scoreboard players operation position_x cas_pos = @s cas_position3_1
scoreboard players operation position_y cas_pos = @s cas_position3_2
scoreboard players operation position_z cas_pos = @s cas_position3_3
execute if entity @s[tag=Move4] run function animate_stand:animate/location/change/_4
execute if entity @s[tag=!Move4,tag=Move5] run function animate_stand:animate/location/change/_5
execute if entity @s[tag=!Move4,tag=!Move5,tag=Move1] run function animate_stand:animate/location/change/_1
execute if entity @s[tag=!Move4,tag=!Move5,tag=!Move1,tag=Move2] run function animate_stand:animate/location/change/_2