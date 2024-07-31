execute if score #timerRunning TimerRunning matches 1 run function mypack:timer
execute as @a[scores={Deaths=1..}] run function mypack:die
execute as @a[scores={timer2=600}] run function mypack:end1
execute as @a[scores={timer2=1200}] run function mypack:end
