#######
# Compiled from main/lobby/options/team_members.mcscript
# to .//The Building Game/data/tbg/functions/main/lobby/options/team_members/leave.mcfunction
#
# Generated by Minecraft Script for 1.13
######
# this file is generated based on a function specified in.//The Building Game/data/tbg/functions/main/lobby/options/team_members.mcscript
title @s actionbar ""
tag @s add tag
scoreboard players set #var options 1
execute as @a[tag=!tag] if score @s team = @a[tag=tag,limit=1] team run scoreboard players set #var options 0
execute if score #var options matches 0 run function tbg:main/lobby/play/id

tag @s remove tag
scoreboard players reset @s team