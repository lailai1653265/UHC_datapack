scoreboard players add #phase uhc_phase 1

# 根據階段縮圈
execute if score #phase uhc_phase matches 1 run worldborder set 1000 300
execute if score #phase uhc_phase matches 2 run worldborder set 500 300
execute if score #phase uhc_phase matches 3 run worldborder set 100 300
execute if score #phase uhc_phase matches 4 run worldborder set 50 300
execute if score #phase uhc_phase matches 5 run worldborder set 1 300

# 縮圈警告
execute if score #phase uhc_phase matches 1 run function mypack:warning
execute if score #phase uhc_phase matches 2 run function mypack:warning
execute if score #phase uhc_phase matches 3 run function mypack:warning
execute if score #phase uhc_phase matches 4 run function mypack:warning
execute if score #phase uhc_phase matches 5 run function mypack:warning
