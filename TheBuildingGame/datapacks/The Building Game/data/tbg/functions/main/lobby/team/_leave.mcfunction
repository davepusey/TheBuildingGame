#######
# Compiled from main/lobby/team/leave.mcscript
# to .//The Building Game/data/tbg/functions/main/lobby/team/_leave.mcfunction
#
# Generated by Minecraft Script for 1.13
######
title @s actionbar ""
scoreboard players operation #var team = @s team
scoreboard players set #var2 team 0
execute as @a if score @s team = #var team run scoreboard players add #var2 team 1
execute if score #var2 team matches 1 as @a if score @s team.invite = #var team run tellraw @s {"translate":"Your invitation has been canceled"}
execute if score #var2 team matches 1 as @a if score @s team.invite = #var team run scoreboard players reset @s team.invite

scoreboard players reset @s team