function trafficjam:goal/delete/orange

execute align xyz run summon marker ~.5 ~.5 ~.5 {Tags:[trafficjam,trafficjam_goal,trafficjam_orange_goal],CustomName:"Orange Goal",data:{color:"#EB8844"}}
setblock ~ ~ ~ orange_concrete