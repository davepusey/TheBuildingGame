execute if score pr cas_rot matches 0 as @e[type=armor_stand,tag=casTemp,limit=1] at @s run tp @s ~ ~ ~0.25
execute if score pr cas_rot matches 1 as @e[type=armor_stand,tag=casTemp,limit=1] at @s run tp @s ~-0.25 ~ ~
execute if score pr cas_rot matches 2 as @e[type=armor_stand,tag=casTemp,limit=1] at @s run tp @s ~ ~ ~-0.25
execute if score pr cas_rot matches 3 as @e[type=armor_stand,tag=casTemp,limit=1] at @s run tp @s ~0.25 ~ ~
