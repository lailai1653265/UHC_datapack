gamemode spectator @s
scoreboard players set @s Deaths 0
tellraw @a [{"selector":"@s","color":"yellow"},{"text":" 已死亡，變成了旁觀者。","color":"gold"}]
particle minecraft:soul ~ ~0.5 ~ 0.3 0.8 0.3 0.02 50 force
particle minecraft:soul ~ ~1 ~ 0.3 0.8 0.3 0.04 50 force
particle minecraft:soul ~ ~1.5 ~ 0.3 0.8 0.3 0.06 50 force
particle minecraft:end_rod ~ ~1 ~ 0.3 0.8 0.3 0.05 30 force
# particle minecraft:dust 0.5 0.8 1 1 ~ ~0.1 ~ 0.8 0.1 0.8 0 100 forceparticle minecraft:firework ~ ~1 ~ 0.5 0.5 0.5 0.05 30 force
particle dust{color:[0.5,0.8,1.0],scale:1} ~ ~0.1 ~ 0.1 0.8 0.1 0 100 force
playsound minecraft:entity.wither.spawn player @a ~ ~ ~ 0.5 0.5
playsound minecraft:block.beacon.activate player @a ~ ~ ~ 1 1.5
playsound minecraft:block.portal.ambient player @a ~ ~ ~ 0.5 1
effect give @e[type=!player,distance=..5] glowing 2 0 true
