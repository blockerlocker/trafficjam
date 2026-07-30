kill @e[type=marker,tag=trafficjam_marker]
tag @e[type=marker,tag=trafficjam_reached_goal] remove trafficjam_reached_goal
tag @e[type=marker,tag=trafficjam_current_goal] remove trafficjam_current_goal
execute as @a run attribute @s movement_speed modifier remove trafficjam:immobile
execute as @a run attribute @s jump_strength modifier remove trafficjam:immobile
function zzz:trafficjam/mannequin/remove_all
data modify storage trafficjam:state all.looping set value false
data modify storage trafficjam:state all.round_start set value false
data modify storage trafficjam:state all.game_over set value false