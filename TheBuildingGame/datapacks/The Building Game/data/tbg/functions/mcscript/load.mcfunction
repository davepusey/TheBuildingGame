#######
# Compiled from data/tbg/functions/load.mcscript
# to .//The Building Game/data/tbg/functions/mcscript/load.mcfunction
#
# Generated by Minecraft Script for 1.13
######
kill @e[tag=field]
kill @e[tag=floor]
################################################################################
scoreboard objectives remove accept
scoreboard objectives remove help
scoreboard objectives remove my_id
scoreboard objectives remove invite
scoreboard objectives remove kick
scoreboard objectives remove leave
scoreboard objectives remove time
scoreboard objectives add accept trigger {"text":"accept","color":"yellow"}
scoreboard objectives add help trigger {"text":"help","color":"yellow"}
scoreboard objectives add my_id trigger {"text":"my_id","color":"yellow"}
scoreboard objectives add invite trigger {"text":"invite","color":"yellow"}
scoreboard objectives add kick trigger {"text":"kick","color":"yellow"}
scoreboard objectives add leave trigger {"text":"leave","color":"yellow"}
scoreboard objectives add time trigger {"text":"time","color":"yellow"}
################################################################################
scoreboard objectives remove joined
scoreboard objectives remove in_game
scoreboard objectives remove ztbg_click
scoreboard objectives remove sneak
scoreboard objectives remove use.lingering
#/scoreboard objectives remove drop.sugar
#/scoreboard objectives remove drop.redstone
#/scoreboard objectives remove drop.glowstone
scoreboard objectives add joined custom:leave_game {"text":"Event: Joined","color":"gold"}
scoreboard objectives add in_game dummy {"text":"Is the player in the game?"}
scoreboard objectives add ztbg_click trigger {"text":"ztbg_click","color":"yellow"}
scoreboard objectives add sneaking custom:sneak_time {"text":"Sneaking","color":"dark_green"}
scoreboard objectives add use.lingering used:lingering_potion {"text":"Event: Used Lingering Potion","color":"gold"}
scoreboard objectives add drop.sugar dropped:sugar {"text":"Vote: Ingenious","color":"green"}
scoreboard objectives add drop.redstone dropped:redstone {"text":"Vote: Beautiful","color":"green"}
scoreboard objectives add drop.glowstone dropped:glowstone_dust {"text":"Vote: Funny","color":"green"}
################################################################################
scoreboard objectives remove pre-id
scoreboard objectives remove id
scoreboard objectives remove team
scoreboard objectives remove team.invite
scoreboard objectives remove stage
scoreboard objectives add pre-id dummy {"text":"Pre In-Game ID","color":"gray"}
scoreboard objectives add id dummy {"text":"In-Game ID","color":"gray"}
scoreboard objectives add team dummy {"text":"Team ID","color":"gray"}
scoreboard objectives add team.invite dummy {"text":"Team ID Invite","color":"gray"}
scoreboard objectives add stage dummy {"text":"Stage","color":"gray"}
################################################################################
scoreboard objectives remove tbg
scoreboard objectives remove ready
scoreboard objectives remove p_id
scoreboard objectives add tbg dummy {"translate":"The Building Game"}
scoreboard objectives add ready dummy
scoreboard objectives add p_id dummy {"translate":"ID"}
scoreboard objectives setdisplay sidebar ready
scoreboard objectives setdisplay list id
execute if score team_members options matches 1.. run scoreboard objectives setdisplay below_name p_id

team remove spectators
team add spectators {"text":"Spectators"}
team modify spectators collisionRule never
team remove players
team add players {"text":"Players"}
team modify players color yellow
team modify players collisionRule never
scoreboard players set #2 tbg 2
scoreboard players set #10 tbg 10
scoreboard players set #60 tbg 60
scoreboard players set #3600 tbg 3600
scoreboard players set #992 tbg 992
kill @e[tag=field]
bossbar add timer ""
bossbar set timer visible false
kill @e[tag=team]
scoreboard players set #count id 0
scoreboard players set #stage tbg -2
kill @e[type=area_effect_cloud]
summon area_effect_cloud 3 64 5 {Duration:2147483647,CustomName:"{\"translate\":\"Spectate\",\"bold\":true}",CustomNameVisible:1b}
summon area_effect_cloud -4 64 5 {Duration:2147483647,CustomName:"{\"translate\":\"Play\",\"color\":\"yellow\",\"bold\":true}",CustomNameVisible:1b}