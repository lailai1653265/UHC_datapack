gamemode spectator @s
scoreboard players set @s Deaths 0
tellraw @a [{"selector":"@s","color":"yellow"},{"text":" 已死亡，變成了旁觀者。","color":"gold"}]
execute rotated ~ 0 run function mypack:spiral_soul_effect
function mypack:test1
summon lightning_bolt ~ ~ ~ {NoAI:1b,Silent:1b,CustomName:'{"text":"DeathEffect"}'}
particle minecraft:explosion ~ ~1 ~ 0.5 0.5 0.5 1 10 force
particle minecraft:enchant ~ ~1 ~ 1 1 1 1 100 force
particle minecraft:reverse_portal ~ ~1 ~ 0.5 0.5 0.5 0.1 100 force
particle minecraft:dragon_breath ~ ~1 ~ 0.5 1 0.5 0.1 100 force
particle minecraft:large_smoke ~ ~0.5 ~ 0.4 0.4 0.4 0.05 50 force
playsound minecraft:entity.wither.spawn player @a ~ ~ ~ 1 0.5
playsound minecraft:entity.elder_guardian.curse player @a ~ ~ ~ 1 1
playsound minecraft:block.beacon.activate player @a ~ ~ ~ 1 1.5
playsound minecraft:block.end_portal.spawn player @a ~ ~ ~ 0.5 1
playsound minecraft:ambient.cave player @a ~ ~ ~ 1 0.7
playsound minecraft:block.portal.ambient player @a ~ ~ ~ 0.5 1
