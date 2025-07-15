gamerule naturalRegeneration false
say UHC loaded
worldborder warning distance 50
scoreboard objectives add Deaths deathCount
# 初始化縮圈系統
tellraw @a [{"text":"[UHC] ","color":"gold","bold":true},{"text":"縮圈系統已啟動","color":"green"}]

# 創建計分板
scoreboard objectives add uhc_timer dummy
scoreboard objectives add uhc_phase dummy
scoreboard objectives add uhc_x dummy
scoreboard objectives add uhc_z dummy
scoreboard objectives add uhc_outside dummy

# 設定初始值
scoreboard players set #timer uhc_timer 0
scoreboard players set #phase uhc_phase 0
scoreboard players set #shrink_time uhc_timer 12000

# 設定世界邊界
worldborder center 0 0
worldborder set 2000
worldborder damage amount 2
worldborder damage buffer 5
worldborder warning distance 30
worldborder warning time 10

# 設定階段時間 (tick)
scoreboard players set #phase1 uhc_timer 6000
scoreboard players set #phase2 uhc_timer 18000
scoreboard players set #phase3 uhc_timer 30000
scoreboard players set #phase4 uhc_timer 42000
scoreboard players set #phase5 uhc_timer 54000
scoreboard players set #phase6 uhc_timer 66000

tellraw @a [{"text":"[UHC] ","color":"gold","bold":true},{"text":"第一次縮圈將在 5 分鐘後開始","color":"yellow"}]
