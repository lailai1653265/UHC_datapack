tellraw @a ["",{"text":"--------------------------UHC------------------------","color":"#ff9933","bold":true},"\n "]
execute as @a[scores={noob_mode=1}] run tellraw @a ["",{"text":"noob mode [O/","clickEvent":{"action":"run_command","value":"/function mypack:noob_mode"},"hoverEvent":{"action":"show_text","contents":"give everyone two golden apple"},"color":"green"},{"text":"X","clickEvent":{"action":"run_command","value":"/function mypack:noob_mode"},"hoverEvent":{"action":"show_text","contents":"give everyone two golden apple"},"color":"dark_red"},{"text":"]","clickEvent":{"action":"run_command","value":"/function mypack:noob_mode"},"hoverEvent":{"action":"show_text","contents":"give everyone two golden apple"},"color":"green"}]
execute as @a[scores={noob_mode=0}] run tellraw @a ["",{"text":"noob mode [","clickEvent":{"action":"run_command","value":"/function mypack:noob_mode"},"hoverEvent":{"action":"show_text","contents":"give everyone two golden apple"},"color":"dark_red"},{"text":"O","clickEvent":{"action":"run_command","value":"/function mypack:noob_mode"},"hoverEvent":{"action":"show_text","contents":"give everyone two golden apple"},"color":"green"},{"text":"/X]","clickEvent":{"action":"run_command","value":"/function mypack:noob_mode"},"hoverEvent":{"action":"show_text","contents":"give everyone two golden apple"},"color":"dark_red"}]