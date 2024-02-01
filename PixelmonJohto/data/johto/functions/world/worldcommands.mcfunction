#---------------------
#Used to tag trainers that I'll need to replace in 1.16.5
#tag @e[tag=!1.12.2Trainer,type=pixelmon:npc_trainer] add 1.12.2Trainer
#execute at @e[tag=1.12.2Trainer,type=pixelmon:npc_trainer] run particle minecraft:end_rod ~ ~5 ~ 0 10 0 0.001 10 force @a

#temp to tp corrputed trainer into void
#tp @e[x=-172.50,y=64.00,z=598.50,type=pixelmon:npc_trainer,distance=..4] ~ ~-1000 ~

#---------------------
#Runs infolist command for non-ops
scoreboard players enable @a Info
scoreboard players enable @a info
execute as @a[scores={Info=1..}] run function tools:infolist
execute as @a[scores={info=1..}] run function tools:infolist


#---------------------
#Despawns items that may be broken and pop up elsewhere in the map
execute at @a run tag @e[distance=..10,type=item,nbt={Item:{id:"minecraft:stone_bricks"}}] add Despawn
execute at @a run tag @e[distance=..10,type=item,nbt={Item:{id:"pixelmon:tree"}}] add Despawn
execute at @a run tag @e[distance=..10,type=item,nbt={Item:{id:"minecraft:oak_sapling"}}] add Despawn
execute at @a run tag @e[distance=..10,type=item,nbt={Item:{id:"minecraft:spruce_sapling"}}] add Despawn

execute at @a as @e[distance=..10,type=item,nbt={Item:{id:"pixelmon:tree"}}] run playsound minecraft:cut ambient @a[distance=..5] ~ ~ ~ 1 1 1

execute at @a run execute as @e[tag=Despawn,distance=..10] run data merge entity @s {Lifespan:0,Age:0s}

#---------------------
#Time-based commands

#Runs daily commands, sets time to armor stand based on game time
execute store result score @e[x=-799,y=64,z=-284,dy=3,type=armor_stand] DayTime run time query daytime
execute if entity @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={DayTime=18000..},tag=!DailyExecuted] run function johto:triggers/dailycommands
execute if entity @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={DayTime=18000..},tag=!DailyExecuted] run tag @e[x=-799,y=64,z=-284,dy=3,type=armor_stand] add DailyExecuted
tag @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={DayTime=..1000},tag=DailyExecuted] remove DailyExecuted

#Gym Leader Rematches
execute as @p[x=-2781,y=64,z=421,distance=..100,tag=AllGyms] run function johto:world/gymrematches/trainers
execute as @p[x=-2781,y=64,z=421,distance=..100,tag=!AllGyms] run function johto:world/gymrematches/leave

#---------------------

#Runs the basic starting function on trainers at spawn without the InitialTags function
execute as @a[x=-780,y=64,z=-245,distance=..20,tag=!InitialTags] run function johto:triggers/startercommands

#Runs TriggerCommand Function
execute as @a[scores={TriggerCommand=1..}] run function johto:triggers/triggercommands

#Hall of Fame Function
execute as @a[x=-1300,y=77,z=751,dx=24,dy=10,dz=34,tag=Dialogue97,scores={TalkTime=0}] run function johto:world/halloffame/halloffame

#Removes Cooldown score if present
scoreboard players remove @a[scores={Cooldown=1..}] Cooldown 1

#Adds Sprint cooldown to Walk-based Cooldown score.
scoreboard players operation @a CooldownWalk += @a[scores={CooldownSprint=1..}] CooldownSprint
scoreboard players set @a[scores={CooldownSprint=1..}] CooldownSprint 0

#Runs relog function if player is found with relog score
execute as @a[scores={relog=1..}] run function johto:triggers/relog

#If player selects a hat, puts hat back on
execute as @a[nbt={SelectedItem:{id:"minecraft:iron_hoe",tag:{display:{Lore:['[{"text":"A hat given to you from","italic":false}]','[{"text":"your mother!","italic":false}]']}}}}] run function johto:triggers/hatstore

#Removes a TownDisplay cooldown score if present
scoreboard players remove @a[scores={TownDisplay=1..}] TownDisplay 1

#---------------------

#Battle Tower Win events
tag @a[x=875,y=99,z=50,dx=55,dy=20,dz=27,tag=Dialogue206,nbt={Inventory:[{id:"minecraft:nether_brick"}]}] remove Dialogue206
scoreboard players set @a[x=875,y=99,z=50,dx=55,dy=20,dz=27,nbt={Inventory:[{id:"minecraft:nether_brick"}]}] DialogueTrigger 206

#Detects button forefit
execute if block 889 101 77 stone_button[powered=true] if entity @e[x=875,y=99,z=50,dx=55,dy=20,dz=27] run scoreboard players set @a[x=875,y=99,z=50,dx=55,dy=20,dz=27] TriggerCommand 8

#Battle Tower Desk Prompts
#Desk 1
execute as @a[x=907,y=64,z=72,dx=4,dy=2,dz=3,scores={Cooldown=0}] run scoreboard players enable @s TriggerCommand
execute as @a[x=907,y=64,z=72,dx=4,dy=2,dz=3,scores={Cooldown=0}] run function johto:world/battletower/pointbal
execute as @a[x=907,y=64,z=72,dx=4,dy=2,dz=3,scores={Cooldown=0}] run tellraw @a[x=907,y=64,z=72,dx=4,dy=2,dz=3] ["",{"text":"<Clerk> Welcome to the Battle Tower! Would you like to begin your battle challenge?\n"},{"text":"[","color":"green"},{"text":"Yes","color":"green","clickEvent":{"action":"run_command","value":"/trigger TriggerCommand set 9"}},{"text":"]","color":"green"}]
execute as @a[x=907,y=64,z=72,dx=4,dy=2,dz=3,scores={Cooldown=0}] run scoreboard players set @s Cooldown 60

#Desk 2
execute as @a[x=894,y=64,z=72,dx=4,dy=2,dz=3,scores={Cooldown=0}] run scoreboard players enable @s TriggerCommand
execute as @a[x=894,y=64,z=72,dx=4,dy=2,dz=3,scores={Cooldown=0}] run function johto:world/battletower/pointbal
execute as @a[x=894,y=64,z=72,dx=4,dy=2,dz=3,scores={Cooldown=0}] run tellraw @s ["",{"text":"<Clerk> Welcome to the Battle Tower! Would you like to begin your battle challenge?\n"},{"text":"[","color":"green"},{"text":"Yes","color":"green","clickEvent":{"action":"run_command","value":"/trigger TriggerCommand set 9"}},{"text":"]","color":"green"}]
execute as @a[x=894,y=64,z=72,dx=4,dy=2,dz=3,scores={Cooldown=0}] run scoreboard players set @s Cooldown 60

