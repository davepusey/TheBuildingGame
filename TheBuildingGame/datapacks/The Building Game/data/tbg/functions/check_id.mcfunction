#######
# Compiled from data/tbg/functions/check_id.mcscript
# to .//The Building Game/data/tbg/functions/check_id.mcfunction
#
# Generated by Minecraft Script for 1.13
######
scoreboard players set #check_id id 0
function tbg:check_id/run
tag @a remove checked
scoreboard players set #count id 0
scoreboard players operation #count id > @a[team=players] id
