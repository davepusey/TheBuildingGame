execute if entity @s[tag=!Move2] run tellraw @p[tag=casTemp] {"translate":"Selected frame: %s\nState: Disabled","color":"green","with":[{"text":"2"}]}
execute if entity @s[tag=Move2,scores={cas_postime2=20}] run tellraw @p[tag=casTemp] {"translate":"Selected frame: %s\nState: Enabled\nMovement time: %s s","color":"green","with":[{"text":"2"},{"text":"1"}]}
execute if entity @s[tag=Move2,scores={cas_postime2=60}] run tellraw @p[tag=casTemp] {"translate":"Selected frame: %s\nState: Enabled\nMovement time: %s s","color":"green","with":[{"text":"2"},{"text":"3"}]}
execute if entity @s[tag=Move2,scores={cas_postime2=100}] run tellraw @p[tag=casTemp] {"translate":"Selected frame: %s\nState: Enabled\nMovement time: %s s","color":"green","with":[{"text":"2"},{"text":"5"}]}
execute if entity @s[tag=Move2,scores={cas_postime2=200}] run tellraw @p[tag=casTemp] {"translate":"Selected frame: %s\nState: Enabled\nMovement time: %s s","color":"green","with":[{"text":"2"},{"text":"10"}]}
execute if entity @s[tag=Move2,scores={cas_postime2=400}] run tellraw @p[tag=casTemp] {"translate":"Selected frame: %s\nState: Enabled\nMovement time: %s s","color":"green","with":[{"text":"2"},{"text":"20"}]}
execute if entity @s[tag=Move2,scores={cas_postime2=600}] run tellraw @p[tag=casTemp] {"translate":"Selected frame: %s\nState: Enabled\nMovement time: %s s","color":"green","with":[{"text":"2"},{"text":"30"}]}