#---------------------

#Lake of Rage Fisherman Karp function
#Removes Cooldown tag when player walks in front of the house
tag @a[x=-188,y=63,z=554,dx=14,dy=6,dz=11,tag=FishermanTalk] remove FishermanTalk
tag @a[x=-188,y=63,z=554,dx=14,dy=6,dz=11,tag=FishermanTalk2] remove FishermanTalk2
execute if entity @a[x=-197,y=63,z=568,dx=18,dy=5,dz=8,scores={KarpCD=0},tag=!FishermanTalk] run tellraw @a[x=-197,y=63,z=568,dx=18,dy=5,dz=8,scores={KarpCD=0},tag=!FishermanTalk] {"text":"<Fishing Guru> Do you have a Karp for me?"}
execute if entity @a[x=-197,y=63,z=568,dx=18,dy=5,dz=8,scores={KarpCD=0},tag=!FishermanTalk] run tag @a[x=-197,y=63,z=568,dx=18,dy=5,dz=8,scores={KarpCD=0},tag=!FishermanTalk] add FishermanTalk

execute if entity @a[x=-197,y=63,z=568,dx=18,dy=5,dz=8,scores={KarpCD=1..},tag=!FishermanTalk2] run tellraw @a[x=-197,y=63,z=568,dx=18,dy=5,dz=8,scores={KarpCD=1..},tag=!FishermanTalk2] {"text":"<Fishing Guru> You'll have to show me another Karp some other time!"}
execute if entity @a[x=-197,y=63,z=568,dx=18,dy=5,dz=8,scores={KarpCD=1..},tag=!FishermanTalk2] run tag @a[x=-197,y=63,z=568,dx=18,dy=5,dz=8,scores={KarpCD=1..},tag=!FishermanTalk2] add FishermanTalk2

execute if entity @e[x=-197,y=63,z=568,dx=18,dy=5,dz=8,type=pixelmon:pixelmon,nbt={ndex:129}] run execute as @a[x=-197,y=63,z=568,dx=18,dy=5,dz=8,scores={KarpCD=0}] run function johto:triggers/karp


#Runs Ruins of Alph puzzle if player is in the ruins
execute if entity @e[x=-867,y=69,z=-214,dy=3,dz=4,tag=!UnownSpawning,limit=1] if entity @a[x=174,y=36,z=-163,dx=42,dy=22,dz=85] run function johto:world/ruinspuzzle

#Runs Pre-Victory Road badge lights
execute as @a[x=-1262,y=63,z=57,dx=7,dy=5,dz=73] run function johto:world/badgegate


#Saffron Gym portals
execute as @a[x=-1222,y=0,z=500,dx=470,dy=240,dz=342] run function johto:world/saffrongym

#Tin Tower portals
execute as @a[x=240,y=63,z=297,dx=33,dy=240,dz=33] run function johto:world/tintower

#MusicTitles function, tracks player around map checking for new areas or music
execute as @a[scores={TalkTime=0}] run function johto:world/musictitles

#Runs an ItemFinder function if player is holding the device, fills the XP bar based on distance to nearest hidden loot
xp set @a[level=1..] 0 levels
xp set @a[level=1..] 0 points

execute as @a[nbt={SelectedItem:{id:"pixelmon:item_finder"}}] run function johto:world/itemfinder
execute as @a[nbt={Inventory:[{Slot:-106b,id:"pixelmon:item_finder"}]}] run function johto:world/itemfinder

#Runs Goldenrod Department Center Elevator
execute if entity @a[x=438,y=63,z=-395,dx=3,dy=34,dz=3] run function johto:world/departmentelevator

#Executes shiny particles over Shiny Pokemon
execute as @e[type=pixelmon:pixelmon,nbt={palette:"shiny",Tame:0b}] at @s run particle minecraft:dust 1 1 1 1 ~ ~1 ~ 0 10 0 0.5 50 force @a


#---------------------
#Ambient World Particles
#Cianwood Wind
execute at @a[x=1152,y=63,z=-525,dx=168,dy=10,dz=244] run particle minecraft:sweep_attack ~ ~50 ~ 100 25 100 1 10 force

#Olivine Wind
execute at @a[x=639,y=63,z=-239,dx=197,dy=10,dz=279] run particle minecraft:sweep_attack ~ ~50 ~ 100 25 100 1 10 force

#R40 & 41
execute at @a[x=870,y=63,z=-280,dx=281,dy=10,dz=182] run particle minecraft:sweep_attack ~ ~50 ~ 100 25 100 1 10 force
execute at @a[x=837,y=63,z=-97,dx=147,dy=10,dz=81] run particle minecraft:sweep_attack ~ ~50 ~ 100 25 100 1 10 force
execute at @a[x=870,y=63,z=-480,dx=281,dy=10,dz=199] run particle minecraft:sweep_attack ~ ~50 ~ 100 25 100 1 10 force

#---------------------
#Should any Apricorns get stuck on the top of a tree
#TEST
execute at @a as @e[distance=..15,type=item,nbt={Item:{id:"pixelmon:white_apricorn",Count:1b}}] if block ~ ~-1 ~ pixelmon:apricorn_leaves_white run tp @s ~ ~ ~-1
execute at @a as @e[distance=..15,type=item,nbt={Item:{id:"pixelmon:green_apricorn",Count:1b}}] if block ~ ~-1 ~ pixelmon:apricorn_leaves_green run tp @s ~ ~ ~-1
execute at @a as @e[distance=..15,type=item,nbt={Item:{id:"pixelmon:black_apricorn",Count:1b}}] if block ~ ~-1 ~ pixelmon:apricorn_leaves_black run tp @s ~ ~ ~-1
execute at @a as @e[distance=..15,type=item,nbt={Item:{id:"pixelmon:red_apricorn",Count:1b}}] if block ~ ~-1 ~ pixelmon:apricorn_leaves_red run tp @s ~ ~ ~-1
execute at @a as @e[distance=..15,type=item,nbt={Item:{id:"pixelmon:pink_apricorn",Count:1b}}] if block ~ ~-1 ~ pixelmon:apricorn_leaves_pink run tp @s ~ ~ ~-1
execute at @a as @e[distance=..15,type=item,nbt={Item:{id:"pixelmon:blueapricorn",Count:1b}}] if block ~ ~-1 ~ pixelmon:apricorn_leaves_blue run tp @s ~ ~ ~-1
execute at @a as @e[distance=..15,type=item,nbt={Item:{id:"pixelmon:yellow_apricorn",Count:1b}}] if block ~ ~-1 ~ pixelmon:apricorn_leaves_yellow run tp @s ~ ~ ~-1



