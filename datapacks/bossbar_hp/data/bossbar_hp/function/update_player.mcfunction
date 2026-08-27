# 倒數計時
scoreboard players remove @s bossbar_timer 1

# 目標存活且時間未到則更新血條，否則清除
execute if score @s bossbar_timer matches 1.. if entity @e[tag=target_boss,limit=1] run function bossbar_hp:update_bar
execute if score @s bossbar_timer matches 0 run function bossbar_hp:clear_bar
execute unless entity @e[tag=target_boss,limit=1] run function bossbar_hp:clear_bar