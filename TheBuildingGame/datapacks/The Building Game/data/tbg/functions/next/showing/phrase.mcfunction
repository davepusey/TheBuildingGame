#######
# Compiled from functions/next/showing/phrase.mcscript
# to .//The Building Game/data/tbg/functions/next/showing/phrase.mcfunction
#
# Generated by Minecraft Script for 1.13
######
scoreboard players operation #var tbg = @s id
execute as @e[type=bat,tag=first] if score #var tbg = @s id run tag @s add output.first
scoreboard players add #var tbg 1
execute if score #var tbg > #count id run scoreboard players set #var tbg 1

execute as @e[type=bat,tag=!old,tag=new] if score #var tbg = @s id run tag @s add output.last
tellraw @s ["",{"translate":"Round complete","bold":true},"\n",{"translate":"Your phrase \u00ab"},{"selector":"@e[tag=output.first]","color":"gray"},{"translate":"\u00bb evolved into \u00ab"},{"selector":"@e[tag=output.last]","color":"gold"},{"translate":"\u00bb."}]
tag @e remove output.first
tag @e remove output.last