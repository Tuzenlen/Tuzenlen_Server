# 重置狀態與隱藏血條
scoreboard players set @s bossbar_timer 0
bossbar set bossbar_hp:boss_bar players
tag @e[tag=target_boss] remove target_boss