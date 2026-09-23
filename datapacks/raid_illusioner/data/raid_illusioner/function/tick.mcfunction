# 1. 獲得5級突襲之兆，獲得不祥標籤
execute as @a[nbt={active_effects:[{id:"minecraft:raid_omen",amplifier:4b}]}] run tag @s add bad_omen_v
execute as @a[tag=!bad_omen_v,nbt={active_effects:[{id:"minecraft:raid_omen",amplifier:4b}]}] run advancement grant @s only raid_illusioner:raid_master

# 2. 【村莊英雄判定】當擁有不祥標籤的玩家獲得「村莊英雄」時，設立村莊英雄標籤，並清除不祥標籤
execute as @a[tag=bad_omen_v,nbt={active_effects:[{id:"minecraft:hero_of_the_village"}]}] run tag @s add hero_tag
execute as @a[tag=bad_omen_v,nbt={active_effects:[{id:"minecraft:hero_of_the_village"}]}] run tag @s remove bad_omen_v

# 3. 【清理村莊英雄標籤】當玩家身上已經沒有村莊英雄效果時，清除村莊英雄標籤
execute as @a[tag=hero_tag] unless entity @s[nbt={active_effects:[{id:"minecraft:hero_of_the_village"}]}] run tag @s remove hero_tag

# 4. 【死亡偵測與清除】如果玩家死亡，自動清除不祥標籤，並將死亡計分板歸零
execute as @a[tag=bad_omen_v,scores={death_count=1..}] run tag @s remove bad_omen_v
scoreboard players reset @a[scores={death_count=1..}] death_count

# 5. 核心運作：只要擁有不祥標籤，且周圍 128 格內有未檢查的喚魔者，就執行幻術師判定
execute as @a[tag=bad_omen_v] at @s as @e[type=evoker,tag=!illusioner_checked,distance=..128] at @s run function raid_illusioner:check_raid

# 找出場上還沒被標記過的幻術師,標記並觸發警告
execute as @a at @s as @e[type=illusioner,tag=!raid_illusioner_boss,distance=..128] at @s run function raid_illusioner:found