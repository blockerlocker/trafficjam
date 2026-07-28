title @p title ""
title @p subtitle {text:"You Lose!",color:red}

execute as @p at @s run playsound entity.wither.spawn ui @s ~ ~ ~ 0.5
execute as @p at @s anchored eyes run particle firework ^ ^-0.25 ^ 0 0 0 0.2 100

execute as @e[type=mannequin,tag=trafficjam_mannequin] run data merge entity @s {immovable:false,Invulnerable:false}

data merge storage trafficjam:state {all:{active:false,looping:false,round_start:false}}