scoreboard players operation rotation cas_rot = @s cas_pose3_1
scoreboard players operation head_x cas_rot = @s cas_pose3_2
scoreboard players operation rarm_x cas_rot = @s cas_pose3_3
scoreboard players operation larm_x cas_rot = @s cas_pose3_4
scoreboard players operation rleg_x cas_rot = @s cas_pose3_5
scoreboard players operation lleg_x cas_rot = @s cas_pose3_6
scoreboard players operation body_x cas_rot = @s cas_pose3_7
execute if entity @s[tag=Animate4] run function animate_stand:animate/pose/change/_4
execute if entity @s[tag=!Animate4,tag=Animate5] run function animate_stand:animate/pose/change/_5
execute if entity @s[tag=!Animate4,tag=!Animate5,tag=Animate1] run function animate_stand:animate/pose/change/_1
execute if entity @s[tag=!Animate4,tag=!Animate5,tag=!Animate1,tag=Animate2] run function animate_stand:animate/pose/change/_2