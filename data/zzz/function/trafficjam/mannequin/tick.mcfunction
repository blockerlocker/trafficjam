execute store result storage trafficjam:temp all.mannequin_loop int 1 run scoreboard players get @s trafficjam
execute store result storage trafficjam:temp all.current_tick int 1 run scoreboard players get #tick trafficjam
function zzz:trafficjam/mannequin/teleport_to_marker with storage trafficjam:temp all
data remove storage trafficjam:temp all