#---------------------
#GameRules in lobby

#Boss levels if enabled
#No modified levels
execute at @a[scores={Boss=0}] run execute as @e[distance=..20,type=pixelmon:npc_trainer] run data merge entity @s {BossTier: "notboss"}

#Equal levels
execute at @a[scores={Boss=1}] run execute as @e[distance=..20,type=pixelmon:npc_trainer] run data merge entity @s {BossTier: "equal"}

#Common (+5)
execute at @a[scores={Boss=2}] run execute as @e[distance=..20,type=pixelmon:npc_trainer] run data merge entity @s {BossTier: "common"}

#Uncommon (+10)
execute at @a[scores={Boss=3}] run execute as @e[distance=..20,type=pixelmon:npc_trainer] run data merge entity @s {BossTier: "uncommon"}

#rare (+20)
execute at @a[scores={Boss=4}] run execute as @e[distance=..20,type=pixelmon:npc_trainer] run data merge entity @s {BossTier: "rare"}


#Slow time
#tag @e[x=-803,y=64,z=-284,dy=3,type=minecraft:armor_stand] add SlowTime
execute as @e[x=-803,y=64,z=-284,dy=3,type=minecraft:armor_stand,tag=SlowTime] run time add 5t



#---------------------
#Runs Game Corner slot machines if buttons pressed
execute if block 516 66 -377 stone_button[powered=true] if entity @e[x=507,y=59,z=-370,dy=3,scores={rng=0}] run execute as @p[x=518,y=64,z=-377,distance=..2] run function johto:triggers/gamecorner
execute if block 516 66 -381 stone_button[powered=true] if entity @e[x=505,y=59,z=-370,dy=3,scores={rng=0}] run execute as @p[x=518,y=64,z=-381,distance=..2] run function johto:triggers/gamecorner
execute if block 513 66 -377 stone_button[powered=true] if entity @e[x=503,y=59,z=-370,dy=3,scores={rng=0}] run execute as @p[x=511,y=64,z=-377,distance=..2] run function johto:triggers/gamecorner
execute if block 513 66 -381 stone_button[powered=true] if entity @e[x=501,y=59,z=-370,dy=3,scores={rng=0}] run execute as @p[x=511,y=64,z=-381,distance=..2] run function johto:triggers/gamecorner
execute if block 507 66 -377 stone_button[powered=true] if entity @e[x=499,y=59,z=-370,dy=3,scores={rng=0}] run execute as @p[x=509,y=64,z=-377,distance=..2] run function johto:triggers/gamecorner
execute if block 507 66 -381 stone_button[powered=true] if entity @e[x=497,y=59,z=-370,dy=3,scores={rng=0}] run execute as @p[x=509,y=64,z=-381,distance=..2] run function johto:triggers/gamecorner
execute if block 504 66 -377 stone_button[powered=true] if entity @e[x=495,y=59,z=-370,dy=3,scores={rng=0}] run execute as @p[x=502,y=64,z=-377,distance=..2] run function johto:triggers/gamecorner
execute if block 504 66 -381 stone_button[powered=true] if entity @e[x=493,y=59,z=-370,dy=3,scores={rng=0}] run execute as @p[x=502,y=64,z=-381,distance=..2] run function johto:triggers/gamecorner
execute if block 498 66 -377 stone_button[powered=true] if entity @e[x=491,y=59,z=-370,dy=3,scores={rng=0}] run execute as @p[x=500,y=64,z=-377,distance=..2] run function johto:triggers/gamecorner
execute if block 498 66 -381 stone_button[powered=true] if entity @e[x=489,y=59,z=-370,dy=3,scores={rng=0}] run execute as @p[x=500,y=64,z=-381,distance=..2] run function johto:triggers/gamecorner
execute if block 495 66 -377 stone_button[powered=true] if entity @e[x=487,y=59,z=-370,dy=3,scores={rng=0}] run execute as @p[x=493,y=64,z=-377,distance=..2] run function johto:triggers/gamecorner
execute if block 495 66 -381 stone_button[powered=true] if entity @e[x=485,y=59,z=-370,dy=3,scores={rng=0}] run execute as @p[x=493,y=64,z=-381,distance=..2] run function johto:triggers/gamecorner

#NPC Counter Prompt
tellraw @a[x=490,y=64,z=-373,distance=..4,scores={TalkTime=0,Cooldown=0,Coins=1..},nbt={Inventory:[{id:"pixelmon:coin_case"}]}] ["",{"text":"Would you like to exchange your coins for prizes?\n["},{"text":"Yes","color":"green","clickEvent":{"action":"run_command","value":"/trigger TriggerCommand set 95"}},{"text":"]"}]
scoreboard players enable @a[x=490,y=64,z=-373,distance=..4,scores={TalkTime=0,Cooldown=0},nbt={Inventory:[{id:"pixelmon:coin_case"}]}] TriggerCommand
scoreboard players set @a[x=490,y=64,z=-373,distance=..4,scores={TalkTime=0,Cooldown=0},nbt={Inventory:[{id:"pixelmon:coin_case"}]}] Cooldown 80

#Gives the player Coins in exchange for Emeralds bought

execute as @a[x=489,y=64,z=-389,dx=31,dy=10,dz=19,nbt={Inventory:[{id:"minecraft:emerald",Count:64b},{id:"pixelmon:coin_case"}]}] run scoreboard players add @s Coins 64
execute as @a[x=489,y=64,z=-389,dx=31,dy=10,dz=19,nbt={Inventory:[{id:"minecraft:emerald",Count:64b},{id:"pixelmon:coin_case"}]},scores={Cooldown=0}] run tellraw @s {"text":"You stored coins in your Coin Case","italic":true,"color":"gray"}
execute as @a[x=489,y=64,z=-389,dx=31,dy=10,dz=19,nbt={Inventory:[{id:"minecraft:emerald",Count:64b},{id:"pixelmon:coin_case"}]},scores={Cooldown=0}] run scoreboard players add @s Cooldown 10
execute as @a[x=489,y=64,z=-389,dx=31,dy=10,dz=19,nbt={Inventory:[{id:"minecraft:emerald",Count:64b},{id:"pixelmon:coin_case"}]}] run clear @s minecraft:emerald 64

