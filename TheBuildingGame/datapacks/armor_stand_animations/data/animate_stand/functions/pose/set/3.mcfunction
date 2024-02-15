scoreboard players operation @s cas_pose3_1 = rotation cas_rot
scoreboard players operation @s cas_pose3_2 = head_x cas_rot
scoreboard players operation @s cas_pose3_3 = rarm_x cas_rot
scoreboard players operation @s cas_pose3_4 = larm_x cas_rot
scoreboard players operation @s cas_pose3_5 = rleg_x cas_rot
scoreboard players operation @s cas_pose3_6 = lleg_x cas_rot
scoreboard players operation @s cas_pose3_7 = body_x cas_rot
execute unless score @s cas_anitime3 matches 1.. run scoreboard players set @s cas_anitime3 50
tellraw @p[tag=casTemp] {"translate":"Set animation frame %s to current armor stand pose.","color":"green","with":[{"text":"3"}]}
tag @s add Animate3
