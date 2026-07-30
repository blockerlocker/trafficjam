title @p title ""
title @p subtitle {text:"You Lose!",color:red}

execute as @p at @s run playsound entity.wither.spawn ui @s ~ ~ ~ 0.5
execute as @p at @s anchored eyes run particle firework ^ ^-0.25 ^ 0 0 0 0.2 100

data merge storage trafficjam:state {all:{game_over:true}}