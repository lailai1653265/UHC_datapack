gamemode spectator @s
scoreboard players set @s Deaths 0
tellraw @a [{"selector":"@s","color":"yellow"},{"text":" 已死亡，變成了旁觀者。","color":"gold"}]
