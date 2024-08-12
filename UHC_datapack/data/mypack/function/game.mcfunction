scoreboard players set @a timer2 0
gamemode survival @a
clear @a
effect clear @a
effect give @a regeneration 10 255 true
effect give @a minecraft:invisibility 90 2 true
effect give @a slow_falling 60 1 true
execute as @a[scores={noob_mode=1}] run give @a golden_apple 2
spreadplayers ~ ~ 50 500 false @a
function mypack:game1
function mypack:timer1