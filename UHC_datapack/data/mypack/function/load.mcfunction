gamerule naturalRegeneration false
say UHC loaded
worldborder warning distance 50
scoreboard objectives add Deaths deathCount
bossbar add minecraft:timer10 "剩餘時間"
bossbar set minecraft:timer10 players @a
bossbar set minecraft:timer10 max 3600
bossbar set minecraft:timer10 value 3600
bossbar set minecraft:timer10 color green
scoreboard objectives add timer dummy

# 初始化縮圈系統
# 創建計分板
scoreboard objectives add uhc_timer dummy
scoreboard objectives add uhc_phase dummy
scoreboard objectives add uhc_x dummy
scoreboard objectives add uhc_z dummy
scoreboard objectives add uhc_outside dummy
scoreboard objectives add uhc_center_x dummy
scoreboard objectives add uhc_center_z dummy

# 設定世界邊界
worldborder center ~ ~
worldborder set 2000
worldborder damage amount 2
worldborder damage buffer 5
worldborder warning distance 30
worldborder warning time 10
worldborder warning distance 30