# 動態中心邊界檢查

# 初始化所有玩家為在安全區內
#execute as @a[gamemode=survival] run scoreboard players set @s uhc_outside 0

# 獲取當前邊界大小
#execute store result score #border_size uhc_timer run worldborder get
#scoreboard players set #half uhc_timer 2
#scoreboard players operation #border_radius uhc_timer = #border_size uhc_timer
#scoreboard players operation #border_radius uhc_timer /= #half uhc_timer

# 檢查每個玩家
#execute as @a[gamemode=survival] run function mypack:check_player_position_dynamic

# 顯示警告
#execute as @a[gamemode=survival,scores={uhc_outside=1}] run title @s actionbar [{"text":"⚠ 你在安全區外！快回到安全區域！","color":"red","bold":true}]
#execute as @a[gamemode=survival,scores={uhc_outside=1}] run particle minecraft:angry_villager ~ ~2 ~ 0.5 0.5 0.5 0.1 3
#execute as @a[gamemode=survival,scores={uhc_outside=1}] run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0.5

# 顯示安全狀態
#execute as @a[gamemode=survival,scores={uhc_outside=0}] run title @s actionbar [{"text":"✓ 你在安全區內","color":"green"}]