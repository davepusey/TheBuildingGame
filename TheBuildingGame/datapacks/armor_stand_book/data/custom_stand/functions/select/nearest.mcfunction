execute as @e[type=armor_stand,limit=1,sort=nearest,distance=..7] run function custom_stand:select/uuid
execute unless entity @e[type=armor_stand,tag=casTemp] run tellraw @s {"translate":"No armor stands nearby.","color":"red"}
execute unless entity @e[type=armor_stand,tag=casTemp] run tag @s remove casSelected
tag @e[type=armor_stand,tag=casTemp] remove casTemp
