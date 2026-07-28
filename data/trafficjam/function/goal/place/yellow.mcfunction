function trafficjam:goal/delete/yellow

execute align xyz run summon marker ~.5 ~.5 ~.5 {Tags:[trafficjam,trafficjam_goal,trafficjam_yellow_goal],CustomName:"Yellow Goal",data:{color:"#DECF2A"}}
setblock ~ ~ ~ yellow_concrete