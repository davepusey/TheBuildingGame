scoreboard players set body_x cas_rot 0
scoreboard players set body_y cas_rot 0
scoreboard players set body_z cas_rot 0
execute unless score @s cas_anicurr_7_3 matches 0 run data merge entity @s {Pose:{Body:[0f,0f,90f]}}
execute unless score @s cas_anicurr_7_2 matches 0 run data merge entity @s {Pose:{Body:[0f,90f,0f]}}
execute unless score @s cas_anicurr_7_1 matches 0 run data merge entity @s {Pose:{Body:[90f,0f,0f]}}