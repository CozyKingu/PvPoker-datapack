# Supprimer tous les armor stands nommés "poker"
kill @e[type=armor_stand,tag=pvp_zone]

# Invoquer un armor stand nommé "poker" à la position du joueur
summon armor_stand ~ ~ ~ {Tags:["pvp_zone"]}