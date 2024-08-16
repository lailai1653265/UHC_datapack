execute as @a[scores={Deaths=1..}] at @s run function mypack:die
execute as @a[scores={timer2=600}] run function mypack:end1
execute as @a[scores={timer2=1200}] run function mypack:end
execute as @a[scores={timer2=1740}] run function mypack:end2
execute as @n[type=villager] run title @a[dx=250,dz=250] actionbar "in safe zone"
