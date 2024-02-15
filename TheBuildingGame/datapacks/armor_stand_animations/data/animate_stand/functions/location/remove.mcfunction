execute as @e[type=armor_stand,distance=..50] if score @s cas_uuidleast_q = @p[tag=casSelected] cas_uuidleast_q if score @s cas_uuidmost_q = @p[tag=casSelected] cas_uuidmost_q run tag @s add casTemp
execute if score @s cas_movpose matches 1 store success score check cas_rot run tag @e[type=armor_stand,tag=casTemp,limit=1] remove Move1
execute if score @s cas_movpose matches 2 store success score check cas_rot run tag @e[type=armor_stand,tag=casTemp,limit=1] remove Move2
execute if score @s cas_movpose matches 3 store success score check cas_rot run tag @e[type=armor_stand,tag=casTemp,limit=1] remove Move3
execute if score @s cas_movpose matches 4 store success score check cas_rot run tag @e[type=armor_stand,tag=casTemp,limit=1] remove Move4
execute if score @s cas_movpose matches 5 store success score check cas_rot run tag @e[type=armor_stand,tag=casTemp,limit=1] remove Move5
execute if score @s cas_movpose matches 1.. if score check cas_rot matches 1 run tellraw @s ["",{"translate":"Removed frame ","color":"green"},{"score":{"name":"@s","objective":"cas_movpose"},"color":"green"},{"translate":" from movement.","color":"green"}]
execute if score @s cas_movpose matches 1.. if score check cas_rot matches 0 run tellraw @s ["",{"translate":"Frame ","color":"red"},{"score":{"name":"@s","objective":"cas_movpose"},"color":"red"},{"translate":" is already disabled.","color":"red"}]
execute unless entity @e[type=armor_stand,tag=casTemp] run tellraw @s {"translate":"Selected armor stand not in range or does not exist anymore.","color":"red"}
execute if entity @e[type=armor_stand,tag=casTemp] unless score @s cas_movpose matches 1.. run tellraw @s {"translate":"Select a frame to modify first.","color":"red"}
tag @e[type=armor_stand,tag=casTemp] remove casTemp
