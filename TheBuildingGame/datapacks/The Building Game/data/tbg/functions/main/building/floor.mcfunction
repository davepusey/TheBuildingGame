#######
# Compiled from functions/main/building/floor.mcscript
# to .//The Building Game/data/tbg/functions/main/building/floor.mcfunction
#
# Generated by Minecraft Script for 1.13
######
execute if block ~ ~ ~ water run setblock ~ ~ ~ water

execute if block ~ ~ ~ lava run setblock ~ ~ ~ lava

execute if block ~ ~ ~ redstone_wire run setblock ~ ~ ~ redstone_wire

execute if block ~ ~ ~ brewing_stand run data merge block ~ ~ ~ {Items:[]}

execute unless block ~ ~ ~ #tbg:powered[powered=true] unless block ~ ~ ~ #tbg:pistons[extended=true] unless block ~ ~ ~ #tbg:black_list unless block ~ ~ ~ jukebox[has_record=true] unless block ~ ~ ~ redstone_lamp[lit=true] unless block ~ ~ ~ #tbg:buttons_and_lever[face=ceiling] unless block ~ ~ ~ #tbg:buttons_and_lever[face=wall] unless blocks ~ ~ ~ ~ ~ ~ ~ 1 ~ masked run function tbg:main/building/floor/replace
execute unless block ~ ~ ~ #tbg:powered[powered=true] unless block ~ ~ ~ #tbg:pistons[extended=true] unless block ~ ~ ~ #tbg:black_list unless block ~ ~ ~ jukebox[has_record=true] unless block ~ ~ ~ redstone_lamp[lit=true] unless block ~ ~ ~ #tbg:buttons_and_lever[face=ceiling] unless block ~ ~ ~ #tbg:buttons_and_lever[face=wall] run clone ~ ~ ~ ~ ~ ~ ~ 1 ~

