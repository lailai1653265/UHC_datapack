# countdown_tick.mcfunction

scoreboard players remove #timer timer 1
execute store result bossbar timer10 value run scoreboard players get #timer timer

# 如果倒數結束（=0），執行事件
execute if score #timer timer matches ..0 run function mypack:timer_end
schedule function mypack:timer 1s