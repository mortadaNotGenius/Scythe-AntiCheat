# make sure they are allowed to use this command
tellraw @s[type=player,tag=!op] {"rawtext":[{"text":"§r§6[§aScythe§6]§r §4§lHey! §rYou must be Scythe-Opped to use this function!"}]}
execute as @s[tag=!op] run tellraw @a[tag=op] {"rawtext":[{"text":"§r§6[§aScythe§6]§r "},{"selector":"@s"},{"text":" has tried to toggle anti-xray without perms!"}]}

# deny
execute as @s[type=player,tag=op,scores={xray=..0}] run scoreboard players set scythe:config xray 1
execute as @s[type=player,tag=op,scores={xray=..0}] run tellraw @a[tag=op] {"rawtext":[{"text":"§r§6[§aScythe§6]§r "},{"selector":"@s"},{"text":" has disabled §4Anti-xray!"}]}

# allow
execute as @s[type=player,tag=op,scores={xray=1..}] run scoreboard players set scythe:config xray 0
execute as @s[type=player,tag=op,scores={xray=1..}] run tellraw @a[tag=op] {"rawtext":[{"text":"§r§6[§aScythe§6]§r "},{"selector":"@s"},{"text":" has enabled §aAnti-xray!"}]}

scoreboard players operation @a xray = scythe:config xray
