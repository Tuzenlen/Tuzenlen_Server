particle minecraft:witch ~ ~1 ~ 0.5 1 0.5 0.1 60
playsound minecraft:entity.illusioner.prepare_blindness master @a[distance=..128] ~ ~ ~ 1 1
tellraw @a[distance=..128] [{"text":"[警告] ","color":"red","bold":true},{"text":"幻術師突襲降臨！","color":"dark_purple"}]
tag @s add raid_illusioner_boss