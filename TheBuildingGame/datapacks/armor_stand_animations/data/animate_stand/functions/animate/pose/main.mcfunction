execute unless score @s cas_anitime matches 1.. run function animate_stand:animate/pose/change
execute store result score rotation cas_rot run data get entity @s Rotation[0] 2000
execute store result score head_x cas_rot run data get entity @s Pose.Head[0] 400
execute store result score head_y cas_rot run data get entity @s Pose.Head[1] 400
execute store result score head_z cas_rot run data get entity @s Pose.Head[2] 400
execute store result score rarm_x cas_rot run data get entity @s Pose.RightArm[0] 400
execute store result score rarm_y cas_rot run data get entity @s Pose.RightArm[1] 400
execute store result score rarm_z cas_rot run data get entity @s Pose.RightArm[2] 400
execute store result score larm_x cas_rot run data get entity @s Pose.LeftArm[0] 400
execute store result score larm_y cas_rot run data get entity @s Pose.LeftArm[1] 400
execute store result score larm_z cas_rot run data get entity @s Pose.LeftArm[2] 400
execute store result score rleg_x cas_rot run data get entity @s Pose.RightLeg[0] 400
execute store result score rleg_y cas_rot run data get entity @s Pose.RightLeg[1] 400
execute store result score rleg_z cas_rot run data get entity @s Pose.RightLeg[2] 400
execute store result score lleg_x cas_rot run data get entity @s Pose.LeftLeg[0] 400
execute store result score lleg_y cas_rot run data get entity @s Pose.LeftLeg[1] 400
execute store result score lleg_z cas_rot run data get entity @s Pose.LeftLeg[2] 400
execute store result score body_x cas_rot run data get entity @s Pose.Body[0] 400
execute store result score body_y cas_rot run data get entity @s Pose.Body[1] 400
execute store result score body_z cas_rot run data get entity @s Pose.Body[2] 400
execute store success score check cas_rot run data get entity @s Pose.Head[0]
execute if score check cas_rot matches 0 run function animate_stand:animate/pose/none/head
execute store success score check cas_rot run data get entity @s Pose.RightArm[0]
execute if score check cas_rot matches 0 run function animate_stand:animate/pose/none/right_arm
execute store success score check cas_rot run data get entity @s Pose.LeftArm[0]
execute if score check cas_rot matches 0 run function animate_stand:animate/pose/none/left_arm
execute store success score check cas_rot run data get entity @s Pose.RightLeg[0]
execute if score check cas_rot matches 0 run function animate_stand:animate/pose/none/right_leg
execute store success score check cas_rot run data get entity @s Pose.LeftLeg[0]
execute if score check cas_rot matches 0 run function animate_stand:animate/pose/none/left_leg
execute store success score check cas_rot run data get entity @s Pose.Body[0]
execute if score check cas_rot matches 0 run function animate_stand:animate/pose/none/body
scoreboard players operation rotation cas_rot += @s cas_anicurr_1
scoreboard players operation head_x cas_rot += @s cas_anicurr_2_1
scoreboard players operation head_y cas_rot += @s cas_anicurr_2_2
scoreboard players operation head_z cas_rot += @s cas_anicurr_2_3
scoreboard players operation rarm_x cas_rot += @s cas_anicurr_3_1
scoreboard players operation rarm_y cas_rot += @s cas_anicurr_3_2
scoreboard players operation rarm_z cas_rot += @s cas_anicurr_3_3
scoreboard players operation larm_x cas_rot += @s cas_anicurr_4_1
scoreboard players operation larm_y cas_rot += @s cas_anicurr_4_2
scoreboard players operation larm_z cas_rot += @s cas_anicurr_4_3
scoreboard players operation rleg_x cas_rot += @s cas_anicurr_5_1
scoreboard players operation rleg_y cas_rot += @s cas_anicurr_5_2
scoreboard players operation rleg_z cas_rot += @s cas_anicurr_5_3
scoreboard players operation lleg_x cas_rot += @s cas_anicurr_6_1
scoreboard players operation lleg_y cas_rot += @s cas_anicurr_6_2
scoreboard players operation lleg_z cas_rot += @s cas_anicurr_6_3
scoreboard players operation body_x cas_rot += @s cas_anicurr_7_1
scoreboard players operation body_y cas_rot += @s cas_anicurr_7_2
scoreboard players operation body_z cas_rot += @s cas_anicurr_7_3
execute store result entity @s[tag=!MoveLook] Rotation[0] float 0.0005 run scoreboard players get rotation cas_rot
execute store result entity @s Pose.Head[0] float 0.0025 run scoreboard players get head_x cas_rot
execute store result entity @s Pose.Head[1] float 0.0025 run scoreboard players get head_y cas_rot
execute store result entity @s Pose.Head[2] float 0.0025 run scoreboard players get head_z cas_rot
execute store result entity @s Pose.RightArm[0] float 0.0025 run scoreboard players get rarm_x cas_rot
execute store result entity @s Pose.RightArm[1] float 0.0025 run scoreboard players get rarm_y cas_rot
execute store result entity @s Pose.RightArm[2] float 0.0025 run scoreboard players get rarm_z cas_rot
execute store result entity @s Pose.LeftArm[0] float 0.0025 run scoreboard players get larm_x cas_rot
execute store result entity @s Pose.LeftArm[1] float 0.0025 run scoreboard players get larm_y cas_rot
execute store result entity @s Pose.LeftArm[2] float 0.0025 run scoreboard players get larm_z cas_rot
execute store result entity @s Pose.RightLeg[0] float 0.0025 run scoreboard players get rleg_x cas_rot
execute store result entity @s Pose.RightLeg[1] float 0.0025 run scoreboard players get rleg_y cas_rot
execute store result entity @s Pose.RightLeg[2] float 0.0025 run scoreboard players get rleg_z cas_rot
execute store result entity @s Pose.LeftLeg[0] float 0.0025 run scoreboard players get lleg_x cas_rot
execute store result entity @s Pose.LeftLeg[1] float 0.0025 run scoreboard players get lleg_y cas_rot
execute store result entity @s Pose.LeftLeg[2] float 0.0025 run scoreboard players get lleg_z cas_rot
execute store result entity @s Pose.Body[0] float 0.0025 run scoreboard players get body_x cas_rot
execute store result entity @s Pose.Body[1] float 0.0025 run scoreboard players get body_y cas_rot
execute store result entity @s Pose.Body[2] float 0.0025 run scoreboard players get body_z cas_rot
scoreboard players remove @s cas_anitime 1