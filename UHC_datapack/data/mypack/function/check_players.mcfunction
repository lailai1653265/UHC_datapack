# 檢查玩家是否在安全區內

# 獲取玩家座標
execute as @a[gamemode=survival] store result score @s uhc_x run data get entity @s Pos[0]
execute as @a[gamemode=survival] store result score @s uhc_z run data get entity @s Pos[2]

# 獲取當前邊界大小
execute store result score #border_size uhc_timer run worldborder get
scoreboard players operation #border_radius uhc_timer = #border_size uhc_timer
scoreboard players set #two uhc_timer 2
scoreboard players operation #border_radius uhc_timer /= #two uhc_timer

# 計算負邊界
scoreboard players operation #neg_border uhc_timer = #border_radius uhc_timer
scoreboard players set #neg_one uhc_timer -1
scoreboard players operation #neg_border uhc_timer *= #neg_one uhc_timer

# 檢查玩家是否在安全區外
execute as @a[gamemode=survival] run scoreboard players set @s uhc_outside 0

# 檢查 X 軸
execute as @a[gamemode=survival] if score @s uhc_x > #border_radius uhc_timer run scoreboard players set @s uhc_outside 1
execute as @a[gamemode=survival] if score @s uhc_x < #neg_border uhc_timer run scoreboard players set @s uhc_outside 1

# 檢查 Z 軸
execute as @a[gamemode=survival] if score @s uhc_z > #border_radius uhc_timer run scoreboard players set @s uhc_outside 1
execute as @a[gamemode=survival] if score @s uhc_z < #neg_border uhc_timer run scoreboard players set @s uhc_outside 1

# 對在安全區外的玩家顯示警告
execute as @a[gamemode=survival,scores={uhc_outside=1}] run title @s actionbar [{"text":"⚠ 你在安全區外！快回到安全區域！","color":"red","bold":true}]
execute as @a[gamemode=survival,scores={uhc_outside=1}] run particle minecraft:angry_villager ~ ~2 ~ 0.5 0.5 0.5 0.1 3

# 顯示在安全區內的玩家狀態
execute as @a[gamemode=survival,scores={uhc_outside=0}] run title @s actionbar [{"text":"✓ 你在安全區內","color":"green"}]