# 處於戰鬥倒數中的玩家，更新血條顯示
execute as @a[scores={bossbar_timer=1..}] run function bossbar_hp:update_player