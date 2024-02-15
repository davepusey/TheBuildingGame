scoreboard players add @s zcas_click 100
scoreboard players set @s rotation_x -361
scoreboard players set @s rotation_y -361
scoreboard players set @s rotation_z -361
scoreboard players enable @s rotation_x
scoreboard players enable @s rotation_y
scoreboard players enable @s rotation_z
tellraw @s[scores={zcas_click=129..}] ["",{"translate":"Rotate around X axis:","color":"dark_green"},"\n",{"translate":"\/trigger rotation_x set [Rotation in degrees]","color":"green"}]
tellraw @s ["",{"translate":"Rotate around Y axis:","color":"dark_aqua"},"\n",{"translate":"\/trigger rotation_y set [Rotation in degrees]","color":"aqua"}]
tellraw @s[scores={zcas_click=129..}] ["",{"translate":"Rotate around Z axis:","color":"dark_blue"},"\n",{"translate":"\/trigger rotation_z set [Rotation in degrees]","color":"blue"}]
