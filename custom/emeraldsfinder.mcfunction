
execute @a ~ ~ ~ scoreboard players tag @e[r=25,type=pixelmon:npc_trainer,tag=Emeralds] remove Emeralds

scoreboard players tag @e[type=pixelmon:npc_trainer,tag=!Emeralds] add Emeralds {WinningsTag:{item0:{id:"minecraft:emerald"}}}
scoreboard players tag @e[type=pixelmon:npc_trainer,tag=!Emeralds] add Emeralds {WinningsTag:{item1:{id:"minecraft:emerald"}}}
scoreboard players tag @e[type=pixelmon:npc_trainer,tag=!Emeralds] add Emeralds {WinningsTag:{item2:{id:"minecraft:emerald"}}}
scoreboard players tag @e[type=pixelmon:npc_trainer,tag=!Emeralds] add Emeralds {WinningsTag:{item3:{id:"minecraft:emerald"}}}
scoreboard players tag @e[type=pixelmon:npc_trainer,tag=!Emeralds] add Emeralds {WinningsTag:{item4:{id:"minecraft:emerald"}}}
scoreboard players tag @e[type=pixelmon:npc_trainer,tag=!Emeralds] add Emeralds {WinningsTag:{item5:{id:"minecraft:emerald"}}}
scoreboard players tag @e[type=pixelmon:npc_trainer,tag=!Emeralds] add Emeralds {WinningsTag:{item6:{id:"minecraft:emerald"}}}
scoreboard players tag @e[type=pixelmon:npc_trainer,tag=!Emeralds] add Emeralds {WinningsTag:{item7:{id:"minecraft:emerald"}}}
scoreboard players tag @e[type=pixelmon:npc_trainer,tag=!Emeralds] add Emeralds {WinningsTag:{item8:{id:"minecraft:emerald"}}}
scoreboard players tag @e[type=pixelmon:npc_trainer,tag=!Emeralds] add Emeralds {WinningsTag:{item9:{id:"minecraft:emerald"}}}

scoreboard players tag @e[type=pixelmon:npc_trainer,tag=!Emeralds] add Emeralds {WinningsTag:{item0:{id:"minecraft:emerald_block"}}}
scoreboard players tag @e[type=pixelmon:npc_trainer,tag=!Emeralds] add Emeralds {WinningsTag:{item1:{id:"minecraft:emerald_block"}}}
scoreboard players tag @e[type=pixelmon:npc_trainer,tag=!Emeralds] add Emeralds {WinningsTag:{item2:{id:"minecraft:emerald_block"}}}
scoreboard players tag @e[type=pixelmon:npc_trainer,tag=!Emeralds] add Emeralds {WinningsTag:{item3:{id:"minecraft:emerald_block"}}}
scoreboard players tag @e[type=pixelmon:npc_trainer,tag=!Emeralds] add Emeralds {WinningsTag:{item4:{id:"minecraft:emerald_block"}}}
scoreboard players tag @e[type=pixelmon:npc_trainer,tag=!Emeralds] add Emeralds {WinningsTag:{item5:{id:"minecraft:emerald_block"}}}
scoreboard players tag @e[type=pixelmon:npc_trainer,tag=!Emeralds] add Emeralds {WinningsTag:{item6:{id:"minecraft:emerald_block"}}}
scoreboard players tag @e[type=pixelmon:npc_trainer,tag=!Emeralds] add Emeralds {WinningsTag:{item7:{id:"minecraft:emerald_block"}}}
scoreboard players tag @e[type=pixelmon:npc_trainer,tag=!Emeralds] add Emeralds {WinningsTag:{item8:{id:"minecraft:emerald_block"}}}
scoreboard players tag @e[type=pixelmon:npc_trainer,tag=!Emeralds] add Emeralds {WinningsTag:{item9:{id:"minecraft:emerald_block"}}}

execute @e[tag=Emeralds,type=pixelmon:npc_trainer] ~ ~ ~ particle endRod ~ ~15 ~ 0 5 0 0.001 10 force @a
