scoreboard players operation rotation cas_rot = @s cas_pose4_1
scoreboard players operation head_x cas_rot = @s cas_pose4_2
scoreboard players operation rarm_x cas_rot = @s cas_pose4_3
scoreboard players operation larm_x cas_rot = @s cas_pose4_4
scoreboard players operation rleg_x cas_rot = @s cas_pose4_5
scoreboard players operation lleg_x cas_rot = @s cas_pose4_6
scoreboard players operation body_x cas_rot = @s cas_pose4_7
execute if entity @s[tag=Animate5] run function animate_stand:animate/pose/change/_5
execute if entity @s[tag=!Animate5,tag=Animate1] run function animate_stand:animate/pose/change/_1
execute if entity @s[tag=!Animate5,tag=!Animate1,tag=Animate2] run function animate_stand:animate/pose/change/_2
execute if entity @s[tag=!Animate5,tag=!Animate1,tag=!Animate2,tag=Animate3] run function animate_stand:animate/pose/change/_3