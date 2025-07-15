execute as @a[scores={Deaths=1..}] at @s run function mypack:die
execute as @e[type=marker] at @s positioned ~-250 ~-320 ~-250 run title @a[dx=499,dy=400,dz=499,scores={zone=0}] actionbar ["",{"text":"in safe zone","color":"green"}]
execute as @e[type=marker] at @s positioned ~-50 ~-320 ~-50 run title @a[dx=99,dy=400,dz=99,scores={zone=1}] actionbar ["",{"text":"in safe zone","color":"green"}]
execute as @e[type=marker] at @s positioned ~-15 ~-320 ~-15 run title @a[dx=29,dy=400,dz=29,scores={zone=2}] actionbar ["",{"text":"in safe zone","color":"green"}]

#title @a[dx=499,dy=400,dz=499] actionbar "in safe zone"

scoreboard players add #timer uhc_timer 1

# 檢查縮圈時間
execute if score #timer uhc_timer = #phase1 uhc_timer run function uhc:shrink
execute if score #timer uhc_timer = #phase2 uhc_timer run function uhc:shrink
execute if score #timer uhc_timer = #phase3 uhc_timer run function uhc:shrink
execute if score #timer uhc_timer = #phase4 uhc_timer run function uhc:shrink
execute if score #timer uhc_timer = #phase5 uhc_timer run function uhc:shrink
execute if score #timer uhc_timer = #phase6 uhc_timer run function uhc:shrink

# 檢查玩家位置
function uhc:check_players

# 倒數提醒
execute if score #timer uhc_timer matches 4800 run tellraw @a [{"text":"[UHC] ","color":"gold","bold":true},{"text":"距離縮圈還有 1 分鐘","color":"red"}]
execute if score #timer uhc_timer matches 5400 run tellraw @a [{"text":"[UHC] ","color":"gold","bold":true},{"text":"距離縮圈還有 30 秒","color":"red"}]
execute if score #timer uhc_timer matches 5800 run tellraw @a [{"text":"[UHC] ","color":"gold","bold":true},{"text":"距離縮圈還有 10 秒","color":"red"}]

execute if score #timer uhc_timer matches 16800 run tellraw @a [{"text":"[UHC] ","color":"gold","bold":true},{"text":"距離縮圈還有 1 分鐘","color":"red"}]
execute if score #timer uhc_timer matches 17400 run tellraw @a [{"text":"[UHC] ","color":"gold","bold":true},{"text":"距離縮圈還有 30 秒","color":"red"}]
execute if score #timer uhc_timer matches 17800 run tellraw @a [{"text":"[UHC] ","color":"gold","bold":true},{"text":"距離縮圈還有 10 秒","color":"red"}]

execute if score #timer uhc_timer matches 28800 run tellraw @a [{"text":"[UHC] ","color":"gold","bold":true},{"text":"距離縮圈還有 1 分鐘","color":"red"}]
execute if score #timer uhc_timer matches 29400 run tellraw @a [{"text":"[UHC] ","color":"gold","bold":true},{"text":"距離縮圈還有 30 秒","color":"red"}]
execute if score #timer uhc_timer matches 29800 run tellraw @a [{"text":"[UHC] ","color":"gold","bold":true},{"text":"距離縮圈還有 10 秒","color":"red"}]

execute if score #timer uhc_timer matches 40800 run tellraw @a [{"text":"[UHC] ","color":"gold","bold":true},{"text":"距離縮圈還有 1 分鐘","color":"red"}]
execute if score #timer uhc_timer matches 41400 run tellraw @a [{"text":"[UHC] ","color":"gold","bold":true},{"text":"距離縮圈還有 30 秒","color":"red"}]
execute if score #timer uhc_timer matches 41800 run tellraw @a [{"text":"[UHC] ","color":"gold","bold":true},{"text":"距離縮圈還有 10 秒","color":"red"}]

execute if score #timer uhc_timer matches 52800 run tellraw @a [{"text":"[UHC] ","color":"gold","bold":true},{"text":"距離縮圈還有 1 分鐘","color":"red"}]
execute if score #timer uhc_timer matches 53400 run tellraw @a [{"text":"[UHC] ","color":"gold","bold":true},{"text":"距離縮圈還有 30 秒","color":"red"}]
execute if score #timer uhc_timer matches 53800 run tellraw @a [{"text":"[UHC] ","color":"gold","bold":true},{"text":"距離縮圈還有 10 秒","color":"red"}]

execute if score #timer uhc_timer matches 64800 run tellraw @a [{"text":"[UHC] ","color":"gold","bold":true},{"text":"距離縮圈還有 1 分鐘","color":"red"}]
execute if score #timer uhc_timer matches 65400 run tellraw @a [{"text":"[UHC] ","color":"gold","bold":true},{"text":"距離縮圈還有 30 秒","color":"red"}]
execute if score #timer uhc_timer matches 65800 run tellraw @a [{"text":"[UHC] ","color":"gold","bold":true},{"text":"距離縮圈還有 10 秒","color":"red"}]