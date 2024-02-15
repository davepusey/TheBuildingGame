scoreboard players set larm_x cas_rot -4000
scoreboard players set larm_y cas_rot 0
scoreboard players set larm_z cas_rot -4000
execute unless score @s cas_anicurr_4_3 matches 0 run data merge entity @s {Pose:{LeftArm:[-20f,0f,90f]}}
execute unless score @s cas_anicurr_4_2 matches 0 run data merge entity @s {Pose:{LeftArm:[0f,90f,0f]}}
execute unless score @s cas_anicurr_4_1 matches 0 run data merge entity @s {Pose:{LeftArm:[90f,0f,-20f]}}