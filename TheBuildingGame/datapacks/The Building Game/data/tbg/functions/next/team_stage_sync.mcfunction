#######
# Compiled from data/tbg/functions/next.mcscript
# to .//The Building Game/data/tbg/functions/next/team_stage_sync.mcfunction
#
# Generated by Minecraft Script for 1.13
######
# this file is generated based on a function specified in.//The Building Game/data/tbg/functions/next.mcscript
scoreboard players operation #var team = @s team
execute as @a if score @s team = #var team run scoreboard players set #var team -1
execute if score #var team matches -1 run scoreboard players operation @s stage = #stage tbg
