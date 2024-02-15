execute as @a[scores={zcas_click=1..127}] at @s run function animate_stand:branch
execute as @e[type=armor_stand,tag=Animating] run function animate_stand:animate/pose/main
execute as @e[type=armor_stand,tag=Moving] run function animate_stand:animate/location/main
