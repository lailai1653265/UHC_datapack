gamerule naturalRegeneration false
say UHC loaded
worldborder warning distance 50
scoreboard objectives add Timer dummy
scoreboard objectives add TimerRunning dummy
scoreboard objectives add timer2 dummy {"text": "timer2"}
scoreboard players set @a timer2 0
bossbar add timer "計時器未啟動"
bossbar set timer color green
bossbar set timer style notched_10
bossbar set timer max 36000
scoreboard players set #time Timer 36000
scoreboard players set #timerRunning TimerRunning 0
scoreboard players set #1200 Timer 1200
scoreboard players set #20 Timer 20
scoreboard objectives add Deaths deathCount
scoreboard objectives add noob_mode dummy
scoreboard players set @a noob_mode 0
scoreboard objectives add zone dummy
scoreboard players set @a zone 0