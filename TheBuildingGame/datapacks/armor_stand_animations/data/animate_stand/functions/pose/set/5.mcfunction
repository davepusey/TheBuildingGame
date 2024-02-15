scoreboard players operation @s cas_pose5_1 = rotation cas_rot
scoreboard players operation @s cas_pose5_2 = head_x cas_rot
scoreboard players operation @s cas_pose5_3 = rarm_x cas_rot
scoreboard players operation @s cas_pose5_4 = larm_x cas_rot
scoreboard players operation @s cas_pose5_5 = rleg_x cas_rot
scoreboard players operation @s cas_pose5_6 = lleg_x cas_rot
scoreboard players operation @s cas_pose5_7 = body_x cas_rot
execute unless score @s cas_anitime5 matches 1.. run scoreboard players set @s cas_anitime5 50
tellraw @p[tag=casTemp] {"translate":"Set animation frame %s to current armor stand pose.","color":"green","with":[{"text":"5"}]}
tag @s add Animate5
