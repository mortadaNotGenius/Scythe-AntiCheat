# Clears illegal items from player inventories

# clear dropped items
execute as @e[type=item,tag=!didCheck] run function checks/assets/cleardropped

# get rid of illegal blocks already placed
fill ~5 ~5 ~5 ~-5 ~-5 ~-5 air 0 replace unknown -1