execute as @a[x=489,y=64,z=-389,dx=31,dy=10,dz=19,nbt={Inventory:[{id:"minecraft:emerald",Count:32b},{id:"pixelmon:coin_case"}]}] run scoreboard players add @s Coins 32
execute as @a[x=489,y=64,z=-389,dx=31,dy=10,dz=19,nbt={Inventory:[{id:"minecraft:emerald",Count:32b},{id:"pixelmon:coin_case"}]},scores={Cooldown=0}] run tellraw @s {"text":"You stored coins in your Coin Case","italic":true,"color":"gray"}
execute as @a[x=489,y=64,z=-389,dx=31,dy=10,dz=19,nbt={Inventory:[{id:"minecraft:emerald",Count:32b},{id:"pixelmon:coin_case"}]},scores={Cooldown=0}] run scoreboard players add @s Cooldown 10
execute as @a[x=489,y=64,z=-389,dx=31,dy=10,dz=19,nbt={Inventory:[{id:"minecraft:emerald",Count:32b},{id:"pixelmon:coin_case"}]}] run clear @s minecraft:emerald 32

execute as @a[x=489,y=64,z=-389,dx=31,dy=10,dz=19,nbt={Inventory:[{id:"minecraft:emerald",Count:16b},{id:"pixelmon:coin_case"}]}] run scoreboard players add @s Coins 16
execute as @a[x=489,y=64,z=-389,dx=31,dy=10,dz=19,nbt={Inventory:[{id:"minecraft:emerald",Count:16b},{id:"pixelmon:coin_case"}]},scores={Cooldown=0}] run tellraw @s {"text":"You stored coins in your Coin Case","italic":true,"color":"gray"}
execute as @a[x=489,y=64,z=-389,dx=31,dy=10,dz=19,nbt={Inventory:[{id:"minecraft:emerald",Count:16b},{id:"pixelmon:coin_case"}]},scores={Cooldown=0}] run scoreboard players add @s Cooldown 10
execute as @a[x=489,y=64,z=-389,dx=31,dy=10,dz=19,nbt={Inventory:[{id:"minecraft:emerald",Count:16b},{id:"pixelmon:coin_case"}]}] run clear @s minecraft:emerald 16

execute as @a[x=489,y=64,z=-389,dx=31,dy=10,dz=19,nbt={Inventory:[{id:"minecraft:emerald",Count:5b},{id:"pixelmon:coin_case"}]}] run scoreboard players add @s Coins 5
execute as @a[x=489,y=64,z=-389,dx=31,dy=10,dz=19,nbt={Inventory:[{id:"minecraft:emerald",Count:5b},{id:"pixelmon:coin_case"}]},scores={Cooldown=0}] run tellraw @s {"text":"You stored coins in your Coin Case","italic":true,"color":"gray"}
execute as @a[x=489,y=64,z=-389,dx=31,dy=10,dz=19,nbt={Inventory:[{id:"minecraft:emerald",Count:5b},{id:"pixelmon:coin_case"}]},scores={Cooldown=0}] run scoreboard players add @s Cooldown 10
execute as @a[x=489,y=64,z=-389,dx=31,dy=10,dz=19,nbt={Inventory:[{id:"minecraft:emerald",Count:5b},{id:"pixelmon:coin_case"}]}] run clear @s minecraft:emerald 5

execute as @a[x=489,y=64,z=-389,dx=31,dy=10,dz=19,nbt={Inventory:[{id:"minecraft:emerald"},{id:"pixelmon:coin_case"}]}] run scoreboard players add @s Coins 1
execute as @a[x=489,y=64,z=-389,dx=31,dy=10,dz=19,nbt={Inventory:[{id:"minecraft:emerald"},{id:"pixelmon:coin_case"}]},scores={Cooldown=0}] run tellraw @s {"text":"You stored coins in your Coin Case","italic":true,"color":"gray"}
execute as @a[x=489,y=64,z=-389,dx=31,dy=10,dz=19,nbt={Inventory:[{id:"minecraft:emerald"},{id:"pixelmon:coin_case"}]},scores={Cooldown=0}] run scoreboard players add @s Cooldown 10
execute as @a[x=489,y=64,z=-389,dx=31,dy=10,dz=19,nbt={Inventory:[{id:"minecraft:emerald"},{id:"pixelmon:coin_case"}]}] run clear @s minecraft:emerald 1

#When player looks at a coin case, shows their balance
execute as @a[nbt={SelectedItem:{id:"pixelmon:coin_case"}}] run function johto:triggers/gamecorner/coinbal

#---------------------
#Bug Catching Contest Commands

#Bug Catching Contest signs
execute if entity @a[x=467,y=63,z=60,dx=18,dy=5,dz=8] if entity @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=1}] run data merge block 476 66 68 {x:476,Text4:"{\"text\":\"CLOSED\"}",y:66,Text3:"{\"text\":\"Monday\"}",z:68,Text2:"{\"text\":\"\"}",id:"minecraft:sign",Text1:"{\"text\":\"Weekday:\"}"}
execute if entity @a[x=467,y=63,z=60,dx=18,dy=5,dz=8] if entity @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=2}] run data merge block 476 66 68 {x:476,Text4:"{\"text\":\"OPEN\"}",y:66,Text3:"{\"text\":\"Tuesday\"}",z:68,Text2:"{\"text\":\"\"}",id:"minecraft:sign",Text1:"{\"text\":\"Weekday:\"}"}
execute if entity @a[x=467,y=63,z=60,dx=18,dy=5,dz=8] if entity @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=3}] run data merge block 476 66 68 {x:476,Text4:"{\"text\":\"CLOSED\"}",y:66,Text3:"{\"text\":\"Wednesday\"}",z:68,Text2:"{\"text\":\"\"}",id:"minecraft:sign",Text1:"{\"text\":\"Weekday:\"}"}
execute if entity @a[x=467,y=63,z=60,dx=18,dy=5,dz=8] if entity @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=4}] run data merge block 476 66 68 {x:476,Text4:"{\"text\":\"OPEN\"}",y:66,Text3:"{\"text\":\"Thursday\"}",z:68,Text2:"{\"text\":\"\"}",id:"minecraft:sign",Text1:"{\"text\":\"Weekday:\"}"}
execute if entity @a[x=467,y=63,z=60,dx=18,dy=5,dz=8] if entity @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=5}] run data merge block 476 66 68 {x:476,Text4:"{\"text\":\"CLOSED\"}",y:66,Text3:"{\"text\":\"Friday\"}",z:68,Text2:"{\"text\":\"\"}",id:"minecraft:sign",Text1:"{\"text\":\"Weekday:\"}"}
execute if entity @a[x=467,y=63,z=60,dx=18,dy=5,dz=8] if entity @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=6}] run data merge block 476 66 68 {x:476,Text4:"{\"text\":\"OPEN\"}",y:66,Text3:"{\"text\":\"Saturday\"}",z:68,Text2:"{\"text\":\"\"}",id:"minecraft:sign",Text1:"{\"text\":\"Weekday:\"}"}
execute if entity @a[x=467,y=63,z=60,dx=18,dy=5,dz=8] if entity @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=7}] run data merge block 476 66 68 {x:476,Text4:"{\"text\":\"CLOSED\"}",y:66,Text3:"{\"text\":\"Sunday\"}",z:68,Text2:"{\"text\":\"\"}",id:"minecraft:sign",Text1:"{\"text\":\"Weekday:\"}"}

