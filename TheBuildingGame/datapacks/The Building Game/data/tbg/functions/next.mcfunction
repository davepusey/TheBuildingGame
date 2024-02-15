#######
# Compiled from data/tbg/functions/next.mcscript
# to .//The Building Game/data/tbg/functions/next.mcfunction
#
# Generated by Minecraft Script for 1.13
######
scoreboard players add #stage tbg 1
scoreboard players operation @a[team=players] stage = #stage tbg
execute as @e[tag=team] run function tbg:next/team_stage_sync
clear @a[team=players]
execute if score #stage tbg matches 0 as @a[team=players] run function tbg:next/teleport
execute if score #stage tbg matches 0 as @a[team=players] at @s run clone -16 32 -16 -11 46 -11 ~-3 ~-11 ~-1
execute if score #stage tbg matches 0 run gamemode spectator @a[team=!players]
execute if score #stage tbg matches 0 as @a[team=!players] run teleport @r[team=players]
execute if score #stage tbg matches 0 run scoreboard objectives setdisplay below_name
execute if score #stage tbg matches 0 run scoreboard players set @a[team=players] in_game 1
execute if score #stage tbg matches 0 run scoreboard players reset @a accept
execute if score #stage tbg matches 0 run scoreboard players reset @a help
execute if score #stage tbg matches 0 run scoreboard players reset @a my_id
execute if score #stage tbg matches 0 run scoreboard players reset @a invite
execute if score #stage tbg matches 0 run scoreboard players reset @a kick
execute if score #stage tbg matches 0 run scoreboard players reset @a leave
execute if score #stage tbg matches 0 run scoreboard players reset @a time
execute if score #stage tbg matches 0 run scoreboard players reset @a ztbg_click
execute if score #stage tbg matches 0 run scoreboard players set #odd tbg 1

