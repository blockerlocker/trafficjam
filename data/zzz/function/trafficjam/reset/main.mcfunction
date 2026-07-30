data modify storage trafficjam:state all.looping set value false


effect give @p instant_health 10 10 true
effect give @p saturation 10 10 true

scoreboard players set #tick trafficjam 0
scoreboard players add #loop trafficjam 1

function zzz:trafficjam/reset/teleport_players with storage trafficjam:state all

function zzz:trafficjam/mannequin/remove_all

execute store result score #timer trafficjam run data get storage trafficjam:settings all.duration


attribute @p movement_speed modifier add trafficjam:immobile -1000 add_multiplied_base
attribute @p jump_strength modifier add trafficjam:immobile -1000 add_multiplied_base

scoreboard players set #round_start trafficjam 101

data modify storage trafficjam:state all.round_start set value true