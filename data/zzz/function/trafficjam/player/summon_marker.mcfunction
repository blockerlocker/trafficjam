tag @s add trafficjam_marker
tag @s add trafficjam_new

scoreboard players operation @s trafficjam = #tick trafficjam
execute store result entity @s data.loop int 1 run scoreboard players get #loop trafficjam
execute rotated as @p[tag=trafficjam_player_tick] run rotate @s ~ ~
execute as @p[tag=trafficjam_player_tick] if predicate {type:"entity_properties",entity:"this",predicate:{flags:{is_sneaking:true}}} run data modify entity @n[type=marker,tag=trafficjam_marker,tag=trafficjam_new] data.sneak set value true

tag @s remove trafficjam_new