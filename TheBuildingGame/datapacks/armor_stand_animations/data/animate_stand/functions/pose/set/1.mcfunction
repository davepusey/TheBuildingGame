scoreboard players operation @s cas_pose1_1 = rotation cas_rot
scoreboard players operation @s cas_pose1_2 = head_x cas_rot
scoreboard players operation @s cas_pose1_3 = rarm_x cas_rot
scoreboard players operation @s cas_pose1_4 = larm_x cas_rot
scoreboard players operation @s cas_pose1_5 = rleg_x cas_rot
scoreboard players operation @s cas_pose1_6 = lleg_x cas_rot
scoreboard players operation @s cas_pose1_7 = body_x cas_rot
execute unless score @s cas_anitime1 matches 1.. run scoreboard players set @s cas_anitime1 50
tellraw @p[tag=casTemp] {"translate":"Set animation frame %s to current armor stand pose.","color":"green","with":[{"text":"1"}]}
tag @s add Animate1
