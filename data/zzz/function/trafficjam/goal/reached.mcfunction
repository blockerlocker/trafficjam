tag @n[type=marker,tag=trafficjam_current_goal] add trafficjam_reached_goal

execute unless entity @e[type=marker,tag=trafficjam_goal,tag=!trafficjam_reached_goal] run return run function zzz:trafficjam/game/victory

function zzz:trafficjam/reset/main

execute as @p at @s anchored eyes run particle firework ^ ^-0.25 ^ 0 0 0 0.2 100
execute as @p at @s run playsound entity.firework_rocket.launch ui @s