#Runs the Contest function
execute as @a[x=467,y=63,z=60,dx=18,dy=5,dz=8,scores={TalkTime=0},tag=Dialogue198,tag=!Dialogue199] if entity @e[x=467,y=63,z=60,dx=18,dy=5,dz=8,type=pixelmon:pixelmon] run function johto:world/bugcontest/bugcontest

#Prompts the player to start the Bug Contest (Tuesday)
execute as @a[x=478,y=64,z=65,distance=..3,scores={TalkTime=0,BugContest=0,Cooldown=0}] if entity @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={BugContest=0,WeekdayTrack=2}] run tellraw @s {"text":"<Park Worker> Begin your Bug Catching Contest?"}
execute as @a[x=478,y=64,z=65,distance=..3,scores={TalkTime=0,BugContest=0,Cooldown=0}] if entity @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={BugContest=0,WeekdayTrack=2}] run scoreboard players enable @s TriggerCommand
execute as @a[x=478,y=64,z=65,distance=..3,scores={TalkTime=0,BugContest=0,Cooldown=0}] if entity @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={BugContest=0,WeekdayTrack=2}] run tellraw @s ["",{"text":"[","color":"green"},{"text":"Yes","color":"green","clickEvent":{"action":"run_command","value":"/trigger TriggerCommand set 28"}},{"text":"]","color":"green"}]
execute as @a[x=478,y=64,z=65,distance=..3,scores={TalkTime=0,BugContest=0,Cooldown=0}] if entity @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={BugContest=0,WeekdayTrack=2}] run scoreboard players set @s Cooldown 120

#Prompts the player to start the Bug Contest (Thursday)
execute as @a[x=478,y=64,z=65,distance=..3,scores={TalkTime=0,BugContest=0,Cooldown=0}] if entity @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={BugContest=0,WeekdayTrack=4}] run tellraw @s {"text":"<Park Worker> Begin your Bug Catching Contest?"}
execute as @a[x=478,y=64,z=65,distance=..3,scores={TalkTime=0,BugContest=0,Cooldown=0}] if entity @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={BugContest=0,WeekdayTrack=4}] run scoreboard players enable @s TriggerCommand
execute as @a[x=478,y=64,z=65,distance=..3,scores={TalkTime=0,BugContest=0,Cooldown=0}] if entity @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={BugContest=0,WeekdayTrack=4}] run tellraw @s ["",{"text":"[","color":"green"},{"text":"Yes","color":"green","clickEvent":{"action":"run_command","value":"/trigger TriggerCommand set 28"}},{"text":"]","color":"green"}]
execute as @a[x=478,y=64,z=65,distance=..3,scores={TalkTime=0,BugContest=0,Cooldown=0}] if entity @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={BugContest=0,WeekdayTrack=4}] run scoreboard players set @s Cooldown 120

#Prompts the player to start the Bug Contest (Saturday)
execute as @a[x=478,y=64,z=65,distance=..3,scores={TalkTime=0,BugContest=0,Cooldown=0}] if entity @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={BugContest=0,WeekdayTrack=6}] run tellraw @s {"text":"<Park Worker> Begin your Bug Catching Contest?"}
execute as @a[x=478,y=64,z=65,distance=..3,scores={TalkTime=0,BugContest=0,Cooldown=0}] if entity @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={BugContest=0,WeekdayTrack=6}] run scoreboard players enable @s TriggerCommand
execute as @a[x=478,y=64,z=65,distance=..3,scores={TalkTime=0,BugContest=0,Cooldown=0}] if entity @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={BugContest=0,WeekdayTrack=6}] run tellraw @s ["",{"text":"[","color":"green"},{"text":"Yes","color":"green","clickEvent":{"action":"run_command","value":"/trigger TriggerCommand set 28"}},{"text":"]","color":"green"}]
execute as @a[x=478,y=64,z=65,distance=..3,scores={TalkTime=0,BugContest=0,Cooldown=0}] if entity @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={BugContest=0,WeekdayTrack=6}] run scoreboard players set @s Cooldown 120


#If contest is active, only allow one player at a time (boss bar, easier judging)
execute as @a[x=478,y=64,z=65,distance=..3,scores={TalkTime=0,BugContest=0,Cooldown=0}] if entity @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={BugContest=1,WeekdayTrack=2}] run tellraw @s {"text":"<Park Worker> We currently have an active Bug Catching Contest. Please try again when the player is finished!"}
execute as @a[x=478,y=64,z=65,distance=..3,scores={TalkTime=0,BugContest=0,Cooldown=0}] if entity @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={BugContest=1,WeekdayTrack=2}] run scoreboard players set @s Cooldown 120

execute as @a[x=478,y=64,z=65,distance=..3,scores={TalkTime=0,BugContest=0,Cooldown=0}] if entity @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={BugContest=1,WeekdayTrack=4}] run tellraw @s {"text":"<Park Worker> We currently have an active Bug Catching Contest. Please try again when the player is finished!"}
execute as @a[x=478,y=64,z=65,distance=..3,scores={TalkTime=0,BugContest=0,Cooldown=0}] if entity @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={BugContest=1,WeekdayTrack=4}] run scoreboard players set @s Cooldown 120

execute as @a[x=478,y=64,z=65,distance=..3,scores={TalkTime=0,BugContest=0,Cooldown=0}] if entity @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={BugContest=1,WeekdayTrack=6}] run tellraw @s {"text":"<Park Worker> We currently have an active Bug Catching Contest. Please try again when the player is finished!"}
execute as @a[x=478,y=64,z=65,distance=..3,scores={TalkTime=0,BugContest=0,Cooldown=0}] if entity @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={BugContest=1,WeekdayTrack=6}] run scoreboard players set @s Cooldown 120


