# make sure they are allowed to use this command
tellraw @s[type=player,tag=!op] {"rawtext":[{"text":"§r§6[§aScythe§6]§r §4§lHey! §rYou must be Scythe-Opped to use this function!"}]}
execute as @s[tag=!op] run tellraw @a[tag=op] {"rawtext":[{"text":"§r§6[§aScythe§6]§r "},{"selector":"@s"},{"text":" has tried to toggle Gamemode 1 without perms!"}]}

# allow
execute as @s[type=player,tag=op,scores={gmc=..0}] run scoreboard players set scythe:config gmc 1
execute as @s[type=player,tag=op,scores={gmc=..0}] run tellraw @a[tag=op] {"rawtext":[{"text":"§r§6[§aScythe§6]§r "},{"selector":"@s"},{"text":" has disallowed §4gamemode 1§r to be used!"}]}

# deny
execute as @s[type=player,tag=op,scores={gmc=1..}] run scoreboard players set scythe:config gmc 0
execute as @s[type=player,tag=op,scores={gmc=1..}] run tellraw @a[tag=op] {"rawtext":[{"text":"§r§6[§aScythe§6]§r "},{"selector":"@s"},{"text":" has allowed §agamemode 1§r to be used!"}]}

scoreboard players operation @a gmc = scythe:config gmc