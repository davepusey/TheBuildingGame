execute if entity @s[tag=!casSelected] run tellraw @s {"translate":"No armor stand selected.","color":"red"}
execute if entity @s[tag=casSelected] run tellraw @s {"translate":"Armor stand deselected.","color":"green"}
tag @s remove casSelected
