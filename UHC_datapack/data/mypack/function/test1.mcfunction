# 創建地面魔法陣
particle dust{color:[0.5,0.8,1.0],scale:1} ~ ~ ~ 1 1 1 1 1 force
particle dust{color:[0.5,0.8,1.0],scale:1} ^ ^ ^3 0 0 0 0 1 force
particle dust{color:[0.5,0.8,1.0],scale:1} ^2.598 ^ ^1.5 0 0 0 0 1 force
particle dust{color:[0.5,0.8,1.0],scale:1} ^2.598 ^ ^-1.5 0 0 0 0 1 force
particle dust{color:[0.5,0.8,1.0],scale:1} ^ ^ ^-3 0 0 0 0 1 force
particle dust{color:[0.5,0.8,1.0],scale:1} ^-2.598 ^ ^-1.5 0 0 0 0 1 force
particle dust{color:[0.5,0.8,1.0],scale:1} ^-2.598 ^ ^1.5 0 0 0 0 1 force
particle dust{color:[0.5,0.8,1.0],scale:1} ^ ^ ^2 0 0 0 0 1 force
particle dust{color:[0.5,0.8,1.0],scale:1} ^1.732 ^ ^1 0 0 0 0 1 force
particle dust{color:[0.5,0.8,1.0],scale:1} ^1.732 ^ ^-1 0 0 0 0 1 force
particle dust{color:[0.5,0.8,1.0],scale:1} ^ ^ ^-2 0 0 0 0 1 force
particle dust{color:[0.5,0.8,1.0],scale:1} ^-1.732 ^ ^-1 0 0 0 0 1 force
particle dust{color:[0.5,0.8,1.0],scale:1} ^-1.732 ^ ^1 0 0 0 0 1 force
give @a dirt[minecraft:food={nutrition:20,saturation:}]
execute at megarabbitoo run setblock ~ ~ ~ spawner{SpawnCount:1,MaxNearbyEntities:10,SpawnRange:0,Delay:5,MinSpawnDelay:5,MaxSpawnDelay:10,RequiredPlayerRange:100,SpawnData:{entity:{id:vex,BoundX:10,BoundY:10,BoundZ:10,LifeTicks:1,Passengers:[{id:tnt,fuse:200}]}}} replace