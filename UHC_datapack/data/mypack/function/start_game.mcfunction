worldborder center ~ ~
worldborder set 2000
kill @e[type=marker]
fill ~-5 ~150 ~-5 ~5 ~150 ~5 barrier
summon villager ~ ~150 ~ {VillagerData:{type:plains,profession:nitwit,level:2},Invulnerable:1b,NoAI:1b,Passengers:[{id:villager,VillagerData:{type:plains,profession:nitwit,level:1},Invulnerable:1b,NoAI:1b,Silent:1b}]}
summon marker ~ ~150 ~
setworldspawn ~ ~300 ~
tp @a ~ ~160 ~
scoreboard players set @a zone 0