execute if score #stage tbg <= #count id if score #stage tbg matches 1.. as @a[team=players] run function tbg:next/teleport
execute if score #stage tbg <= #count id if score #odd tbg matches 1 as @e[tag=field] at @s run summon area_effect_cloud ~-18 ~-10 ~-4 {Duration:2147483647,Tags:["save"]}
execute if score #stage tbg <= #count id if score #odd tbg matches 1 as @e[tag=field] at @s run setblock ~ ~1 ~ air
execute if score #stage tbg <= #count id if score #odd tbg matches 1 as @e[tag=field] at @s run setblock ~ ~ ~ air
execute if score #stage tbg <= #count id if score #odd tbg matches 1 as @e[tag=field] at @s run kill @s
execute if score #stage tbg <= #count id if score #odd tbg matches 1 run kill @e[tag=floor]
execute if score #stage tbg <= #count id if score #odd tbg matches 1 at @a[team=players] positioned ~-16 ~-9 ~-4 as @e[type=item,dx=30,dy=32,dz=30] run data merge entity @s {PickupDelay:32767s}
execute if score #stage tbg <= #count id if score #odd tbg matches 1 at @a[team=players] positioned ~-16 ~-9 ~-4 as @e[type=armor_stand,dx=30,dy=32,dz=30] run data merge entity @s {DisabledSlots:2039583}
execute if score #stage tbg <= #count id if score #odd tbg matches 1 at @a[team=players] positioned ~-16 ~-9 ~-4 run effect give @e[type=!player,dx=30,dy=32,dz=30] resistance 1000000 127 true
execute if score #stage tbg <= #count id if score #odd tbg matches 0 at @a[team=players] positioned ~-16 ~-9 ~-4 run clone -16 0 -16 15 31 15 ~ ~ ~
execute if score #stage tbg <= #count id if score #odd tbg matches 0 at @a[team=players] positioned ~-16 ~-9 ~-4 run kill @e[type=!player,dx=30,dy=32,dz=30]
execute if score #stage tbg <= #count id if score #odd tbg matches 0 as @e[type=bat,tag=!old,tag=new] at @s run fill ~ ~-1 ~ ~-1 ~-1 ~ air replace anvil
execute if score #stage tbg <= #count id if score #odd tbg matches 0 as @e[type=bat,tag=!old,tag=new] at @s if score #stage tbg matches 1 run teleport ~-15.5 ~-12 ~15
execute if score #stage tbg <= #count id if score #odd tbg matches 0 as @e[type=bat,tag=!old,tag=new] at @s unless score #stage tbg matches 1 run teleport ~-15.5 ~-10 ~30
execute if score #stage tbg <= #count id unless score #stage tbg = #count id run scoreboard players set @a[team=players] ready 0
execute if score #stage tbg <= #count id unless score #stage tbg = #count id if score #odd tbg matches 1 run item replace entity @a[team=players] hotbar.0 with name_tag
execute if score #stage tbg <= #count id unless score #stage tbg = #count id if score #odd tbg matches 1 as @a[team=players] unless score @s team matches 1.. run function tbg:next/writing/summon_bat
execute if score #stage tbg <= #count id unless score #stage tbg = #count id if score #odd tbg matches 1 as @e[tag=team] run function tbg:next/writing/summon_team_bat
execute if score #stage tbg <= #count id unless score #stage tbg = #count id if score #odd tbg matches 1 run tag @e[type=bat,tag=!old,tag=new] add old
execute if score #stage tbg <= #count id unless score #stage tbg = #count id if score #odd tbg matches 1 run tag @e[type=bat,tag=rename,tag=!old] add new
execute if score #stage tbg <= #count id unless score #stage tbg = #count id if score #odd tbg matches 1 run title @a times 10 40 10
execute if score #stage tbg <= #count id unless score #stage tbg = #count id if score #odd tbg matches 1 run scoreboard players operation #var2 tbg = #stage tbg
execute if score #stage tbg <= #count id unless score #stage tbg = #count id if score #odd tbg matches 1 run scoreboard players add #var2 tbg 1
execute if score #stage tbg <= #count id unless score #stage tbg = #count id if score #odd tbg matches 1 unless score #stage tbg matches 0 run title @a title {"translate":"Writing"}
execute if score #stage tbg <= #count id unless score #stage tbg = #count id if score #odd tbg matches 1 unless score #stage tbg matches 0 run scoreboard objectives modify ready displayname {"translate":"Writing"}
execute if score #stage tbg <= #count id unless score #stage tbg = #count id if score #odd tbg matches 1 unless score #stage tbg matches 0 run title @a[team=players] subtitle {"translate":"Figure out what you see"}
execute if score #stage tbg <= #count id unless score #stage tbg = #count id if score #odd tbg matches 1 unless score #stage tbg matches 0 run tellraw @a[team=players] ["",{"translate":"Figure out what you see","bold":true},{"translate":" (stage ","color":"gray"},{"score":{"objective":"tbg","name":"#var2"},"color":"gray"},{"translate":" of ","color":"gray"},{"score":{"objective":"id","name":"#count"},"color":"gray"},{"translate":")","color":"gray"},"\n",{"translate":"Look at this build and describe it by renaming the bat."}]
execute if score #stage tbg <= #count id unless score #stage tbg = #count id if score #odd tbg matches 1 if score #stage tbg matches 0 run title @a title {"translate":"Thinking of"}
execute if score #stage tbg <= #count id unless score #stage tbg = #count id if score #odd tbg matches 1 if score #stage tbg matches 0 run scoreboard objectives modify ready displayname {"translate":"Thinking of"}
execute if score #stage tbg <= #count id unless score #stage tbg = #count id if score #odd tbg matches 1 if score #stage tbg matches 0 run title @a[team=players] subtitle {"translate":"Come up with a phrase"}
execute if score #stage tbg <= #count id unless score #stage tbg = #count id if score #odd tbg matches 1 if score #stage tbg matches 0 run tellraw @a[team=players] ["",{"translate":"Come up with a phrase","bold":true},{"translate":" (stage ","color":"gray"},{"score":{"objective":"tbg","name":"#var2"},"color":"gray"},{"translate":" of ","color":"gray"},{"score":{"objective":"id","name":"#count"},"color":"gray"},{"translate":")","color":"gray"},"\n",{"translate":"Rename the name tag in the anvil into a word or phrase and use it on the bat."}]
execute if score #stage tbg <= #count id unless score #stage tbg = #count id if score #odd tbg matches 1 run bossbar set timer visible false
execute if score #stage tbg <= #count id unless score #stage tbg = #count id if score #odd tbg matches 0 as @a[team=players] run function tbg:next/building/message
execute if score #stage tbg <= #count id unless score #stage tbg = #count id if score #odd tbg matches 0 as @a[team=players] unless score @s team matches 1.. run function tbg:next/building/summon_field
execute if score #stage tbg <= #count id unless score #stage tbg = #count id if score #odd tbg matches 0 as @e[tag=team] run function tbg:next/building/summon_team_field
execute if score #stage tbg <= #count id unless score #stage tbg = #count id if score #odd tbg matches 0 if score time options matches 1.. run bossbar set timer visible true
execute if score #stage tbg <= #count id unless score #stage tbg = #count id if score #odd tbg matches 0 if score time options matches 1.. run bossbar set timer style progress
execute if score #stage tbg <= #count id unless score #stage tbg = #count id if score #odd tbg matches 0 if score time options matches 1.. run scoreboard players operation #time tbg = time options
execute if score #stage tbg <= #count id unless score #stage tbg = #count id if score #odd tbg matches 0 if score time options matches 1.. store result bossbar timer max run scoreboard players get time options
execute if score #stage tbg <= #count id unless score #stage tbg = #count id if score #odd tbg matches 0 if score time options matches 1.. store result bossbar timer value run scoreboard players get time options
execute if score #stage tbg <= #count id unless score #stage tbg = #count id if score #odd tbg matches 0 if score time options matches 1.. run function tbg:main/building/timer
execute if score #stage tbg <= #count id unless score #stage tbg = #count id if score #odd tbg matches 0 run title @a times 10 40 10
execute if score #stage tbg <= #count id unless score #stage tbg = #count id if score #odd tbg matches 0 run title @a title {"translate":"Building"}
execute if score #stage tbg <= #count id unless score #stage tbg = #count id if score #odd tbg matches 0 run title @a subtitle {"translate":"Build the phrase"}
execute if score #stage tbg <= #count id unless score #stage tbg = #count id if score #odd tbg matches 0 run scoreboard objectives modify ready displayname {"translate":"Building"}

