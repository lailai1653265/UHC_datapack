# 檢查玩家相對於動態中心的位置

# 獲取玩家座標
#execute store result score @s uhc_x run data get entity @s Pos[0]
#execute store result score @s uhc_z run data get entity @s Pos[2]

# 計算相對於中心的距離
#scoreboard players operation @s uhc_x -= #center_x uhc_center_x
#scoreboard players operation @s uhc_z -= #center_z uhc_center_z

# 計算絕對值 (如果是負數就乘以-1)
#execute if score @s uhc_x matches ..-1 run scoreboard players set #neg_one uhc_timer -1
#execute if score @s uhc_x matches ..-1 run scoreboard players operation @s uhc_x *= #neg_one uhc_timer

#execute if score @s uhc_z matches ..-1 run scoreboard players set #neg_one uhc_timer -1
#execute if score @s uhc_z matches ..-1 run scoreboard players operation @s uhc_z *= #neg_one uhc_timer

# 檢查是否超出邊界半徑
#execute if score @s uhc_x > #border_radius uhc_timer run scoreboard players set @s uhc_outside 1
#execute if score @s uhc_z > #border_radius uhc_timer run scoreboard players set @s uhc_outside 1