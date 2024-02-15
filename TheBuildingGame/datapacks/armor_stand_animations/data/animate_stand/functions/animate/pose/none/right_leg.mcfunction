scoreboard players set rleg_x cas_rot 400
scoreboard players set rleg_y cas_rot 0
scoreboard players set rleg_z cas_rot 400
execute unless score @s cas_anicurr_5_3 matches 0 run data merge entity @s {Pose:{RightLeg:[2f,0f,90f]}}
execute unless score @s cas_anicurr_5_2 matches 0 run data merge entity @s {Pose:{RightLeg:[0f,90f,0f]}}
execute unless score @s cas_anicurr_5_1 matches 0 run data merge entity @s {Pose:{RightLeg:[90f,0f,2f]}}