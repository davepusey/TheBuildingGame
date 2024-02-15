execute if score @s zcas_click matches 81 run scoreboard players set @e[type=armor_stand,tag=casTemp,limit=1] cas_postime1 20
execute if score @s zcas_click matches 82 run scoreboard players set @e[type=armor_stand,tag=casTemp,limit=1] cas_postime1 60
execute if score @s zcas_click matches 83 run scoreboard players set @e[type=armor_stand,tag=casTemp,limit=1] cas_postime1 100
execute if score @s zcas_click matches 84 run scoreboard players set @e[type=armor_stand,tag=casTemp,limit=1] cas_postime1 200
execute if score @s zcas_click matches 85 run scoreboard players set @e[type=armor_stand,tag=casTemp,limit=1] cas_postime1 400
execute if score @s zcas_click matches 86 run scoreboard players set @e[type=armor_stand,tag=casTemp,limit=1] cas_postime1 600
scoreboard players set aniopose cas_pos 0
execute if entity @e[type=armor_stand,tag=casTemp,limit=1,tag=Move5] run scoreboard players set aniopose cas_pos 5
execute if entity @e[type=armor_stand,tag=casTemp,limit=1,tag=!Move5,tag=Move4] run scoreboard players set aniopose cas_pos 4
execute if entity @e[type=armor_stand,tag=casTemp,limit=1,tag=!Move5,tag=!Move4,tag=Move3] run scoreboard players set aniopose cas_pos 3
execute if entity @e[type=armor_stand,tag=casTemp,limit=1,tag=!Move5,tag=!Move4,tag=!Move3,tag=Move2] run scoreboard players set aniopose cas_pos 2
execute if score aniopose cas_pos matches 0 if score @s zcas_click matches 81 run tellraw @s {"translate":"Set movement time for frame %s to %s s.","color":"green","with":[{"text":"1"},{"text":"1"}]}
execute if score aniopose cas_pos matches 0 if score @s zcas_click matches 82 run tellraw @s {"translate":"Set movement time for frame %s to %s s.","color":"green","with":[{"text":"1"},{"text":"3"}]}
execute if score aniopose cas_pos matches 0 if score @s zcas_click matches 83 run tellraw @s {"translate":"Set movement time for frame %s to %s s.","color":"green","with":[{"text":"1"},{"text":"5"}]}
execute if score aniopose cas_pos matches 0 if score @s zcas_click matches 84 run tellraw @s {"translate":"Set movement time for frame %s to %s s.","color":"green","with":[{"text":"1"},{"text":"10"}]}
execute if score aniopose cas_pos matches 0 if score @s zcas_click matches 85 run tellraw @s {"translate":"Set movement time for frame %s to %s s.","color":"green","with":[{"text":"1"},{"text":"20"}]}
execute if score aniopose cas_pos matches 0 if score @s zcas_click matches 86 run tellraw @s {"translate":"Set movement time for frame %s to %s s.","color":"green","with":[{"text":"1"},{"text":"30"}]}
execute if score aniopose cas_pos matches 1.. if score @s zcas_click matches 81 run tellraw @s ["",{"translate":"Set movement time from frame ","color":"green"},{"score":{"name":"aniopose","objective":"cas_pos"},"color":"green"},{"translate":" to frame %s to %s s.","color":"green","with":[{"text":"1"},{"text":"1"}]}]
execute if score aniopose cas_pos matches 1.. if score @s zcas_click matches 82 run tellraw @s ["",{"translate":"Set movement time from frame ","color":"green"},{"score":{"name":"aniopose","objective":"cas_pos"},"color":"green"},{"translate":" to frame %s to %s s.","color":"green","with":[{"text":"1"},{"text":"3"}]}]
execute if score aniopose cas_pos matches 1.. if score @s zcas_click matches 83 run tellraw @s ["",{"translate":"Set movement time from frame ","color":"green"},{"score":{"name":"aniopose","objective":"cas_pos"},"color":"green"},{"translate":" to frame %s to %s s.","color":"green","with":[{"text":"1"},{"text":"5"}]}]
execute if score aniopose cas_pos matches 1.. if score @s zcas_click matches 84 run tellraw @s ["",{"translate":"Set movement time from frame ","color":"green"},{"score":{"name":"aniopose","objective":"cas_pos"},"color":"green"},{"translate":" to frame %s to %s s.","color":"green","with":[{"text":"1"},{"text":"10"}]}]
execute if score aniopose cas_pos matches 1.. if score @s zcas_click matches 85 run tellraw @s ["",{"translate":"Set movement time from frame ","color":"green"},{"score":{"name":"aniopose","objective":"cas_pos"},"color":"green"},{"translate":" to frame %s to %s s.","color":"green","with":[{"text":"1"},{"text":"20"}]}]
execute if score aniopose cas_pos matches 1.. if score @s zcas_click matches 86 run tellraw @s ["",{"translate":"Set movement time from frame ","color":"green"},{"score":{"name":"aniopose","objective":"cas_pos"},"color":"green"},{"translate":" to frame %s to %s s.","color":"green","with":[{"text":"1"},{"text":"30"}]}]
