# Gets all anticheat logs from a player

tellraw @a[tag=notify] {"rawtext":[{"text":"\n§r§6[§aScythe§6]§r Getting all Scythe Logs from: "},{"selector":"@s"}]}
execute as @s[m=c] run tellraw @a[tag=notify] {"rawtext":[{"text":"§r§6[§aScythe§6]§r "},{"selector":"@s"},{"text":" is in Creative Mode"}]}
execute as @s[m=s] run tellraw @a[tag=notify] {"rawtext":[{"text":"§r§6[§aScythe§6]§r "},{"selector":"@s"},{"text":" is in Survival Mode"}]}
execute as @s[m=a] run tellraw @a[tag=notify] {"rawtext":[{"text":"§r§6[§aScythe§6]§r "},{"selector":"@s"},{"text":" is in Adventure Mode"}]}
tellraw @a[tag=notify] {"rawtext":[{"text":"§r§6[§aScythe§6]§r "},{"selector":"@s"},{"text":" is currently at X= "},{"score":{"name":"@s","objective":"xPos"}},{"text":", Y= "},{"score":{"name":"@s","objective":"yPos"}},{"text":", Z= "},{"score":{"name":"@s","objective":"zPos"}}]}

execute as @s[scores={autoclickervl=1..}] run tellraw @a[tag=notify] {"rawtext":[{"text":"§r§6[§aScythe§6]§r "},{"selector":"@s"},{"text":" has "},{"score":{"name":"@s","objective":"autoclickervl"}},{"text":" AutoClicker Violations"}]}
execute as @s[scores={anglevl=1..}] run tellraw @a[tag=notify] {"rawtext":[{"text":"§r§6[§aScythe§6]§r "},{"selector":"@s"},{"text":" has "},{"score":{"name":"@s","objective":"anglevl"}},{"text":" BadPackets[1] Violations"}]}
execute as @s[scores={badpackets2=1..}] run tellraw @a[tag=notify] {"rawtext":[{"text":"§r§6[§aScythe§6]§r "},{"selector":"@s"},{"text":" has "},{"score":{"name":"@s","objective":"badpackets2"}},{"text":" BadPackets[2] Violations"}]}
execute as @s[scores={killauravl=1..}] run tellraw @a[tag=notify] {"rawtext":[{"text":"§r§6[§aScythe§6]§r "},{"selector":"@s"},{"text":" has "},{"score":{"name":"@s","objective":"killauravl"}},{"text":" KillAura Violations"}]}
execute as @s[scores={flyvl=1..}] run tellraw @a[tag=notify] {"rawtext":[{"text":"§r§6[§aScythe§6]§r "},{"selector":"@s"},{"text":" has "},{"score":{"name":"@s","objective":"flyvl"}},{"text":" Fly Violations"}]}
execute as @s[scores={illegalitemsvl=1..}] run tellraw @a[tag=notify] {"rawtext":[{"text":"§r§6[§aScythe§6]§r "},{"selector":"@s"},{"text":" has "},{"score":{"name":"@s","objective":"illegalitemsvl"}},{"text":" Illegal Items Violations"}]}
execute as @s[scores={cbevl=1..}] run tellraw @a[tag=notify] {"rawtext":[{"text":"§r§6[§aScythe§6]§r "},{"selector":"@s"},{"text":" has "},{"score":{"name":"@s","objective":"cbevl"}},{"text":" Command Block Exploit Violations"}]}
execute as @s[scores={gamemodevl=1..}] run tellraw @a[tag=notify] {"rawtext":[{"text":"§r§6[§aScythe§6]§r "},{"selector":"@s"},{"text":" has "},{"score":{"name":"@s","objective":"gamemodevl"}},{"text":" Gamemode Change Violations"}]}
execute as @s[scores={autototemvl=1..}] run tellraw @a[tag=notify] {"rawtext":[{"text":"§r§6[§aScythe§6]§r "},{"selector":"@s"},{"text":" has "},{"score":{"name":"@s","objective":"autototemvl"}},{"text":" AutoTotem Violations"}]}
execute as @s[scores={spammervl=1..}] run tellraw @a[tag=notify] {"rawtext":[{"text":"§r§6[§aScythe§6]§r "},{"selector":"@s"},{"text":" has "},{"score":{"name":"@s","objective":"spammervl"}},{"text":" Spammer Violations"}]}
execute as @s[scores={namespoofvl=1..}] run tellraw @a[tag=notify] {"rawtext":[{"text":"§r§6[§aScythe§6]§r "},{"selector":"@s"},{"text":" has "},{"score":{"name":"@s","objective":"namespoofvl"}},{"text":" NameSpoof Violations"}]}
execute as @s[scores={crashervl=1..}] run tellraw @a[tag=notify] {"rawtext":[{"text":"§r§6[§aScythe§6]§r "},{"selector":"@s"},{"text":" has "},{"score":{"name":"@s","objective":"crashervl"}},{"text":" Crasher Violations"}]}
execute as @s[scores={reachvl=1..}] run tellraw @a[tag=notify] {"rawtext":[{"text":"§r§6[§aScythe§6]§r "},{"selector":"@s"},{"text":" has "},{"score":{"name":"@s","objective":"reachvl"}},{"text":" Reach Violations"}]}
execute as @s[scores={invmovevl=1..}] run tellraw @a[tag=notify] {"rawtext":[{"text":"§r§6[§aScythe§6]§r "},{"selector":"@s"},{"text":" has "},{"score":{"name":"@s","objective":"invmovevl"}},{"text":" InventoryMods Violations"}]}
execute as @s[scores={noslowvl=1..}] run tellraw @a[tag=notify] {"rawtext":[{"text":"§r§6[§aScythe§6]§r "},{"selector":"@s"},{"text":" has "},{"score":{"name":"@s","objective":"noslowvl"}},{"text":" NoSlow Violations"}]}
execute as @s[scores={invalidsprintvl=1..}] run tellraw @a[tag=notify] {"rawtext":[{"text":"§r§6[§aScythe§6]§r "},{"selector":"@s"},{"text":" has "},{"score":{"name":"@s","objective":"invalidsprintvl"}},{"text":" InvalidSprint Violations"}]}
execute as @s[scores={nukervl=1..}] run tellraw @a[tag=notify] {"rawtext":[{"text":"§r§6[§aScythe§6]§r "},{"selector":"@s"},{"text":" has "},{"score":{"name":"@s","objective":"nukervl"}},{"text":" Nuker Violations"}]}
execute as @s[scores={liquidinteractvl=1..}] run tellraw @a[tag=notify] {"rawtext":[{"text":"§r§6[§aScythe§6]§r "},{"selector":"@s"},{"text":" has "},{"score":{"name":"@s","objective":"liquidinteractvl"}},{"text":" Liquid Interact Violations"}]}

