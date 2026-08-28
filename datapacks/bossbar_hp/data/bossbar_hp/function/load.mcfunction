# 建立計分板
scoreboard objectives add bossbar_timer dummy

# 初始化 Bossbar
bossbar remove bossbar_hp:boss_bar
bossbar add bossbar_hp:boss_bar "BOSS"
bossbar set bossbar_hp:boss_bar color red
bossbar set bossbar_hp:boss_bar style progress

# 提示訊息
tellraw @a [{"text":"[系統] ","color":"gold","bold":true},{"text":" Bossbar 數據包已載入！","color":"#00CACA"}]