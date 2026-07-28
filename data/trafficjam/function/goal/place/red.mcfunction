function trafficjam:goal/delete/red

execute align xyz run summon marker ~.5 ~.5 ~.5 {Tags:[trafficjam,trafficjam_goal,trafficjam_red_goal],CustomName:"Red Goal",data:{color:"#B3312C"}}
setblock ~ ~ ~ red_concrete