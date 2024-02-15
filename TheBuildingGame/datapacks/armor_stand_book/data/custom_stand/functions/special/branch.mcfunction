execute if score @s[tag=!casGlowing] zcas_click matches 1 run data merge entity @s {Glowing:0b}
execute if score @s zcas_click matches 1.. run scoreboard players remove @s zcas_click 1
execute if score @s[tag=!casSpin,tag=!casDisco,tag=!casLook] zcas_click matches 0 run tag @s remove casTick