execute if score #stage tbg = #count id if score #odd tbg matches 0 as @a[team=players] run function tbg:next/showing/phrase
execute if score #stage tbg = #count id if score #odd tbg matches 1 as @a[team=players] run function tbg:next/showing/building
execute if score #stage tbg = #count id run scoreboard players reset * ready
execute if score #stage tbg = #count id run title @a times 10 40 10
execute if score #stage tbg = #count id run title @a title {"translate":"Round complete"}
execute if score #stage tbg = #count id run title @a subtitle {"translate":"Build recap begins"}
execute if score #stage tbg = #count id run bossbar set timer visible false

execute if score #stage tbg >= #count id run scoreboard players set @a drop.sugar 0
execute if score #stage tbg >= #count id run scoreboard players set @a drop.redstone 0
execute if score #stage tbg >= #count id run scoreboard players set @a drop.glowstone 0
execute if score #stage tbg >= #count id run scoreboard players set #success tbg 0
execute if score #stage tbg >= #count id if score #zpre tbg matches 0 run scoreboard players set #success tbg 1
execute if score #stage tbg >= #count id if score #odd tbg matches 1 run scoreboard players set #success tbg 1
execute if score #stage tbg >= #count id if score #success tbg matches 1 as @a[team=players] run function tbg:next/teleport
execute if score #stage tbg >= #count id if score #success tbg matches 1 at @p[team=players] positioned ~-15.5 ~-10 ~-4 as @e[distance=..0.1,tag=save] run function tbg:next/showing/saving
execute if score #stage tbg >= #count id run scoreboard players operation #var tbg = #count id
execute if score #stage tbg >= #count id run scoreboard players operation #var tbg *= #count id
execute if score #stage tbg >= #count id run scoreboard players operation #var tbg += #count id
execute if score #stage tbg >= #count id run scoreboard players add #var tbg 1
execute if score #stage tbg >= #count id if score #var tbg = #stage tbg run function tbg:next/game_over
