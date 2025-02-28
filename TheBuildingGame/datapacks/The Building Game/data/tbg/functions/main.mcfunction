#######
# Compiled from data/tbg/functions/main.mcscript
# to .//The Building Game/data/tbg/functions/main.mcfunction
#
# Generated by Minecraft Script for 1.13
######
#rejoined player init
execute as @a[scores={joined=1..}] run function tbg:joined
#new player init
execute as @a unless score @s p_id matches 1.. run function tbg:player_init
#lobby
execute if score #stage tbg matches -2 run function tbg:main/lobby

#stages
execute if score #stage tbg matches 0.. if score #stage tbg < #count id run function tbg:main/stages

#waiting for chunk loading
execute if score #stage tbg matches -1 run function tbg:main/waiting

#showing
execute if score #stage tbg >= #count id run function tbg:main/showing

#other
scoreboard players reset @a[scores={drop.lingering=1..}] drop.lingering
item replace entity @a inventory.26 with barrier
item replace entity @a inventory.25 with structure_void
item replace entity @a inventory.24 with debug_stick
#armor stand datapacks
execute if score as_customization options matches 1 run function tbg:main/armor_stand

#entity
execute as @e[type=item,nbt={Age:1200s}] run data merge entity @s {Age:-32768s}
execute as @e[type=item,nbt={Age:40s}] run data merge entity @s {Motion:[]}
execute as @e[type=!arrow,type=!dragon_fireball,type=!egg,type=!ender_pearl,type=!experience_bottle,type=!falling_block,type=!item_frame,type=!painting,type=!potion,type=!snowball,type=!trident,type=!tnt] run function tbg:main/entity
execute as @e[type=tnt,nbt={Fuse:1s}] at @s run function tbg:main/tnt
execute as @a at @s run teleport @s[y=0,dy=-10] ~ 1 ~