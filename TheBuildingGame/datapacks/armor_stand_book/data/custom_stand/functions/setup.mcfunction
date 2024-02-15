scoreboard objectives remove cas_rot
scoreboard objectives remove zcas_click
scoreboard objectives remove rotation_x
scoreboard objectives remove rotation_y
scoreboard objectives remove rotation_z
scoreboard objectives remove cas_uuidleast_q
scoreboard objectives remove cas_uuidmost_q
scoreboard objectives remove cas_pos

scoreboard objectives add cas_rot dummy {"text":"cas_rot","color":"dark_aqua"}
scoreboard objectives add zcas_click trigger {"text":"zcas_click","color":"dark_aqua"}
scoreboard objectives add rotation_x trigger {"text":"rotation_x","color":"dark_aqua"}
scoreboard objectives add rotation_y trigger {"text":"rotation_y","color":"dark_aqua"}
scoreboard objectives add rotation_z trigger {"text":"rotation_z","color":"dark_aqua"}
scoreboard objectives add cas_uuidleast_q dummy {"text":"cas_uuidleast_q","color":"dark_aqua"}
scoreboard objectives add cas_uuidmost_q dummy {"text":"cas_uuidmost_q","color":"dark_aqua"}
scoreboard objectives add cas_pos dummy {"text":"cas_pos","color":"dark_aqua"}
scoreboard players set 6 cas_pos 6
scoreboard players set 10000 cas_pos 10000
scoreboard players enable @a zcas_click
scoreboard players enable @a rotation_x
scoreboard players enable @a rotation_y
scoreboard players enable @a rotation_z
