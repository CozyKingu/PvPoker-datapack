scoreboard players set global verrouillage 1

# Initaliser scoreboard
scoreboard objectives add kills playerKillCount
scoreboard players set @a[tag=pvpPlayer,scores={kills=1..}] kills 0

execute as @e[type=armor_stand,tag=pvp_zone,limit=1] at @s run worldborder center ~ ~
worldborder set 100
execute at @e[type=armor_stand,tag=pvp_zone,limit=1] run spreadplayers ~ ~ 49 49 false @a[tag=pvpPlayer]

# Setting spaw point
execute as @a[tag=pvpPlayer] at @s run spawnpoint @s ~ ~ ~

gamerule doImmediateRespawn true
gamerule keepInventory true
gamemode survival @a[tag=pvpPlayer] 
clear @a[tag=pvpPlayer]
# give @a[tag=pvpPlayer] minecraft:crossbow{Enchantments:[{id:"quick_charge",lvl:3},{id:"power",lvl:5}]} 1
give @a[tag=pvpPlayer] minecraft:crossbow{Enchantments:[{id:"quick_charge",lvl:3}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:1000,Operation:0,UUID:[I;12345,67890,12345,67890],Slot:"mainhand"}]} 1
give @a[tag=pvpPlayer] minecraft:tipped_arrow{Potion:"minecraft:harming",CustomPotionEffects:[{Id:7,Amplifier:1,Duration:1}]} 64
give @a[tag=pvpPlayer] minecraft:cobblestone 64
give @a[tag=pvpPlayer] minecraft:water_bucket 1



# récompense kill
schedule function pvp:endpvp 120s