#Skip to Judging Prompt if mid-contest
execute as @a[x=478,y=64,z=65,distance=..3,scores={DialogueTrigger=198,TalkTime=25..,Cooldown=0}] run tellraw @s {"text":"<Park Worker> Would you like to begin judging?"}
execute as @a[x=478,y=64,z=65,distance=..3,scores={DialogueTrigger=198,TalkTime=25..,Cooldown=0}] run scoreboard players enable @s TriggerCommand
execute as @a[x=478,y=64,z=65,distance=..3,scores={DialogueTrigger=198,TalkTime=25..,Cooldown=0}] run tellraw @s ["",{"text":"[","color":"green"},{"text":"Yes","color":"green","clickEvent":{"action":"run_command","value":"/trigger TriggerCommand set 32"}},{"text":"]","color":"green"}]
execute as @a[x=478,y=64,z=65,distance=..3,scores={DialogueTrigger=198,TalkTime=25..,Cooldown=0}] run scoreboard players set @s Cooldown 120

#Skip Judging all together
execute as @a[x=478,y=64,z=65,distance=..3,scores={BugContest=1..,Cooldown=0},tag=Dialogue198,tag=!Dialouge199] run tellraw @s {"text":"<Park Worker> Would you like to cancel your session without judging?"}
execute as @a[x=478,y=64,z=65,distance=..3,scores={BugContest=1..,Cooldown=0},tag=Dialogue198,tag=!Dialouge199] run scoreboard players enable @s TriggerCommand
execute as @a[x=478,y=64,z=65,distance=..3,scores={BugContest=1..,Cooldown=0},tag=Dialogue198,tag=!Dialouge199] run tellraw @s ["",{"text":"[","color":"green"},{"text":"Yes","color":"green","clickEvent":{"action":"run_command","value":"/trigger TriggerCommand set 33"}},{"text":"]","color":"green"}]
execute as @a[x=478,y=64,z=65,distance=..3,scores={BugContest=1..,Cooldown=0},tag=Dialogue198,tag=!Dialouge199] run scoreboard players set @s Cooldown 120

#---------------------
#Safari Zone Prompt
execute as @a[x=1587,y=88,z=-106,distance=..5,scores={TalkTime=0,Cooldown=0}] if entity @e[x=-792,y=65,z=-284,dy=3,type=armor_stand,tag=!SafariActive] run scoreboard players enable @s TriggerCommand
execute as @a[x=1587,y=88,z=-106,distance=..5,scores={TalkTime=0,Cooldown=0}] if entity @e[x=-792,y=65,z=-284,dy=3,type=armor_stand,tag=!SafariActive] run tellraw @s {"text": "<Safari Clerk> Begin your Safari Zone session? ", "extra": [{"text":"[Yes]","color":"green","clickEvent":{"action":"run_command","value":"/trigger TriggerCommand set 22"}}]}
execute as @a[x=1587,y=88,z=-106,distance=..5,scores={TalkTime=0,Cooldown=0}] if entity @e[x=-792,y=65,z=-284,dy=3,type=armor_stand,tag=!SafariActive] run scoreboard players set @s Cooldown 120

#Safari Zone Mapping Function
execute as @a[x=1590,y=74,z=-129,dx=10,dy=5,dz=10] run function johto:world/safariselect

#---------------------
#Runs Goldenrod Underground puzzle function of player is in the underground
execute if entity @a[x=476,y=46,z=-345,dx=52,dy=7,dz=51,limit=1] run function johto:triggers/undergroundpuzzle/puzzle


#-------------------------------------------------------------------------------------------------------------------------
#If player clicks on custom-items

#HM Fly
execute as @a[scores={click=1..},nbt={SelectedItem:{tag:{display:{Name:'[{"text":"HM02: Fly","italic":false,"color":"aqua"}]'}}}}] run scoreboard players set @s Fly 1
execute as @a[scores={click=1..},nbt={SelectedItem:{tag:{display:{Name:'[{"text":"HM02: Fly","italic":false,"color":"aqua"}]'}}}}] run function johto:hms/fly
execute as @a[scores={click=1..},nbt={SelectedItem:{tag:{display:{Name:'[{"text":"HM02: Fly","italic":false,"color":"aqua"}]'}}}}] run scoreboard players set @s click 0


#-------------------------------------------------------------------------------------------------------------------------
#Music-based commands


#Music rate: 86 ticks per 60 seconds

#Runs the click trigger if player uses Carrot on a Stick
execute as @a[scores={click=1..},tag=TempDelay] run function johto:triggers/click
tag @a[scores={click=1..},tag=!TempDelay] add TempDelay


#####


#Primary radio (off-hand and slot 2)
#Slot 2
execute as @a[tag=!RadioOff,scores={MusicCooldown=0},nbt={Inventory:[{Slot:1b,id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'[{"text":"Radio","italic":false,"color":"aqua"}]'}}}]}] run function johto:world/radio

#Offhand
execute as @a[tag=!RadioOff,scores={MusicCooldown=0},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'[{"text":"Radio","italic":false,"color":"aqua"}]'}}}]}] run function johto:world/radio

#Radio Stations
execute as @a[tag=!RadioOff,scores={MusicCooldown=0},nbt={Inventory:[{Slot:2b,id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'[{"text":"Radio","italic":false,"color":"aqua"}]'}}}]}] run function johto:world/radiostations
execute as @a[tag=!RadioOff,scores={MusicCooldown=0},nbt={Inventory:[{Slot:3b,id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'[{"text":"Radio","italic":false,"color":"aqua"}]'}}}]}] run function johto:world/radiostations
execute as @a[tag=!RadioOff,scores={MusicCooldown=0},nbt={Inventory:[{Slot:4b,id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'[{"text":"Radio","italic":false,"color":"aqua"}]'}}}]}] run function johto:world/radiostations
execute as @a[tag=!RadioOff,scores={MusicCooldown=0},nbt={Inventory:[{Slot:5b,id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'[{"text":"Radio","italic":false,"color":"aqua"}]'}}}]}] run function johto:world/radiostations
execute as @a[tag=!RadioOff,scores={MusicCooldown=0},nbt={Inventory:[{Slot:6b,id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'[{"text":"Radio","italic":false,"color":"aqua"}]'}}}]}] run function johto:world/radiostations
execute as @a[tag=!RadioOff,scores={MusicCooldown=0},nbt={Inventory:[{Slot:7b,id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'[{"text":"Radio","italic":false,"color":"aqua"}]'}}}]}] run function johto:world/radiostations



