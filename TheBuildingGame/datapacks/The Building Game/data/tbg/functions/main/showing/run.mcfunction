#######
# Compiled from functions/main/showing/run.mcscript
# to .//The Building Game/data/tbg/functions/main/showing/run.mcfunction
#
# Generated by Minecraft Script for 1.13
######
kill @e[type=potion,nbt={Potion:{tag:{display:{Name:"{\"translate\":\"Next\\u00a77 (%s)\",\"italic\":false,\"with\":[{\"keybind\":\"key.use\"}]}"}}}}]
scoreboard players operation #x tbg = #stage tbg
scoreboard players operation #z tbg = #x tbg
scoreboard players operation #x tbg /= #count id
scoreboard players operation #z tbg %= #count id
scoreboard players operation #odd tbg = #z tbg
scoreboard players operation #odd tbg %= #2 tbg
scoreboard players operation #s-id-w tbg = #x tbg
scoreboard players operation #s-id-w tbg -= #z tbg
execute if score #s-id-w tbg matches ..0 run scoreboard players operation #s-id-w tbg += #count id

execute if score #odd tbg matches 0 as @a if score #s-id-w tbg = @s id run tag @s add showing.player
execute if score #odd tbg matches 0 as @e[type=bat,tag=rename] if score #s-id-w tbg = @s id if score #z tbg = @s stage if score @p[tag=showing.player] team matches 1.. if score #z tbg matches 0 run tellraw @a ["\n",{"translate":"The team {"},{"selector":"@a[tag=showing.player]"},{"translate":"} wrote down \u00ab"},{"selector":"@s","color":"gold"},{"translate":"\u00bb."}]
execute if score #odd tbg matches 0 as @e[type=bat,tag=rename] if score #s-id-w tbg = @s id if score #z tbg = @s stage if score @p[tag=showing.player] team matches 1.. if score #z tbg matches 1.. run tellraw @a ["",{"translate":"The team {"},{"selector":"@a[tag=showing.player]"},{"translate":"} guessed \u00ab"},{"selector":"@s","color":"gold"},{"translate":"\u00bb."}]
execute if score #odd tbg matches 0 as @e[type=bat,tag=rename] if score #s-id-w tbg = @s id if score #z tbg = @s stage unless score @p[tag=showing.player] team matches 1.. if score #z tbg matches 0 run tellraw @a ["\n",{"selector":"@a[tag=showing.player]"},{"translate":" wrote down \u00ab"},{"selector":"@s","color":"gold"},{"translate":"\u00bb."}]
execute if score #odd tbg matches 0 as @e[type=bat,tag=rename] if score #s-id-w tbg = @s id if score #z tbg = @s stage unless score @p[tag=showing.player] team matches 1.. if score #z tbg matches 1.. run tellraw @a ["",{"selector":"@a[tag=showing.player]"},{"translate":" guessed \u00ab"},{"selector":"@s","color":"gold"},{"translate":"\u00bb."}]
execute if score #odd tbg matches 0 run tag @a remove showing.player

execute if score #odd tbg matches 1 run scoreboard players operation #s-id-b tbg = #s-id-w tbg
execute if score #odd tbg matches 1 run scoreboard players add #s-id-b tbg 1
execute if score #odd tbg matches 1 if score #s-id-b tbg > #count id run scoreboard players operation #s-id-b tbg -= #count id
execute if score #odd tbg matches 1 run scoreboard players operation #s-stage-b tbg = #z tbg
execute if score #odd tbg matches 1 run scoreboard players remove #s-stage-b tbg 1
execute if score #odd tbg matches 1 as @a if score #s-id-w tbg = @s id run tag @s add showing.player
execute if score #odd tbg matches 1 as @e[type=bat,tag=rename] if score #s-id-b tbg = @s id if score #s-stage-b tbg = @s stage if score @p[tag=showing.player] team matches 1.. run tellraw @a ["",{"translate":"The team {"},{"selector":"@a[tag=showing.player]"},{"translate":"} built \u00ab"},{"selector":"@s","color":"gold"},{"translate":"\u00bb."}]
execute if score #odd tbg matches 1 as @e[type=bat,tag=rename] if score #s-id-b tbg = @s id if score #s-stage-b tbg = @s stage unless score @p[tag=showing.player] team matches 1.. run tellraw @a ["",{"selector":"@a[tag=showing.player]"},{"translate":" built \u00ab"},{"selector":"@s","color":"gold"},{"translate":"\u00bb."}]
execute if score #odd tbg matches 1 run tag @a remove showing.player

scoreboard players operation #zpre tbg = #z tbg
scoreboard players add #z tbg 1
scoreboard players operation #z tbg /= #2 tbg
#VOTE SAVING
execute if score #zpre tbg matches 2.. if score #odd tbg matches 0 run summon area_effect_cloud 0 1 0 {Duration:2,Tags:["vote-saving"]}
execute if score #zpre tbg matches 2.. if score #odd tbg matches 0 run scoreboard players remove #save-z tbg 16
execute if score #zpre tbg matches 2.. if score #odd tbg matches 0 run summon arrow 0 1 0 {xTile:992,yTile:64,zTile:0,Tags:["chunk_load"]}
execute if score #zpre tbg matches 2.. if score #odd tbg matches 0 as @e[tag=chunk_load,nbt={zTile:0}] store result entity @s zTile int 1 run scoreboard players get #save-z tbg
execute if score #zpre tbg matches 2.. unless score #odd tbg matches 0 run function tbg:next
execute unless score #zpre tbg matches 2.. run function tbg:next