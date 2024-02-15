scoreboard players operation rototo cas_rot = @s cas_movtime
scoreboard players operation rototo cas_rot %= 2 cas_pos
execute if score rototo cas_rot matches 0 at @s run tp @s ~ ~ ~ ~ 45
execute if score rototo cas_rot matches 1 at @s run tp @s ~ ~ ~ ~ -45