execute if score @s zcas_click matches 68 run scoreboard players set @e[type=armor_stand,tag=casTemp,limit=1] cas_anitime2 10
execute if score @s zcas_click matches 69 run scoreboard players set @e[type=armor_stand,tag=casTemp,limit=1] cas_anitime2 20
execute if score @s zcas_click matches 70 run scoreboard players set @e[type=armor_stand,tag=casTemp,limit=1] cas_anitime2 50
execute if score @s zcas_click matches 71 run scoreboard players set @e[type=armor_stand,tag=casTemp,limit=1] cas_anitime2 100
execute if score @s zcas_click matches 72 run scoreboard players set @e[type=armor_stand,tag=casTemp,limit=1] cas_anitime2 200
scoreboard players set aniopose cas_pos 0
execute if entity @e[type=armor_stand,tag=casTemp,limit=1,tag=Animate1] run scoreboard players set aniopose cas_pos 1
execute if entity @e[type=armor_stand,tag=casTemp,limit=1,tag=!Animate1,tag=Animate5] run scoreboard players set aniopose cas_pos 5
execute if entity @e[type=armor_stand,tag=casTemp,limit=1,tag=!Animate1,tag=!Animate5,tag=Animate4] run scoreboard players set aniopose cas_pos 4
execute if entity @e[type=armor_stand,tag=casTemp,limit=1,tag=!Animate1,tag=!Animate5,tag=!Animate4,tag=Animate3] run scoreboard players set aniopose cas_pos 3
execute if score aniopose cas_pos matches 0 if score @s zcas_click matches 68 run tellraw @s {"translate":"Set animation time for frame %s to %s s.","color":"green","with":[{"text":"2"},{"text":"0.5"}]}
execute if score aniopose cas_pos matches 0 if score @s zcas_click matches 69 run tellraw @s {"translate":"Set animation time for frame %s to %s s.","color":"green","with":[{"text":"2"},{"text":"1"}]}
execute if score aniopose cas_pos matches 0 if score @s zcas_click matches 70 run tellraw @s {"translate":"Set animation time for frame %s to %s s.","color":"green","with":[{"text":"2"},{"text":"2.5"}]}
execute if score aniopose cas_pos matches 0 if score @s zcas_click matches 71 run tellraw @s {"translate":"Set animation time for frame %s to %s s.","color":"green","with":[{"text":"2"},{"text":"5"}]}
execute if score aniopose cas_pos matches 0 if score @s zcas_click matches 72 run tellraw @s {"translate":"Set animation time for frame %s to %s s.","color":"green","with":[{"text":"2"},{"text":"10"}]}
execute if score aniopose cas_pos matches 1.. if score @s zcas_click matches 68 run tellraw @s ["",{"translate":"Set animation time from frame ","color":"green"},{"score":{"name":"aniopose","objective":"cas_pos"},"color":"green"},{"translate":" to frame %s to %s s.","color":"green","with":[{"text":"2"},{"text":"0.5"}]}]
execute if score aniopose cas_pos matches 1.. if score @s zcas_click matches 69 run tellraw @s ["",{"translate":"Set animation time from frame ","color":"green"},{"score":{"name":"aniopose","objective":"cas_pos"},"color":"green"},{"translate":" to frame %s to %s s.","color":"green","with":[{"text":"2"},{"text":"1"}]}]
execute if score aniopose cas_pos matches 1.. if score @s zcas_click matches 70 run tellraw @s ["",{"translate":"Set animation time from frame ","color":"green"},{"score":{"name":"aniopose","objective":"cas_pos"},"color":"green"},{"translate":" to frame %s to %s s.","color":"green","with":[{"text":"2"},{"text":"2.5"}]}]
execute if score aniopose cas_pos matches 1.. if score @s zcas_click matches 71 run tellraw @s ["",{"translate":"Set animation time from frame ","color":"green"},{"score":{"name":"aniopose","objective":"cas_pos"},"color":"green"},{"translate":" to frame %s to %s s.","color":"green","with":[{"text":"2"},{"text":"5"}]}]
execute if score aniopose cas_pos matches 1.. if score @s zcas_click matches 72 run tellraw @s ["",{"translate":"Set animation time from frame ","color":"green"},{"score":{"name":"aniopose","objective":"cas_pos"},"color":"green"},{"translate":" to frame %s to %s s.","color":"green","with":[{"text":"2"},{"text":"10"}]}]
