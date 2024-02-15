scoreboard players operation @s cas_pose2_1 = rotation cas_rot
scoreboard players operation @s cas_pose2_2 = head_x cas_rot
scoreboard players operation @s cas_pose2_3 = rarm_x cas_rot
scoreboard players operation @s cas_pose2_4 = larm_x cas_rot
scoreboard players operation @s cas_pose2_5 = rleg_x cas_rot
scoreboard players operation @s cas_pose2_6 = lleg_x cas_rot
scoreboard players operation @s cas_pose2_7 = body_x cas_rot
execute unless score @s cas_anitime2 matches 1.. run scoreboard players set @s cas_anitime2 50
tellraw @p[tag=casTemp] {"translate":"Set animation frame %s to current armor stand pose.","color":"green","with":[{"text":"2"}]}
tag @s add Animate2
