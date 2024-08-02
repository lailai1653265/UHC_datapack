gamemode spectator @s
scoreboard players set @s Deaths 0
tellraw @a [{"selector":"@s","color":"yellow"},{"text":" 已死亡，變成了旁觀者。","color":"gold"}]
particle minecraft:cloud ~ ~1 ~ 0.2 0.7 0.2 0.01 100
particle minecraft:cloud ~ ~0.5 ~ 0.3 0.3 0.3 0.01 50
particle minecraft:cloud ~ ~1.7 ~ 0.2 0.2 0.2 0.01 30
particle minecraft:cloud ~0.5 ~1.2 ~ 0.1 0.3 0.1 0.01 20
particle minecraft:cloud ~-0.5 ~1.2 ~ 0.1 0.3 0.1 0.01 20
particle minecraft:cloud ~0.2 ~0.2 ~ 0.1 0.3 0.1 0.01 20
particle minecraft:cloud ~-0.2 ~0.2 ~ 0.1 0.3 0.1 0.01 20
particle minecraft:cloud ~ ~1 ~ 0.5 1 0.5 0.05 50 normal
playsound minecraft:entity.lightning_bolt.thunder player @a ~ ~ ~ 1 0.5
