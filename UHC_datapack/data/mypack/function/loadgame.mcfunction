worldborder center ~ ~
worldborder set 2000
kill @e[type=marker]
fill ~-5 ~150 ~-5 ~5 ~150 ~5 barrier
summon villager ~ ~150 ~ {VillagerData:{type:plains,profession:nitwit,level:2},Invulnerable:1b,NoAI:1b,Passengers:[{id:villager,VillagerData:{type:plains,profession:nitwit,level:1},Invulnerable:1b,NoAI:1b,Silent:1b}]}
summon marker ~ ~150 ~
setworldspawn ~ ~300 ~
tp @a ~ ~160 ~
# 設定世界邊界中心為當前位置

# 儲存中心座標
execute store result score #center_x uhc_center_x run data get entity @s Pos[0]
execute store result score #center_z uhc_center_z run data get entity @s Pos[2]

# 設定世界邊界中心
worldborder center ~ ~

# 通知玩家
tellraw @a [{"text":"[UHC] ","color":"gold","bold":true},{"text":"邊界中心已設定在 ","color":"green"},{"score":{"name":"#center_x","objective":"uhc_center_x"},"color":"yellow"},{"text":", ","color":"green"},{"score":{"name":"#center_z","objective":"uhc_center_z"},"color":"yellow"}]