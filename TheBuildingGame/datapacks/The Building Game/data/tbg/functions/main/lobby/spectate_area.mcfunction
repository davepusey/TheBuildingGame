#######
# Compiled from tbg/functions/main/lobby.mcscript
# to .//The Building Game/data/tbg/functions/main/lobby/spectate_area.mcfunction
#
# Generated by Minecraft Script for 1.13
######
# this file is generated based on a function specified in.//The Building Game/data/tbg/functions/main/lobby.mcscript
execute if score @s team matches 1.. run title @s actionbar {"translate":"To join the spectators, leave your team: %s","color":"red","with":[{"text":"/trigger leave","color":"yellow"}]}
execute unless score @s team matches 1.. run function tbg:main/lobby/spectate