#Removes a MusicCooldown score each refresh if present
scoreboard players remove @a[scores={MusicCooldown=1..}] MusicCooldown 1






#Adds repel for times like Pokemon Lullaby
tag @a[tag=RepelEffect,scores={MusicCooldown=0}] remove RepelEffect
effect give @a[tag=RepelEffect] pixelmon:repel 10 1 true


#-------------------------------------------------------------------------------------------------------------------------

#Runs HMs/Important Items


#Fly Map Refresh
execute as @a[x=1169,y=252,z=619,distance=..40] run function johto:hms/flymap

#Flash
execute as @a[scores={Flash=1..}] run function johto:spawn/flashhm


#Town Map
team leave @a[team=black]
execute as @a[nbt={SelectedItem:{id:"minecraft:filled_map",tag:{display:{Name:'[{"text":"Town Map","italic":false,"color":"aqua"}]'}}}}] run function johto:world/townmap
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:filled_map",tag:{display:{Name:'[{"text":"Town Map","italic":false,"color":"aqua"}]'}}}]}] run function johto:world/townmap


#Cut
playsound cut ambient @a[scores={Cut=1..}] ~ ~ ~ 1 0.9 1
scoreboard players set @a[scores={Cut=1..}] Cut 0


#Bicycle
tag @a[tag=Bicycle] remove Bicycle

#Adds Bicycle tag if player is on a bike
execute at @e[type=pixelmon:bike] run tag @a[distance=0..1,tag=!Bicycle] add Bicycle



#Escape Ropes
execute as @a[scores={EscapeRopeUse=1..}] run function johto:world/escaperope


#Odd Egg item converts to Pixelmon dialogue
tag @a[scores={TalkTime=0},nbt={Inventory:[{id:"minecraft:egg"}]},tag=Dialogue200] remove Dialogue200
scoreboard players set @a[scores={TalkTime=0},nbt={Inventory:[{id:"minecraft:egg"}]},tag=!Dialogue200] DialogueTrigger 200

#Radio tip
tellraw @a[tag=!RadioTip,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] ["",{"text":"Tip: If you want to hear music within the map as you play, download the optional Music Pack!\n[","italic":true,"color":"gray"},{"text":"Click Here","italic":true,"color":"aqua","clickEvent":{"action":"open_url","value":"http://johto.jond.tv/"}},{"text":"] to download.\n[","italic":true,"color":"gray"},{"text":"Learn More","italic":true,"color":"yellow","clickEvent":{"action":"open_url","value":"https://minecraft.fandom.com/wiki/Tutorials/Loading_a_resource_pack"}},{"text":"] about how to enable a Resource Pack.","italic":true,"color":"gray"}]
tag @a[tag=!RadioTip,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] add RadioTip

#Badge Case info tip
tellraw @a[tag=!BadgeCaseTip,nbt={SelectedItem:{id:"pixelmon:blackbadgecase"}}] {"text":"Tip: Register your badge case to store badges in! Right click me and click the \"Register\" at the top!","italic":true,"color":"gray"}
tag @a[nbt={SelectedItem:{id:"pixelmon:blackbadgecase"}}] add BadgeCaseTip

#Item Finder Tip
tellraw @a[tag=!ItemFinderTip,nbt={SelectedItem:{id:"pixelmon:item_finder"}}] {"text":"Tip: Your XP bar can detect if an item is nearby while you select the Item Finder. The more XP, the closer the item. It will ping when an item is within reach!","italic":true,"color":"gray"}
tag @a[nbt={SelectedItem:{id:"pixelmon:item_finder"}}] add ItemFinderTip


#-------------------------------------------------------------------------------------------------------------------------
#Unlocks Fly spots by visiting respective Pokemon Centers, sets spawnpoint if player dies
scoreboard players set @a[x=-256,y=64,z=-489,distance=..5,scores={FlyCherrygrove=0}] FlyCherrygrove 1
spawnpoint @a[x=-256,y=64,z=-489,distance=..5] -256 64 -489

scoreboard players set @a[x=15,y=64,z=-106,distance=..5,scores={FlyViolet=0}] FlyViolet 1
spawnpoint @a[x=15,y=64,z=-109,distance=..5] 15 64 -109

scoreboard players set @a[x=330,y=64,z=-728,distance=..5,scores={FlyAzalea=0}] FlyAzalea 1
spawnpoint @a[x=330,y=64,z=-728,distance=..5] 330 64 -728

scoreboard players set @a[x=499,y=64,z=-424,distance=..5,scores={FlyGoldenrod=0}] FlyGoldenrod 1
spawnpoint @a[x=499,y=64,z=-424,distance=..5] 499 64 -424

scoreboard players set @a[x=341,y=64,z=186,distance=..5,scores={FlyEcruteak=0}] FlyEcruteak 1
spawnpoint @a[x=341,y=64,z=183,distance=..5] 341 64 183

scoreboard players set @a[x=791,y=65,z=-40,distance=..5,scores={FlyOlivine=0}] FlyOlivine 1
spawnpoint @a[x=791,y=64,z=-41,distance=..5] 791 64 -41

scoreboard players set @a[x=1186,y=65,z=-468,distance=..5,scores={FlyCianwood=0}] FlyCianwood 1
spawnpoint @a[x=1186,y=64,z=-469,distance=..5] 1186 64 -469

scoreboard players set @a[x=1617,y=88,z=-158,distance=..5,scores={FlySafari=0}] FlySafari 1
spawnpoint @a[x=1617,y=88,z=-160,distance=..5] 1617 88 -160

scoreboard players set @a[x=-177,y=64,z=162,distance=..5,scores={FlyMahogany=0}] FlyMahogany 1
spawnpoint @a[x=-177,y=64,z=160,distance=..5] -177 64 160

scoreboard players set @a[x=-154,y=63,z=533,dx=22,dy=5,dz=5,scores={FlyLake=0}] FlyLake 1

scoreboard players set @a[x=-663,y=64,z=174,distance=..5,scores={FlyBlackthorn=0}] FlyBlackthorn 1
spawnpoint @a[x=-663,y=64,z=171,distance=..5] -663 64 171

scoreboard players set @a[x=-999,y=64,z=64,distance=..5,scores={FlySilver=0}] FlySilver 1
spawnpoint @a[x=-999,y=64,z=62,distance=..5] -999 64 62

