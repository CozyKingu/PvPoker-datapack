# Giving diamonds to play in the poker
execute as @a[tag=pvpPlayer,scores={kills=1..}] run give @s minecraft:diamond
scoreboard players set @a[tag=pvpPlayer,scores={kills=1..}] kills 0

# TP all tagged player to poker
execute at @e[type=armor_stand,tag=poker,limit=1] run tp @a[tag=pvpPlayer] ~ ~ ~