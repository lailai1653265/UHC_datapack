gamemode survival @a
clear @a
effect clear @a
effect give @a regeneration 10 255 true
effect give @a minecraft:invisibility 90 2 true
effect give @a slow_falling 60 1 true
spreadplayers ~ ~ 50 500 false @a
function mypack:timer
tellraw @a [{"text":"[UHC] ","color":"gold","bold":true},{"text":"縮圈系統已啟動","color":"green"}]

scoreboard players set #timer timer 3600
bossbar set timer10 value 3600
bossbar set timer10 visible true


# 設定初始值
scoreboard players set #timer uhc_timer 0
scoreboard players set #phase uhc_phase 0
scoreboard players set #shrink_time uhc_timer 12000



# 設定階段時間 (tick)
scoreboard players set #phase1 uhc_timer 12000
scoreboard players set #phase2 uhc_timer 18000
scoreboard players set #phase3 uhc_timer 30000
scoreboard players set #phase4 uhc_timer 42000
scoreboard players set #phase5 uhc_timer 54000
scoreboard players set #phase6 uhc_timer 66000

tellraw @a [{"text":"[UHC] ","color":"gold","bold":true},{"text":"第一次縮圈將在 10 分鐘後開始","color":"yellow"}]


execute as @a run function mypack:game1
