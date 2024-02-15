execute store result score rotation cas_rot run data get entity @s Rotation[0] 10
execute store result score head_x cas_rot run data get entity @s Pose.Head[0] 2
execute store result score head_y cas_rot run data get entity @s Pose.Head[1] 2
execute store result score head_z cas_rot run data get entity @s Pose.Head[2] 2
execute store result score rarm_x cas_rot run data get entity @s Pose.RightArm[0] 2
execute store result score rarm_y cas_rot run data get entity @s Pose.RightArm[1] 2
execute store result score rarm_z cas_rot run data get entity @s Pose.RightArm[2] 2
execute store result score larm_x cas_rot run data get entity @s Pose.LeftArm[0] 2
execute store result score larm_y cas_rot run data get entity @s Pose.LeftArm[1] 2
execute store result score larm_z cas_rot run data get entity @s Pose.LeftArm[2] 2
execute store result score rleg_x cas_rot run data get entity @s Pose.RightLeg[0] 2
execute store result score rleg_y cas_rot run data get entity @s Pose.RightLeg[1] 2
execute store result score rleg_z cas_rot run data get entity @s Pose.RightLeg[2] 2
execute store result score lleg_x cas_rot run data get entity @s Pose.LeftLeg[0] 2
execute store result score lleg_y cas_rot run data get entity @s Pose.LeftLeg[1] 2
execute store result score lleg_z cas_rot run data get entity @s Pose.LeftLeg[2] 2
execute store result score body_x cas_rot run data get entity @s Pose.Body[0] 2
execute store result score body_y cas_rot run data get entity @s Pose.Body[1] 2
execute store result score body_z cas_rot run data get entity @s Pose.Body[2] 2
execute store success score check cas_rot run data get entity @s Pose.Head[0]
execute if score check cas_rot matches 0 run function animate_stand:pose/set/head
execute store success score check cas_rot run data get entity @s Pose.RightArm[0]
execute if score check cas_rot matches 0 run function animate_stand:pose/set/right_arm
execute store success score check cas_rot run data get entity @s Pose.LeftArm[0]
execute if score check cas_rot matches 0 run function animate_stand:pose/set/left_arm
execute store success score check cas_rot run data get entity @s Pose.RightLeg[0]
execute if score check cas_rot matches 0 run function animate_stand:pose/set/right_leg
execute store success score check cas_rot run data get entity @s Pose.LeftLeg[0]
execute if score check cas_rot matches 0 run function animate_stand:pose/set/left_leg
execute store success score check cas_rot run data get entity @s Pose.Body[0]
execute if score check cas_rot matches 0 run function animate_stand:pose/set/body
execute store result entity @s Rotation[0] float 0.1 run scoreboard players get rotation cas_rot
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