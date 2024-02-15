scoreboard players operation rotation cas_rot = @s cas_pose2_1
scoreboard players operation head_x cas_rot = @s cas_pose2_2
scoreboard players operation rarm_x cas_rot = @s cas_pose2_3
scoreboard players operation larm_x cas_rot = @s cas_pose2_4
scoreboard players operation rleg_x cas_rot = @s cas_pose2_5
scoreboard players operation lleg_x cas_rot = @s cas_pose2_6
scoreboard players operation body_x cas_rot = @s cas_pose2_7
execute if entity @s[tag=Animate3] run function animate_stand:animate/pose/change/_3
execute if entity @s[tag=!Animate3,tag=Animate4] run function animate_stand:animate/pose/change/_4
execute if entity @s[tag=!Animate3,tag=!Animate4,tag=Animate5] run function animate_stand:animate/pose/change/_5
execute if entity @s[tag=!Animate3,tag=!Animate4,tag=!Animate5,tag=Animate1] run function animate_stand:animate/pose/change/_1