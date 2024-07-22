scoreboard players remove #time Timer 1
execute store result bossbar timer value run scoreboard players get #time Timer
execute store result score #minutes Timer run scoreboard players get #time Timer
execute store result score #seconds Timer run scoreboard players get #time Timer
scoreboard players operation #minutes Timer /= #1200 Timer
scoreboard players operation #seconds Timer %= #1200 Timer
scoreboard players operation #seconds Timer /= #20 Timer
bossbar set timer name [{"text":"剩餘時間: "},{"score":{"name":"#minutes","objective":"Timer"}},{"text":":"},{"score":{"name":"#seconds","objective":"Timer"}}]
execute if score #time Timer matches 1200 run function mypack:end
