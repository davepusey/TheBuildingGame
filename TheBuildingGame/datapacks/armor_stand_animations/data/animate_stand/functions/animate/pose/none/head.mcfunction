scoreboard players set head_x cas_rot 0
scoreboard players set head_y cas_rot 0
scoreboard players set head_z cas_rot 0
execute unless score @s cas_anicurr_2_3 matches 0 run data merge entity @s {Pose:{Head:[0f,0f,90f]}}
execute unless score @s cas_anicurr_2_2 matches 0 run data merge entity @s {Pose:{Head:[0f,90f,0f]}}
execute unless score @s cas_anicurr_2_1 matches 0 run data merge entity @s {Pose:{Head:[90f,0f,0f]}}