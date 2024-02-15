execute as @a[scores={zcas_click=1..54}] at @s run function custom_stand:branch
execute as @a[scores={zcas_click=100..119}] at @s run function custom_stand:branch
execute as @a[scores={zcas_click=128..}] at @s run function custom_stand:accurate/branch
execute as @e[type=armor_stand,tag=casTick] at @s run function custom_stand:special/branch

scoreboard players enable @a zcas_click
