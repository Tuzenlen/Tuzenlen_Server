# 1. 當玩家造成傷害時，觸發目標鎖定
execute as @a[scores={damage_dealt=1..}] run function bossbar_hp:on_hit

# 2. 針對處於追蹤狀態的玩家更新 Bossbar
execute as @a[scores={bossbar_timer=1..}] run function bossbar_hp:update_player