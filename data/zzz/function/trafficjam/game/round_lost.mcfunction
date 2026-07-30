execute if data storage trafficjam:state all{game_over:true} run return run data merge storage trafficjam:state {all:{active:false,looping:false,round_start:false}}

function zzz:trafficjam/reset/main

execute as @p at @s run playsound entity.player.hurt ui @s
execute as @p at @s anchored eyes run particle firework ^ ^-0.25 ^ 0 0 0 0.2 100