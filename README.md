For Minecraft 26.3

Although most of my data packs are generally somewhat multiplayer compatible, this one absolutely is not right now. I'm gonna change that in the future but for now I just wanted to put together something that worked.

To set up the game, build a parkour course, and then use the commands below to place the different colored goals around the map.

These are the supported goal colors:
- blue
- brown
- lime
- pink
- purple
- red
- white
- yellow

| Command | Description |
| --- | --- |
| `/function trafficjam:goal/place/<color>` | Places a goal block at your feet, and deletes any existing goal block of the same color. |
| `/function trafficjam:goal/delete/<color\|all>` | Places a goal block at your feet, and deletes any existing goal block of the same color. When run with 'all' instead of a color, it deletes every goal. |
| `/function trafficjam:start` | Starts the game at the player's current position and rotation. |
| `/function trafficjam:end` | Ends the game early. |