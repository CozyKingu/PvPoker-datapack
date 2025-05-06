# Donne un diamant au joueur pour chaque point de score "diamonds"
execute as @a[scores={kills=1..}] run give @s minecraft:diamond 1
scoreboard players remove @a[scores={kills=1..}] kills 1