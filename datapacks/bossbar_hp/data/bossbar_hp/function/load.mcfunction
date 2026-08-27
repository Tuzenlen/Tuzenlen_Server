# 1. 建立玩家傷害與追蹤計時器計分板
scoreboard objectives add damage_dealt minecraft.custom:minecraft.damage_dealt
scoreboard objectives add bossbar_timer dummy

# 2. 初始化 Bossbar
bossbar remove bossbar_hp:boss_bar
bossbar add bossbar_hp:boss_bar "BOSS"
bossbar set bossbar_hp:boss_bar color red
bossbar set bossbar_hp:boss_bar style progress

# 3. 提示訊息
tellraw @a [{"text":"[系統] ","color":"gold","bold":true},{"text":"目標追蹤 Bossbar 數據包已載入！","color":"#00CACA"}]