scoreboard players set @a[x=-1258,y=64,z=15,distance=..5,scores={FlyVictory=0}] FlyVictory 1

scoreboard players set @a[x=-1292,y=84,z=322,distance=..5,scores={FlyIndigo=0}] FlyIndigo 1
spawnpoint @a[x=-1292,y=84,z=322,distance=..5] -1292 84 322

scoreboard players set @a[x=-1704,y=64,z=-899,distance=..5,scores={FlyCinnabar=0}] FlyCinnabar 1
spawnpoint @a[x=-1704,y=64,z=-899,distance=..5] -1704 64 -899

scoreboard players set @a[x=-1715,y=64,z=-321,distance=..15,scores={FlyPallet=0}] FlyPallet 1
spawnpoint @a[x=-1715,y=64,z=-321,distance=..15] -1715 64 -321

scoreboard players set @a[x=-1701,y=64,z=7,distance=..5,scores={FlyViridian=0}] FlyViridian 1
spawnpoint @a[x=-1701,y=64,z=7,distance=..5] -1701 64 7

scoreboard players set @a[x=-1660,y=64,z=602,distance=..5,scores={FlyPewter=0}] FlyPewter 1
spawnpoint @a[x=-1660,y=64,z=602,distance=..5] -1660 64 602

spawnpoint @a[x=-2165,y=64,z=749,distance=..5] -2165 64 749

scoreboard players set @a[x=-2744,y=64,z=728,distance=..5,scores={FlyCerulean=0}] FlyCerulean 1
spawnpoint @a[x=-2744,y=64,z=728,distance=..5] -2744 64 728

scoreboard players set @a[x=-2405,y=64,z=-606,distance=..5,scores={FlyFuchsia=0}] FlyFuchsia 1
spawnpoint @a[x=-2405,y=64,z=-608,distance=..5] -2405 64 -608

scoreboard players set @a[x=-2714,y=64,z=8,distance=..5,scores={FlyVermilion=0}] FlyVermilion 1
spawnpoint @a[x=-2714,y=64,z=8,distance=..5] -2714 64 8

scoreboard players set @a[x=-2704,y=64,z=279,distance=..5,scores={FlySaffron=0}] FlySaffron 1
spawnpoint @a[x=-2704,y=64,z=279,distance=..5] -2704 64 279

scoreboard players set @a[x=-2460,y=64,z=375,distance=..5,scores={FlyCeladon=0}] FlyCeladon 1
spawnpoint @a[x=-2460,y=64,z=375,distance=..5] -2460 64 375

scoreboard players set @a[x=-3253,y=64,z=357,distance=..5,scores={FlyLavender=0}] FlyLavender 1
spawnpoint @a[x=-3253,y=64,z=356,distance=..5] -3253 64 356

spawnpoint @a[x=-3287,y=64,z=675,distance=..5] -3287 64 675


#--------------------------------------------------------World Ambiance-----------------------------------------------------------------


#Azure Flute play on Mt. Silver
execute if block -944 183 285 pixelmon:timespace_altar{FlutePlayed:1b} run stopsound @a[x=-944,y=183,z=285,distance=..30,scores={Cooldown=0}]
execute if block -944 183 285 pixelmon:timespace_altar{FlutePlayed:1b} run playsound azureflute record @a[x=-945,y=179,z=271,distance=..30,scores={Cooldown=0}] ~ ~ ~ 10 1 1
execute if block -944 183 285 pixelmon:timespace_altar{FlutePlayed:1b} run tag @a[x=-945,y=179,z=271,distance=..30,scores={Cooldown=0}] add ArceusEncountered
execute if block -944 183 285 pixelmon:timespace_altar{FlutePlayed:1b} run scoreboard players set @a[x=-945,y=179,z=271,distance=..30,scores={Cooldown=0}] MusicCooldown 17
execute if block -944 183 285 pixelmon:timespace_altar{FlutePlayed:1b} run scoreboard players set @a[x=-945,y=179,z=271,distance=..30,scores={Cooldown=0}] Cooldown 30


#Bellsprout Tower swaying pillar in middle
execute if entity @a[x=57,y=70,z=18,distance=..50] run setblock -819 65 -265 minecraft:air
execute unless entity @a[x=57,y=70,z=18,distance=..50] run setblock -819 65 -265 minecraft:redstone_block



#Runs Team Rocket HQ specific commands
execute if entity @a[x=-178,y=0,z=152,dx=121,dy=63,dz=73] run function johto:world/rockethq



#-------------------------------------------------------------------------------------------------------------------------
#Dialogue Triggers

#Runs primary dialogue functions
execute as @a[scores={DialogueTrigger=1..500}] run function johto:dialogue/dialogue


#Runs secondary World-based dialogues
execute as @e[x=-801,y=64,z=-287,dy=3,scores={DialogueTrigger=1..}] run function johto:dialogue/worlddialogues

#Runs dialogue triggers on their own function
execute as @a run function johto:dialogue/dialoguetriggers

#-------------------------------------------------------------------------------------------------------------------------
#Road Blocks
#Handles story-based barriers the player must do something else to clear.

execute as @a run function johto:world/roadblocks


#-------------------------------------------------------------------------------------------------------------------------
#Spawnpoints at Pokemon Centers
spawnpoint @a[x=-1704,y=64,z=-899,distance=..3] -1704 64 -899
spawnpoint @a[x=-2405,y=64,z=-608,distance=..3] -2405 64 -608
spawnpoint @a[x=-3253,y=65,z=357,distance=..3] -3253 65 357
spawnpoint @a[x=-256,y=64,z=-489,distance=..4] -256 64 -489
spawnpoint @a[x=1186,y=65,z=-468,distance=..3] 1186 65 -468
spawnpoint @a[x=791,y=65,z=-40,distance=..3] 791 64 -40
spawnpoint @a[x=-2744,y=64,z=728,distance=..3] -2744 64 728
spawnpoint @a[x=-1701,y=64,z=7,distance=..3] -1701 64 7
spawnpoint @a[x=-1660,y=64,z=602,distance=..3] -1660 64 602
spawnpoint @a[x=-2460,y=64,z=375,distance=..3] -2460 64 375
spawnpoint @a[x=-2714,y=64,z=8,distance=..3] -2714 64 8
spawnpoint @a[x=-2704,y=64,z=279,distance=..3] 2704 64 279
spawnpoint @a[x=-999,y=64,z=64,distance=..4] -999 64 64




#-------------------------------------------------------------------------------------------------------------------------
