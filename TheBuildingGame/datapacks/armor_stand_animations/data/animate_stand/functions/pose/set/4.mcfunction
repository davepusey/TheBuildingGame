scoreboard players operation @s cas_pose4_1 = rotation cas_rot
scoreboard players operation @s cas_pose4_2 = head_x cas_rot
scoreboard players operation @s cas_pose4_3 = rarm_x cas_rot
scoreboard players operation @s cas_pose4_4 = larm_x cas_rot
scoreboard players operation @s cas_pose4_5 = rleg_x cas_rot
scoreboard players operation @s cas_pose4_6 = lleg_x cas_rot
scoreboard players operation @s cas_pose4_7 = body_x cas_rot
execute unless score @s cas_anitime4 matches 1.. run scoreboard players set @s cas_anitime4 50
tellraw @p[tag=casTemp] {"translate":"Set animation frame %s to current armor stand pose.","color":"green","with":[{"text":"4"}]}
tag @s add Animate4
