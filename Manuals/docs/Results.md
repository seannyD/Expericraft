# Results

## LogEx database

The logex plugin tracks block activity.  The files are:

`Spigot/LogEx Database/logdata.ldb`
`Spigot/LogEx Database/playerdata.ldb`

Columns refer to:
 
Date;Time;player;Action-type; x;z;y;block-type; ?;?

Action types: 0=mine  5=pickup  1=place

e.g.

14/8/2015;10:11:34;0;1;-96;64;268;3:0;0

Means that player 0 mined placed a block at -96,64,268 of type 3.