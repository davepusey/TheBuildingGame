#######
# Compiled from functions/next/writing/summon_team_bat.mcscript
# to .//The Building Game/data/tbg/functions/next/writing/summon_team_bat.mcfunction
#
# Generated by Minecraft Script for 1.13
######
tag @s add tag
execute as @a[team=players,scores={team=1..}] if score @s team = @e[tag=tag,limit=1] team run function tbg:next/writing/summon_team_bat/check
tag @s remove tag
