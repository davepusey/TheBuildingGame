execute store success score check cas_rot run data get entity @s Pose.LeftArm[1]
execute if score check cas_rot matches 0 run data merge entity @s {Pose:{LeftArm:[-10f,90f,-10f]}}
execute store result entity @s Pose.LeftArm[1] float 1 run scoreboard players get apply cas_rot