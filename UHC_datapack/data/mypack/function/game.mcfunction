scoreboard players set @a timer2 0
gamemode survival @a
clear @a
effect clear @a
effect give @a minecraft:invisibility 90 2 true
effect give @a slow_falling 90 1 true
scoreboard players set #timerRunning TimerRunning 1
bossbar set timer name {"text":"計時開始！","color":"green"}
bossbar set timer players @a
spreadplayers ~ ~ 50 500 false @a
function mypack:game1
function mypack:timer1