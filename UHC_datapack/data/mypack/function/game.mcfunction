scoreboard players set @a timer2 0
gamemode survival @a
clear @a
effect clear @a
effect give @a regeneration 10 255 true
effect give @a minecraft:invisibility 90 2 true
effect give @a slow_falling 60 1 true
spreadplayers ~ ~ 50 500 false @a
function mypack:game1
function mypack:timer1