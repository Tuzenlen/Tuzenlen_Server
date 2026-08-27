# 重置傷害計數並給予 5 秒 (100 ticks) 追蹤時間
scoreboard players set @s damage_dealt 0
scoreboard players set @s bossbar_timer 100

# 清除舊目標標籤
tag @e[tag=target_boss] remove target_boss

# 鎖定玩家眼前 6 格內受傷的生物
execute at @s anchored eyes run tag @e[type=!player,type=!item,type=!experience_orb,type=!marker,type=!text_display,distance=..6,nbt={HurtTime:10s},limit=1,sort=nearest] add target_boss
execute unless entity @e[tag=target_boss] at @s anchored eyes run tag @e[type=!player,type=!item,type=!experience_orb,type=!marker,type=!text_display,distance=..6,nbt={HurtTime:9s},limit=1,sort=nearest] add target_boss