execute as @s[tag=freeze] run tellraw @a[tag=notify] {"rawtext":[{"text":"§r§6[§aScythe§6]§r "},{"selector":"@s"},{"text":" is currently frozen by a staff member"}]}
execute as @s[tag=vanish] run tellraw @a[tag=notify] {"rawtext":[{"text":"§r§6[§aScythe§6]§r "},{"selector":"@s"},{"text":" is currently in vanish"}]}
execute as @s[tag=flying] run tellraw @a[tag=notify] {"rawtext":[{"text":"§r§6[§aScythe§6]§r "},{"selector":"@s"},{"text":" has fly mode enabled"}]}

tellraw @a[tag=notify,tag=debug] {"rawtext":[{"text":"§߈§r§6[§aScythe§6]§r "},{"text":" ----- DEBUG STATS -----"}]}

execute as @s[tag=ground] run tellraw @a[tag=notify,tag=debug] {"rawtext":[{"text":"§߈§r§6[§aScythe§6]§r "},{"selector":"@s"},{"text":" onGround: §atrue"}]}
execute as @s[tag=jump] run tellraw @a[tag=notify,tag=debug] {"rawtext":[{"text":"§߈§r§6[§aScythe§6]§r "},{"selector":"@s"},{"text":" isJumping: §atrue"}]}
execute as @s[tag=sneak] run tellraw @a[tag=notify,tag=debug] {"rawtext":[{"text":"§߈§r§6[§aScythe§6]§r "},{"selector":"@s"},{"text":" isSneaking: §atrue"}]}
execute as @s[tag=gliding] run tellraw @a[tag=notify,tag=debug] {"rawtext":[{"text":"§߈§r§6[§aScythe§6]§r "},{"selector":"@s"},{"text":" isGliding: §atrue"}]}
execute as @s[tag=levitating] run tellraw @a[tag=notify,tag=debug] {"rawtext":[{"text":"§߈§r§6[§aScythe§6]§r "},{"selector":"@s"},{"text":" isLevitating: §atrue"}]}
execute as @s[tag=riding] run tellraw @a[tag=notify,tag=debug] {"rawtext":[{"text":"§߈§r§6[§aScythe§6]§r "},{"selector":"@s"},{"text":" isRiding: §atrue"}]}
execute as @s[tag=left] run tellraw @a[tag=notify,tag=debug] {"rawtext":[{"text":"§߈§r§6[§aScythe§6]§r "},{"selector":"@s"},{"text":" isSwinging: §atrue"}]}
execute as @s[tag=right] run tellraw @a[tag=notify,tag=debug] {"rawtext":[{"text":"§߈§r§6[§aScythe§6]§r "},{"selector":"@s"},{"text":" isUsing: §atrue"}]}
execute as @s[tag=moving] run tellraw @a[tag=notify,tag=debug] {"rawtext":[{"text":"§߈§r§6[§aScythe§6]§r "},{"selector":"@s"},{"text":" isMoving: §atrue"}]}
execute as @s[tag=hasGUIopen] run tellraw @a[tag=notify,tag=debug] {"rawtext":[{"text":"§߈§r§6[§aScythe§6]§r "},{"selector":"@s"},{"text":" hasGUIopen: §atrue"}]}
execute as @s[tag=sprint] run tellraw @a[tag=notify,tag=debug] {"rawtext":[{"text":"§߈§r§6[§aScythe§6]§r "},{"selector":"@s"},{"text":" isSprinting: §atrue"}]}