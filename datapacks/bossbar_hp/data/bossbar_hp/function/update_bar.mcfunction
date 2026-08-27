# 1. 同步目標名稱
execute as @e[tag=target_boss,limit=1] run bossbar set bossbar_hp:boss_bar name [{"text":"⚔ "}, {"selector":"@s", "color":"#02ddff", "bold":true}, {"text":" ⚔"}]

# 2. 同步當前血量與最大血量（適用 1.21+ 語法）
execute store result bossbar bossbar_hp:boss_bar value run data get entity @e[tag=target_boss,limit=1] Health
execute store result bossbar bossbar_hp:boss_bar max run attribute @e[tag=target_boss,limit=1] max_health base get

# 3. 僅對當前攻擊者顯示血條
bossbar set bossbar_hp:boss_bar players @s