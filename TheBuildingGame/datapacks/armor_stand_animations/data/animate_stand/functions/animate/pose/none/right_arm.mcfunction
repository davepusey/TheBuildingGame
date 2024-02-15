scoreboard players set rarm_x cas_rot -6000
scoreboard players set rarm_y cas_rot 0
scoreboard players set rarm_z cas_rot 4000
execute unless score @s cas_anicurr_3_3 matches 0 run data merge entity @s {Pose:{RightArm:[-30f,0f,90f]}}
execute unless score @s cas_anicurr_3_2 matches 0 run data merge entity @s {Pose:{RightArm:[0f,90f,0f]}}
execute unless score @s cas_anicurr_3_1 matches 0 run data merge entity @s {Pose:{RightArm:[90f,0f,20f]}}