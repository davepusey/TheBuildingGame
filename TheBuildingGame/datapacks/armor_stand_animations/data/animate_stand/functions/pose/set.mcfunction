execute as @e[type=armor_stand,distance=..50] if score @s cas_uuidleast_q = @p[tag=casSelected] cas_uuidleast_q if score @s cas_uuidmost_q = @p[tag=casSelected] cas_uuidmost_q run tag @s add casTemp
execute as @e[type=armor_stand,tag=casTemp,limit=1] run function animate_stand:pose/set/stand
execute if score rotation cas_rot matches ..-1 run scoreboard players add rotation cas_rot 720
execute if score head_x cas_rot matches ..-1 run scoreboard players add head_x cas_rot 720
execute if score head_y cas_rot matches ..-1 run scoreboard players add head_y cas_rot 720
execute if score head_z cas_rot matches ..-1 run scoreboard players add head_z cas_rot 720
execute if score rarm_x cas_rot matches ..-1 run scoreboard players add rarm_x cas_rot 720
execute if score rarm_y cas_rot matches ..-1 run scoreboard players add rarm_y cas_rot 720
execute if score rarm_z cas_rot matches ..-1 run scoreboard players add rarm_z cas_rot 720
execute if score larm_x cas_rot matches ..-1 run scoreboard players add larm_x cas_rot 720
execute if score larm_y cas_rot matches ..-1 run scoreboard players add larm_y cas_rot 720
execute if score larm_z cas_rot matches ..-1 run scoreboard players add larm_z cas_rot 720
execute if score rleg_x cas_rot matches ..-1 run scoreboard players add rleg_x cas_rot 720
execute if score rleg_y cas_rot matches ..-1 run scoreboard players add rleg_y cas_rot 720
execute if score rleg_z cas_rot matches ..-1 run scoreboard players add rleg_z cas_rot 720
execute if score lleg_x cas_rot matches ..-1 run scoreboard players add lleg_x cas_rot 720
execute if score lleg_y cas_rot matches ..-1 run scoreboard players add lleg_y cas_rot 720
execute if score lleg_z cas_rot matches ..-1 run scoreboard players add lleg_z cas_rot 720
execute if score body_x cas_rot matches ..-1 run scoreboard players add body_x cas_rot 720
execute if score body_y cas_rot matches ..-1 run scoreboard players add body_y cas_rot 720
execute if score body_z cas_rot matches ..-1 run scoreboard players add body_z cas_rot 720
scoreboard players operation head_x cas_rot *= 720 cas_pos
scoreboard players operation head_x cas_rot += head_y cas_rot
scoreboard players operation head_x cas_rot *= 720 cas_pos
scoreboard players operation head_x cas_rot += head_z cas_rot
scoreboard players operation rarm_x cas_rot *= 720 cas_pos
scoreboard players operation rarm_x cas_rot += rarm_y cas_rot
scoreboard players operation rarm_x cas_rot *= 720 cas_pos
scoreboard players operation rarm_x cas_rot += rarm_z cas_rot
scoreboard players operation larm_x cas_rot *= 720 cas_pos
scoreboard players operation larm_x cas_rot += larm_y cas_rot
scoreboard players operation larm_x cas_rot *= 720 cas_pos
scoreboard players operation larm_x cas_rot += larm_z cas_rot
scoreboard players operation rleg_x cas_rot *= 720 cas_pos
scoreboard players operation rleg_x cas_rot += rleg_y cas_rot
scoreboard players operation rleg_x cas_rot *= 720 cas_pos
scoreboard players operation rleg_x cas_rot += rleg_z cas_rot
scoreboard players operation lleg_x cas_rot *= 720 cas_pos
scoreboard players operation lleg_x cas_rot += lleg_y cas_rot
scoreboard players operation lleg_x cas_rot *= 720 cas_pos
scoreboard players operation lleg_x cas_rot += lleg_z cas_rot
scoreboard players operation body_x cas_rot *= 720 cas_pos
scoreboard players operation body_x cas_rot += body_y cas_rot
scoreboard players operation body_x cas_rot *= 720 cas_pos
scoreboard players operation body_x cas_rot += body_z cas_rot
execute if score @s cas_anipose matches 1 as @e[type=armor_stand,tag=casTemp,limit=1] run function animate_stand:pose/set/1
execute if score @s cas_anipose matches 2 as @e[type=armor_stand,tag=casTemp,limit=1] run function animate_stand:pose/set/2
execute if score @s cas_anipose matches 3 as @e[type=armor_stand,tag=casTemp,limit=1] run function animate_stand:pose/set/3
execute if score @s cas_anipose matches 4 as @e[type=armor_stand,tag=casTemp,limit=1] run function animate_stand:pose/set/4
execute if score @s cas_anipose matches 5 as @e[type=armor_stand,tag=casTemp,limit=1] run function animate_stand:pose/set/5
execute unless entity @e[type=armor_stand,tag=casTemp] run tellraw @s {"translate":"Selected armor stand not in range or does not exist anymore.","color":"red"}
execute if entity @e[type=armor_stand,tag=casTemp] unless score @s cas_anipose matches 1.. run tellraw @s {"translate":"Select a frame to modify first.","color":"red"}
tag @e[type=armor_stand,tag=casTemp] remove casTemp
