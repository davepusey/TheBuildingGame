tag @s add casTemp
playsound ui.button.click master @s
execute if score @s zcas_click matches 1 run function animate_stand:select/deselect
execute if score @s zcas_click matches 2 run function animate_stand:select/nearest
execute if score @s zcas_click matches 3 run function animate_stand:select/facing
execute if score @s[tag=casSelected] zcas_click matches 60..64 run function animate_stand:pose/select
execute if score @s[tag=casSelected] zcas_click matches 65 run function animate_stand:pose/check
execute if score @s[tag=casSelected] zcas_click matches 66 run function animate_stand:pose/set
execute if score @s[tag=casSelected] zcas_click matches 67 run function animate_stand:pose/remove
execute if score @s[tag=casSelected] zcas_click matches 68..72 run function animate_stand:pose/time
execute if score @s[tag=casSelected] zcas_click matches 73..77 run function animate_stand:location/select
execute if score @s[tag=casSelected] zcas_click matches 78 run function animate_stand:location/check
execute if score @s[tag=casSelected] zcas_click matches 79 run function animate_stand:location/set
execute if score @s[tag=casSelected] zcas_click matches 80 run function animate_stand:location/remove
execute if score @s[tag=casSelected] zcas_click matches 81..86 run function animate_stand:location/time
execute if score @s[tag=casSelected] zcas_click matches 87..92 run function animate_stand:animate/set
execute if score @s[tag=!casSelected] zcas_click matches 60.. run tellraw @s {"translate":"No armor stand selected.","color":"red"}
tag @s remove casTemp
scoreboard players set @s[scores={zcas_click=1..3}] zcas_click 0
scoreboard players set @s[scores={zcas_click=60..127}] zcas_click 0
scoreboard players enable @s zcas_click
