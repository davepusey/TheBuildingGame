#######
# Compiled from functions/main/lobby/viewer.mcscript
# to .//The Building Game/data/tbg/functions/main/lobby/viewer.mcfunction
#
# Generated by Minecraft Script for 1.13
######
execute if score #save-z tbg matches 16.. if block 1 41 -22 stone_button[powered=true] run function tbg:main/lobby/viewer/loading
execute if score #save-z tbg matches 16.. if block -2 41 -22 stone_button[powered=true] run function tbg:main/lobby/viewer/loading
execute if score #save-z tbg matches 16.. run title @a[x=-16,y=32,z=-48,dx=31,dy=32,dz=31] actionbar {"selector":"@e[tag=renamed,x=15,y=32,z=-17,dx=0,dy=0,dz=0]","color":"yellow"}
execute unless score #save-z tbg matches 16.. run title @a[x=-16,y=32,z=-48,dx=31,dy=32,dz=31] actionbar {"translate":"There is no saved builds.","color":"dark_gray"}
setblock 1 41 -22 stone_button[face=floor]
setblock -2 41 -22 stone_button[face=floor]
