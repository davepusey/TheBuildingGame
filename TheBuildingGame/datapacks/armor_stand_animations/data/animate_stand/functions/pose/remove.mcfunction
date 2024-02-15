execute as @e[type=armor_stand,distance=..50] if score @s cas_uuidleast_q = @p[tag=casSelected] cas_uuidleast_q if score @s cas_uuidmost_q = @p[tag=casSelected] cas_uuidmost_q run tag @s add casTemp
execute if score @s cas_anipose matches 1 store success score check cas_rot run tag @e[type=armor_stand,tag=casTemp,limit=1] remove Animate1
execute if score @s cas_anipose matches 2 store success score check cas_rot run tag @e[type=armor_stand,tag=casTemp,limit=1] remove Animate2
execute if score @s cas_anipose matches 3 store success score check cas_rot run tag @e[type=armor_stand,tag=casTemp,limit=1] remove Animate3
execute if score @s cas_anipose matches 4 store success score check cas_rot run tag @e[type=armor_stand,tag=casTemp,limit=1] remove Animate4
execute if score @s cas_anipose matches 5 store success score check cas_rot run tag @e[type=armor_stand,tag=casTemp,limit=1] remove Animate5
execute if score @s cas_anipose matches 1.. if score check cas_rot matches 1 run tellraw @s ["",{"translate":"Removed frame ","color":"green"},{"score":{"name":"@s","objective":"cas_anipose"},"color":"green"},{"translate":" from animation.","color":"green"}]
execute if score @s cas_anipose matches 1.. if score check cas_rot matches 0 run tellraw @s ["",{"translate":"Frame ","color":"red"},{"score":{"name":"@s","objective":"cas_anipose"},"color":"red"},{"translate":" is already disabled.","color":"red"}]
execute unless entity @e[type=armor_stand,tag=casTemp] run tellraw @s {"translate":"Selected armor stand not in range or does not exist anymore.","color":"red"}
execute if entity @e[type=armor_stand,tag=casTemp] unless score @s cas_anipose matches 1.. run tellraw @s {"translate":"Select a frame to modify first.","color":"red"}
tag @e[type=armor_stand,tag=casTemp] remove casTemp
