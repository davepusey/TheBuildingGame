scoreboard players set rleg_x cas_rot -400
scoreboard players set rleg_y cas_rot 0
scoreboard players set rleg_z cas_rot -400
execute unless score @s cas_anicurr_6_3 matches 0 run data merge entity @s {Pose:{LeftLeg:[-2f,0f,90f]}}
execute unless score @s cas_anicurr_6_2 matches 0 run data merge entity @s {Pose:{LeftLeg:[0f,90f,0f]}}
execute unless score @s cas_anicurr_6_1 matches 0 run data merge entity @s {Pose:{LeftLeg:[90f,0f,-2f]}}