function zzz:trafficjam/actionbar/main

execute if data storage trafficjam:state all{round_start:true} run function zzz:trafficjam/reset/round_start

execute if data storage trafficjam:state all{looping:true} run function zzz:trafficjam/looping_tick