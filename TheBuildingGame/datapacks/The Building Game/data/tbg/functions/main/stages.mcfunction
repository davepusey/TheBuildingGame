#######
# Compiled from data/tbg/functions/main.mcscript
# to .//The Building Game/data/tbg/functions/main/stages.mcfunction
#
# Generated by Minecraft Script for 1.13
######
# this file is generated based on a function specified in.//The Building Game/data/tbg/functions/main.mcscript
scoreboard players operation #odd tbg = #stage tbg
scoreboard players operation #odd tbg %= #2 tbg
execute if score #odd tbg matches 0 run function tbg:main/writing

execute if score #odd tbg matches 1 run function tbg:main/building
