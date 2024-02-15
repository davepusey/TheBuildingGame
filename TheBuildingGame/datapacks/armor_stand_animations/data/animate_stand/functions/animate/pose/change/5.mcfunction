scoreboard players operation rotation cas_rot = @s cas_pose5_1
scoreboard players operation head_x cas_rot = @s cas_pose5_2
scoreboard players operation rarm_x cas_rot = @s cas_pose5_3
scoreboard players operation larm_x cas_rot = @s cas_pose5_4
scoreboard players operation rleg_x cas_rot = @s cas_pose5_5
scoreboard players operation lleg_x cas_rot = @s cas_pose5_6
scoreboard players operation body_x cas_rot = @s cas_pose5_7
execute if entity @s[tag=Animate1] run function animate_stand:animate/pose/change/_1
execute if entity @s[tag=!Animate1,tag=Animate2] run function animate_stand:animate/pose/change/_2
execute if entity @s[tag=!Animate1,tag=!Animate2,tag=Animate3] run function animate_stand:animate/pose/change/_3
execute if entity @s[tag=!Animate1,tag=!Animate2,tag=!Animate3,tag=Animate4] run function animate_stand:animate/pose/change/_4