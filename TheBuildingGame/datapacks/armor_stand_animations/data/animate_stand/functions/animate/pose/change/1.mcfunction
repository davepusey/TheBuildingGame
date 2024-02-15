scoreboard players operation rotation cas_rot = @s cas_pose1_1
scoreboard players operation head_x cas_rot = @s cas_pose1_2
scoreboard players operation rarm_x cas_rot = @s cas_pose1_3
scoreboard players operation larm_x cas_rot = @s cas_pose1_4
scoreboard players operation rleg_x cas_rot = @s cas_pose1_5
scoreboard players operation lleg_x cas_rot = @s cas_pose1_6
scoreboard players operation body_x cas_rot = @s cas_pose1_7
execute if entity @s[tag=Animate2] run function animate_stand:animate/pose/change/_2
execute if entity @s[tag=!Animate2,tag=Animate3] run function animate_stand:animate/pose/change/_3
execute if entity @s[tag=!Animate2,tag=!Animate3,tag=Animate4] run function animate_stand:animate/pose/change/_4
execute if entity @s[tag=!Animate2,tag=!Animate3,tag=!Animate4,tag=Animate5] run function animate_stand:animate/pose/change/_5