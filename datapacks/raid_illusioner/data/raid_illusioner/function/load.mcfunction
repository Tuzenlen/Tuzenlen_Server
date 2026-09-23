# 建立隨機數計分板
scoreboard objectives add illusioner_rng dummy

# 建立用來偵測玩家死亡的計分板
scoreboard objectives add death_count deathCount

# 載入提示
tellraw @a [{"text":"[系統] ","color":"gold","bold":true},{"text":"突襲調整數據包已成功載入！","color":"#10de3d"}]