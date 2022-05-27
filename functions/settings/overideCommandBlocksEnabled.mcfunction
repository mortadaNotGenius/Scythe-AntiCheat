# make sure they are allowed to use this command
tellraw @s[type=player,tag=!op] {"rawtext":[{"text":"§r§6[§aScythe§6]§r §4§lHey! §rYou must be Scythe-Opped to use this function!"}]}
execute as @s[tag=!op] run tellraw @a[tag=op] {"rawtext":[{"text":"§r§6[§aScythe§6]§r "},{"selector":"@s"},{"text":" has tried to toggle Force-CommandBlocksEnabled without perms!"}]}

# enable
execute as @s[type=player,tag=op,scores={cmds=..0}] run scoreboard players set scythe:config cmds 1
execute as @s[type=player,tag=op,scores={cmds=..0}] run tellraw @a[tag=op] {"rawtext":[{"text":"§r§6[§aScythe§6]§r "},{"selector":"@s"},{"text":" has set CommandBlocksEnabled §aas enabled!"}]}

# disable command blocks
execute as @s[type=player,tag=op,scores={cmds=1}] run scoreboard players set scythe:config cmds 2
execute as @s[type=player,tag=op,scores={cmds=1}] run tellraw @a[tag=op] {"rawtext":[{"text":"§r§6[§aScythe§6]§r "},{"selector":"@s"},{"text":" has set CommandBlocksEnabled §4as disabled!"}]}

# allow command block
execute as @s[type=player,tag=op,scores={cmds=2..}] run scoreboard players set scythe:config cmds 0
execute as @s[type=player,tag=op,scores={cmds=2..}] run tellraw @a[tag=op] {"rawtext":[{"text":"§r§6[§aScythe§6]§r "},{"selector":"@s"},{"text":" has §etoggled§r Force-CommandBlocksEnabled!"}]}

scoreboard players operation @a cmds = scythe:config cmds