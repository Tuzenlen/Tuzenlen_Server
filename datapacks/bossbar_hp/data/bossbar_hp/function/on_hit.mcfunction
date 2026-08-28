# 1. 瞬間撤銷成就（讓成就重置，以便下一次攻擊能再次觸發）
advancement revoke @s only bossbar_hp:player_hurt_entity

# 2. 重置血條顯示時間 (5 秒 = 100 ticks)
scoreboard players set @s bossbar_timer 100

# 3. 清除舊目標標籤
tag @e[tag=target_boss] remove target_boss

# 4. 鎖定距離玩家最近且剛受傷的生物
# (因為成就已過濾掉自然傷害，此時周圍受傷的一定是被該玩家打到的怪)
execute at @s run tag @e[type=!player,type=!item,type=!experience_orb,type=!marker,type=!text_display,type=!interaction,distance=..128,nbt={HurtTime:10s},limit=1,sort=nearest] add target_boss
execute unless entity @e[tag=target_boss] at @s run tag @e[type=!player,type=!item,type=!experience_orb,type=!marker,type=!text_display,type=!interaction,distance=..128,nbt={HurtTime:9s},limit=1,sort=nearest] add target_boss
execute unless entity @e[tag=target_boss] at @s run tag @e[type=!player,type=!item,type=!experience_orb,type=!marker,type=!text_display,type=!interaction,distance=..128,nbt={HurtTime:8s},limit=1,sort=nearest] add target_boss