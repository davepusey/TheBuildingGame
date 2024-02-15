execute if score @s cas_anipose matches 1 run function animate_stand:animate/pose/change/1
execute if score @s[tag=!casTemp] cas_anipose matches 2 run function animate_stand:animate/pose/change/2
execute if score @s[tag=!casTemp] cas_anipose matches 3 run function animate_stand:animate/pose/change/3
execute if score @s[tag=!casTemp] cas_anipose matches 4 run function animate_stand:animate/pose/change/4
execute if score @s[tag=!casTemp] cas_anipose matches 5 run function animate_stand:animate/pose/change/5
tag @s[tag=casTemp] remove casTemp
scoreboard players operation head_z cas_rot = head_x cas_rot
scoreboard players operation head_z cas_rot %= 720 cas_pos
scoreboard players operation head_x cas_rot /= 720 cas_pos
scoreboard players operation head_y cas_rot = head_x cas_rot
scoreboard players operation head_y cas_rot %= 720 cas_pos
scoreboard players operation head_x cas_rot /= 720 cas_pos
scoreboard players operation rarm_z cas_rot = rarm_x cas_rot
scoreboard players operation rarm_z cas_rot %= 720 cas_pos
scoreboard players operation rarm_x cas_rot /= 720 cas_pos
scoreboard players operation rarm_y cas_rot = rarm_x cas_rot
scoreboard players operation rarm_y cas_rot %= 720 cas_pos
scoreboard players operation rarm_x cas_rot /= 720 cas_pos
scoreboard players operation larm_z cas_rot = larm_x cas_rot
scoreboard players operation larm_z cas_rot %= 720 cas_pos
scoreboard players operation larm_x cas_rot /= 720 cas_pos
scoreboard players operation larm_y cas_rot = larm_x cas_rot
scoreboard players operation larm_y cas_rot %= 720 cas_pos
scoreboard players operation larm_x cas_rot /= 720 cas_pos
scoreboard players operation rleg_z cas_rot = rleg_x cas_rot
scoreboard players operation rleg_z cas_rot %= 720 cas_pos
scoreboard players operation rleg_x cas_rot /= 720 cas_pos
scoreboard players operation rleg_y cas_rot = rleg_x cas_rot
scoreboard players operation rleg_y cas_rot %= 720 cas_pos
scoreboard players operation rleg_x cas_rot /= 720 cas_pos
scoreboard players operation lleg_z cas_rot = lleg_x cas_rot
scoreboard players operation lleg_z cas_rot %= 720 cas_pos
scoreboard players operation lleg_x cas_rot /= 720 cas_pos
scoreboard players operation lleg_y cas_rot = lleg_x cas_rot
scoreboard players operation lleg_y cas_rot %= 720 cas_pos
scoreboard players operation lleg_x cas_rot /= 720 cas_pos
scoreboard players operation body_z cas_rot = body_x cas_rot
scoreboard players operation body_z cas_rot %= 720 cas_pos
scoreboard players operation body_x cas_rot /= 720 cas_pos
scoreboard players operation body_y cas_rot = body_x cas_rot
scoreboard players operation body_y cas_rot %= 720 cas_pos
scoreboard players operation body_x cas_rot /= 720 cas_pos
scoreboard players operation @s cas_anicurr_2_3 = @s cas_anicurr_2_1
scoreboard players operation @s cas_anicurr_2_3 %= 720 cas_pos
scoreboard players operation @s cas_anicurr_2_1 /= 720 cas_pos
scoreboard players operation @s cas_anicurr_2_2 = @s cas_anicurr_2_1
scoreboard players operation @s cas_anicurr_2_2 %= 720 cas_pos
scoreboard players operation @s cas_anicurr_2_1 /= 720 cas_pos
scoreboard players operation @s cas_anicurr_3_3 = @s cas_anicurr_3_1
scoreboard players operation @s cas_anicurr_3_3 %= 720 cas_pos
scoreboard players operation @s cas_anicurr_3_1 /= 720 cas_pos
scoreboard players operation @s cas_anicurr_3_2 = @s cas_anicurr_3_1
scoreboard players operation @s cas_anicurr_3_2 %= 720 cas_pos
scoreboard players operation @s cas_anicurr_3_1 /= 720 cas_pos
scoreboard players operation @s cas_anicurr_4_3 = @s cas_anicurr_4_1
scoreboard players operation @s cas_anicurr_4_3 %= 720 cas_pos
scoreboard players operation @s cas_anicurr_4_1 /= 720 cas_pos
scoreboard players operation @s cas_anicurr_4_2 = @s cas_anicurr_4_1
scoreboard players operation @s cas_anicurr_4_2 %= 720 cas_pos
scoreboard players operation @s cas_anicurr_4_1 /= 720 cas_pos
scoreboard players operation @s cas_anicurr_5_3 = @s cas_anicurr_5_1
scoreboard players operation @s cas_anicurr_5_3 %= 720 cas_pos
scoreboard players operation @s cas_anicurr_5_1 /= 720 cas_pos
scoreboard players operation @s cas_anicurr_5_2 = @s cas_anicurr_5_1
scoreboard players operation @s cas_anicurr_5_2 %= 720 cas_pos
scoreboard players operation @s cas_anicurr_5_1 /= 720 cas_pos
scoreboard players operation @s cas_anicurr_6_3 = @s cas_anicurr_6_1
scoreboard players operation @s cas_anicurr_6_3 %= 720 cas_pos
scoreboard players operation @s cas_anicurr_6_1 /= 720 cas_pos
scoreboard players operation @s cas_anicurr_6_2 = @s cas_anicurr_6_1
scoreboard players operation @s cas_anicurr_6_2 %= 720 cas_pos
scoreboard players operation @s cas_anicurr_6_1 /= 720 cas_pos
scoreboard players operation @s cas_anicurr_7_3 = @s cas_anicurr_7_1
scoreboard players operation @s cas_anicurr_7_3 %= 720 cas_pos
scoreboard players operation @s cas_anicurr_7_1 /= 720 cas_pos
scoreboard players operation @s cas_anicurr_7_2 = @s cas_anicurr_7_1
scoreboard players operation @s cas_anicurr_7_2 %= 720 cas_pos
scoreboard players operation @s cas_anicurr_7_1 /= 720 cas_pos
execute store result entity @s[tag=!MoveLook] Rotation[0] float 0.1 run scoreboard players get rotation cas_rot
execute store result entity @s Pose.Head[0] float 0.5 run scoreboard players get head_x cas_rot
execute store result entity @s Pose.Head[1] float 0.5 run scoreboard players get head_y cas_rot
execute store result entity @s Pose.Head[2] float 0.5 run scoreboard players get head_z cas_rot
execute store result entity @s Pose.RightArm[0] float 0.5 run scoreboard players get rarm_x cas_rot
execute store result entity @s Pose.RightArm[1] float 0.5 run scoreboard players get rarm_y cas_rot
execute store result entity @s Pose.RightArm[2] float 0.5 run scoreboard players get rarm_z cas_rot
execute store result entity @s Pose.LeftArm[0] float 0.5 run scoreboard players get larm_x cas_rot
execute store result entity @s Pose.LeftArm[1] float 0.5 run scoreboard players get larm_y cas_rot
execute store result entity @s Pose.LeftArm[2] float 0.5 run scoreboard players get larm_z cas_rot
execute store result entity @s Pose.RightLeg[0] float 0.5 run scoreboard players get rleg_x cas_rot
execute store result entity @s Pose.RightLeg[1] float 0.5 run scoreboard players get rleg_y cas_rot
execute store result entity @s Pose.RightLeg[2] float 0.5 run scoreboard players get rleg_z cas_rot
execute store result entity @s Pose.LeftLeg[0] float 0.5 run scoreboard players get lleg_x cas_rot
execute store result entity @s Pose.LeftLeg[1] float 0.5 run scoreboard players get lleg_y cas_rot
execute store result entity @s Pose.LeftLeg[2] float 0.5 run scoreboard players get lleg_z cas_rot
execute store result entity @s Pose.Body[0] float 0.5 run scoreboard players get body_x cas_rot
execute store result entity @s Pose.Body[1] float 0.5 run scoreboard players get body_y cas_rot
execute store result entity @s Pose.Body[2] float 0.5 run scoreboard players get body_z cas_rot
scoreboard players operation @s cas_anicurr_1 -= rotation cas_rot
scoreboard players operation @s cas_anicurr_2_1 -= head_x cas_rot
scoreboard players operation @s cas_anicurr_2_2 -= head_y cas_rot
scoreboard players operation @s cas_anicurr_2_3 -= head_z cas_rot
scoreboard players operation @s cas_anicurr_3_1 -= rarm_x cas_rot
scoreboard players operation @s cas_anicurr_3_2 -= rarm_y cas_rot
scoreboard players operation @s cas_anicurr_3_3 -= rarm_z cas_rot
scoreboard players operation @s cas_anicurr_4_1 -= larm_x cas_rot
scoreboard players operation @s cas_anicurr_4_2 -= larm_y cas_rot
scoreboard players operation @s cas_anicurr_4_3 -= larm_z cas_rot
scoreboard players operation @s cas_anicurr_5_1 -= rleg_x cas_rot
scoreboard players operation @s cas_anicurr_5_2 -= rleg_y cas_rot
scoreboard players operation @s cas_anicurr_5_3 -= rleg_z cas_rot
scoreboard players operation @s cas_anicurr_6_1 -= lleg_x cas_rot
scoreboard players operation @s cas_anicurr_6_2 -= lleg_y cas_rot
scoreboard players operation @s cas_anicurr_6_3 -= lleg_z cas_rot
scoreboard players operation @s cas_anicurr_7_1 -= body_x cas_rot
scoreboard players operation @s cas_anicurr_7_2 -= body_y cas_rot
scoreboard players operation @s cas_anicurr_7_3 -= body_z cas_rot
execute if score @s cas_anicurr_1 matches 1801.. run scoreboard players remove @s cas_anicurr_1 3600
execute if score @s cas_anicurr_1 matches ..-1800 run scoreboard players add @s cas_anicurr_1 3600
execute if score @s cas_anicurr_2_1 matches 361.. run scoreboard players remove @s cas_anicurr_2_1 720
execute if score @s cas_anicurr_2_1 matches ..-360 run scoreboard players add @s cas_anicurr_2_1 720
execute if score @s cas_anicurr_2_2 matches 361.. run scoreboard players remove @s cas_anicurr_2_2 720
execute if score @s cas_anicurr_2_2 matches ..-360 run scoreboard players add @s cas_anicurr_2_2 720
execute if score @s cas_anicurr_2_3 matches 361.. run scoreboard players remove @s cas_anicurr_2_3 720
execute if score @s cas_anicurr_2_3 matches ..-360 run scoreboard players add @s cas_anicurr_2_3 720
execute if score @s cas_anicurr_3_1 matches 361.. run scoreboard players remove @s cas_anicurr_3_1 720
execute if score @s cas_anicurr_3_1 matches ..-360 run scoreboard players add @s cas_anicurr_3_1 720
execute if score @s cas_anicurr_3_2 matches 361.. run scoreboard players remove @s cas_anicurr_3_2 720
execute if score @s cas_anicurr_3_2 matches ..-360 run scoreboard players add @s cas_anicurr_3_2 720
execute if score @s cas_anicurr_3_3 matches 361.. run scoreboard players remove @s cas_anicurr_3_3 720
execute if score @s cas_anicurr_3_3 matches ..-360 run scoreboard players add @s cas_anicurr_3_3 720
execute if score @s cas_anicurr_4_1 matches 361.. run scoreboard players remove @s cas_anicurr_4_1 720
execute if score @s cas_anicurr_4_1 matches ..-360 run scoreboard players add @s cas_anicurr_4_1 720
execute if score @s cas_anicurr_4_2 matches 361.. run scoreboard players remove @s cas_anicurr_4_2 720
execute if score @s cas_anicurr_4_2 matches ..-360 run scoreboard players add @s cas_anicurr_4_2 720
execute if score @s cas_anicurr_4_3 matches 361.. run scoreboard players remove @s cas_anicurr_4_3 720
execute if score @s cas_anicurr_4_3 matches ..-360 run scoreboard players add @s cas_anicurr_4_3 720
execute if score @s cas_anicurr_5_1 matches 361.. run scoreboard players remove @s cas_anicurr_5_1 720
execute if score @s cas_anicurr_5_1 matches ..-360 run scoreboard players add @s cas_anicurr_5_1 720
execute if score @s cas_anicurr_5_2 matches 361.. run scoreboard players remove @s cas_anicurr_5_2 720
execute if score @s cas_anicurr_5_2 matches ..-360 run scoreboard players add @s cas_anicurr_5_2 720
execute if score @s cas_anicurr_5_3 matches 361.. run scoreboard players remove @s cas_anicurr_5_3 720
execute if score @s cas_anicurr_5_3 matches ..-360 run scoreboard players add @s cas_anicurr_5_3 720
execute if score @s cas_anicurr_6_1 matches 361.. run scoreboard players remove @s cas_anicurr_6_1 720
execute if score @s cas_anicurr_6_1 matches ..-360 run scoreboard players add @s cas_anicurr_6_1 720
execute if score @s cas_anicurr_6_2 matches 361.. run scoreboard players remove @s cas_anicurr_6_2 720
execute if score @s cas_anicurr_6_2 matches ..-360 run scoreboard players add @s cas_anicurr_6_2 720
execute if score @s cas_anicurr_6_3 matches 361.. run scoreboard players remove @s cas_anicurr_6_3 720
execute if score @s cas_anicurr_6_3 matches ..-360 run scoreboard players add @s cas_anicurr_6_3 720
execute if score @s cas_anicurr_7_1 matches 361.. run scoreboard players remove @s cas_anicurr_7_1 720
execute if score @s cas_anicurr_7_1 matches ..-360 run scoreboard players add @s cas_anicurr_7_1 720
execute if score @s cas_anicurr_7_2 matches 361.. run scoreboard players remove @s cas_anicurr_7_2 720
execute if score @s cas_anicurr_7_2 matches ..-360 run scoreboard players add @s cas_anicurr_7_2 720
execute if score @s cas_anicurr_7_3 matches 361.. run scoreboard players remove @s cas_anicurr_7_3 720
execute if score @s cas_anicurr_7_3 matches ..-360 run scoreboard players add @s cas_anicurr_7_3 720
scoreboard players set multiply cas_pos 200
scoreboard players operation multiply cas_pos /= @s cas_anitime
scoreboard players operation @s cas_anicurr_1 *= multiply cas_pos
scoreboard players operation @s cas_anicurr_2_1 *= multiply cas_pos
scoreboard players operation @s cas_anicurr_2_2 *= multiply cas_pos
scoreboard players operation @s cas_anicurr_2_3 *= multiply cas_pos
scoreboard players operation @s cas_anicurr_3_1 *= multiply cas_pos
scoreboard players operation @s cas_anicurr_3_2 *= multiply cas_pos
scoreboard players operation @s cas_anicurr_3_3 *= multiply cas_pos
scoreboard players operation @s cas_anicurr_4_1 *= multiply cas_pos
scoreboard players operation @s cas_anicurr_4_2 *= multiply cas_pos
scoreboard players operation @s cas_anicurr_4_3 *= multiply cas_pos
scoreboard players operation @s cas_anicurr_5_1 *= multiply cas_pos
scoreboard players operation @s cas_anicurr_5_2 *= multiply cas_pos
scoreboard players operation @s cas_anicurr_5_3 *= multiply cas_pos
scoreboard players operation @s cas_anicurr_6_1 *= multiply cas_pos
scoreboard players operation @s cas_anicurr_6_2 *= multiply cas_pos
scoreboard players operation @s cas_anicurr_6_3 *= multiply cas_pos
scoreboard players operation @s cas_anicurr_7_1 *= multiply cas_pos
scoreboard players operation @s cas_anicurr_7_2 *= multiply cas_pos
scoreboard players operation @s cas_anicurr_7_3 *= multiply cas_pos