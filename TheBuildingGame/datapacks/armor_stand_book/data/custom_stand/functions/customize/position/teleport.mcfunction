execute rotated as @e[type=armor_stand,tag=casTemp,limit=1] positioned as @s positioned ~0.03125 ~0.03125 ~0.03125 run tp @e[type=armor_stand,tag=casTemp,limit=1] ~ ~ ~
execute as @e[type=armor_stand,tag=casTemp,limit=1] store result entity @s Pos[0] double 0.0625 run data get entity @s Pos[0] 16
execute as @e[type=armor_stand,tag=casTemp,limit=1] store result entity @s Pos[1] double 0.0625 run data get entity @s Pos[1] 16
execute as @e[type=armor_stand,tag=casTemp,limit=1] store result entity @s Pos[2] double 0.0625 run data get entity @s Pos[2] 16
