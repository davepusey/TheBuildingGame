#######
# Compiled from functions/next/writing/summon_team_bat.mcscript
# to .//The Building Game/data/tbg/functions/next/writing/summon_team_bat/check.mcfunction
#
# Generated by Minecraft Script for 1.13
######
execute if entity @e[tag=tag] run function tbg:next/writing/summon_bat

tag @e[tag=tag] remove tag