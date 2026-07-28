$summon mannequin $(origin_x) $(origin_y) $(origin_z) {Rotation:[$(rotation_x),$(rotation_y)],Tags:[trafficjam_mannequin,trafficjam_new],immovable:1,Invulnerable:1,Team:trafficjam,profile:$(player_name)}

scoreboard players operation @n[type=mannequin,tag=trafficjam_mannequin,tag=trafficjam_new] trafficjam = #mannequin_index trafficjam
scoreboard players remove #mannequin_index trafficjam 1

tag @e[type=mannequin,tag=trafficjam_mannequin,tag=trafficjam_new] remove trafficjam_new

execute if score #mannequin_index trafficjam matches 1.. run function zzz:trafficjam/mannequin/summon/loop with storage trafficjam:state all