execute as @a[scores={Deaths=1..}] at @s run function mypack:die
execute as @a[scores={timer2=600}] run function mypack:end1
execute as @a[scores={timer2=1200}] run function mypack:end
execute as @a[scores={timer2=1740}] run function mypack:end2
execute as @e[type=marker] at @s positioned ~-250 ~-320 ~-250 run title @a[dx=499,dy=400,dz=499,scores={zone=0}] actionbar ["",{"text":"in safe zone","color":"green"}]
execute as @e[type=marker] at @s positioned ~-50 ~-320 ~-50 run title @a[dx=99,dy=400,dz=99,scores={zone=1}] actionbar ["",{"text":"in safe zone","color":"green"}]
execute as @e[type=marker] at @s positioned ~-15 ~-320 ~-15 run title @a[dx=29,dy=400,dz=29,scores={zone=2}] actionbar ["",{"text":"in safe zone","color":"green"}]

#title @a[dx=499,dy=400,dz=499] actionbar "in safe zone"
