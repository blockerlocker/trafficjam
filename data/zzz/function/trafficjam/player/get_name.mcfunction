data merge entity @s {text:{selector:"@p[tag=trafficjam_player_name]"}}
data modify storage trafficjam:state all.player_name set from entity @s text.hover_event.name
kill @s