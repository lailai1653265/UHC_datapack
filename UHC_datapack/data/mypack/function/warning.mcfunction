# 縮圈警告
title @a times 10 50 20
title @a title [{"text":"⚠ 縮圈警告 ⚠","color":"red","bold":true}]

# 根據階段顯示副標題
execute if score #phase uhc_phase matches 1 run title @a subtitle [{"text":"邊界縮小至 ","color":"yellow"},{"text":"1000","color":"red"},{"text":" 格","color":"yellow"}]
execute if score #phase uhc_phase matches 2 run title @a subtitle [{"text":"邊界縮小至 ","color":"yellow"},{"text":"500","color":"red"},{"text":" 格","color":"yellow"}]
execute if score #phase uhc_phase matches 3 run title @a subtitle [{"text":"邊界縮小至 ","color":"yellow"},{"text":"250","color":"red"},{"text":" 格","color":"yellow"}]
execute if score #phase uhc_phase matches 4 run title @a subtitle [{"text":"邊界縮小至 ","color":"yellow"},{"text":"100","color":"red"},{"text":" 格","color":"yellow"}]
execute if score #phase uhc_phase matches 5 run title @a subtitle [{"text":"邊界縮小至 ","color":"yellow"},{"text":"50","color":"red"},{"text":" 格","color":"yellow"}]
execute if score #phase uhc_phase matches 6 run title @a subtitle [{"text":"最終圈！邊界 ","color":"yellow"},{"text":"20","color":"red"},{"text":" 格","color":"yellow"}]

# 聊天提醒
execute if score #phase uhc_phase matches 1 run tellraw @a [{"text":"[UHC] ","color":"gold","bold":true},{"text":"第一次縮圈！邊界縮小至 ","color":"yellow"},{"text":"1000","color":"red"},{"text":" 格","color":"yellow"}]
execute if score #phase uhc_phase matches 2 run tellraw @a [{"text":"[UHC] ","color":"gold","bold":true},{"text":"第二次縮圈！邊界縮小至 ","color":"yellow"},{"text":"500","color":"red"},{"text":" 格","color":"yellow"}]
execute if score #phase uhc_phase matches 3 run tellraw @a [{"text":"[UHC] ","color":"gold","bold":true},{"text":"第三次縮圈！邊界縮小至 ","color":"yellow"},{"text":"250","color":"red"},{"text":" 格","color":"yellow"}]
execute if score #phase uhc_phase matches 4 run tellraw @a [{"text":"[UHC] ","color":"gold","bold":true},{"text":"第四次縮圈！邊界縮小至 ","color":"yellow"},{"text":"100","color":"red"},{"text":" 格","color":"yellow"}]
execute if score #phase uhc_phase matches 5 run tellraw @a [{"text":"[UHC] ","color":"gold","bold":true},{"text":"最終縮圈！邊界縮小至 ","color":"yellow"},{"text":"50","color":"red"},{"text":" 格","color":"yellow"}]
execute if score #phase uhc_phase matches 6 run tellraw @a [{"text":"[UHC] ","color":"gold","bold":true},{"text":"決戰圈！邊界縮小至 ","color":"yellow"},{"text":"20","color":"red"},{"text":" 格！","color":"yellow"}]

# 音效
playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 0.5
playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 0.3 1