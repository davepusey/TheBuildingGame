#######
# Compiled from tbg/functions/main/building.mcscript
# to .//The Building Game/data/tbg/functions/main/building.mcfunction
#
# Generated by Minecraft Script for 1.13
######
execute as @a[nbt=!{Dimension:"minecraft:overworld"}] in overworld run function tbg:next/teleport
execute as @a[team=spectators] at @s if entity @e[tag=renamed,dx=-32,dy=-32,dz=-32] run title @s actionbar [{"translate":"You\u2019re looking at: "},{"selector":"@e[tag=renamed,dx=-32,dy=-32,dz=-32]","color":"gold"}]
execute as @a[team=players] run function tbg:main/building/message
execute as @e[tag=field] at @s if block ~ ~1 ~ stone_button[powered=true] run function tbg:main/building/found
execute at @e[tag=field] run clone -10 32 -15 -10 33 -15 ~ ~ ~
execute as @e[tag=floor] at @s positioned ~ ~-0.65 ~ run function tbg:main/building/floor
execute unless entity @e[tag=field] run function tbg:next

execute if score time options matches 1.. run scoreboard players add #ttime tbg 1
execute if score time options matches 1.. if score #ttime tbg matches 20 run function tbg:main/building/timer

