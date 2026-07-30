function trafficjam:goal/delete/black

execute align xyz run summon marker ~.5 ~.5 ~.5 {Tags:[trafficjam,trafficjam_goal,trafficjam_black_goal],CustomName:"Black Goal",data:{color:"#1E1B1B"}}
setblock ~ ~ ~ black_concrete