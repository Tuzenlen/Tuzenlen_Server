# 1. 標記該怪物，避免重複觸發
tag @s add illusioner_checked

# 2. 抽籤取 1~100 的隨機整數
execute store result score @s illusioner_rng run random value 1..100

# 3. 命中 3% 機率 (數值為 1, 2, 3) 時，生成幻術師
execute if score @s illusioner_rng matches 1..3 run summon illusioner ~ ~ ~

