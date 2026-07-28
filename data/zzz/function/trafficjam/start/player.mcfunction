data modify storage trafficjam:state all.origin_x set from entity @s Pos[0]
data modify storage trafficjam:state all.origin_y set from entity @s Pos[1]
data modify storage trafficjam:state all.origin_z set from entity @s Pos[2]

data modify storage trafficjam:state all.rotation_x set from entity @s Rotation[0]
data modify storage trafficjam:state all.rotation_y set from entity @s Rotation[1]

tag @s add trafficjam_player_name
execute summon text_display run function zzz:trafficjam/player/get_name
tag @s remove trafficjam_player_name

team join trafficjam