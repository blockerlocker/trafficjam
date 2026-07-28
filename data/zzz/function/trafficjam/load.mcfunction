tellraw @a [{player:blockerlocker},{text:"  Hey, so fair warning, this data pack is currently kind of just thrown together, and it's really only meant for 1 person. It will 100% not work in multiplayer. Sorry about that.",color:yellow}]

scoreboard objectives add trafficjam dummy

gamerule immediate_respawn true
difficulty peaceful

team add trafficjam
team modify trafficjam collisionRule never

execute unless data storage trafficjam:settings all run function zzz:trafficjam/settings/default