
#Command to activate in tellraws:
#/trigger TriggerCommand set 1
#/scoreboard players enable @p TriggerCommand

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------









#1 - 8, old starters





#9 - Battle Tower begin Session

#If Tower is currently active
execute @a[score_TriggerCommand_min=9,score_TriggerCommand=9] ~ ~ ~ execute @e[x=-792,y=65,z=-284,dy=3,type=armor_stand,tag=TowerActive] ~ ~ ~ tellraw @a[score_TriggerCommand_min=9,score_TriggerCommand=9] ["",{"text":"<Clerk> Sorry, our last Battle Room is taken right now. Feel free to spectate the battles while you wait!"}]
execute @a[score_TriggerCommand_min=9,score_TriggerCommand=9] ~ ~ ~ execute @e[x=-792,y=65,z=-284,dy=3,type=armor_stand,tag=TowerActive] ~ ~ ~
execute @a[score_TriggerCommand_min=9,score_TriggerCommand=9] ~ ~ ~ execute @e[x=-792,y=65,z=-284,dy=3,type=armor_stand,tag=TowerActive] ~ ~ ~ scoreboard players set @a[score_TriggerCommand_min=9,score_TriggerCommand=9] TriggerCommand 0


execute @a[score_TriggerCommand_min=9,score_TriggerCommand=9] ~ ~ ~ scoreboard players tag @e[x=-792,y=65,z=-284,dy=3,type=armor_stand] add TowerActive
execute @a[score_TriggerCommand_min=9,score_TriggerCommand=9] ~ ~ ~ tellraw @s {"text":"<Clerk> Let's begin!"}
execute @a[score_TriggerCommand_min=9,score_TriggerCommand=9] ~ ~ ~ scoreboard players set @s BattleTower 1
execute @a[score_TriggerCommand_min=9,score_TriggerCommand=9] ~ ~ ~ tp @s 894 100 67.0 -90 ~
execute @a[score_TriggerCommand_min=9,score_TriggerCommand=9] ~ ~ ~ scoreboard players set @s Battle_Streak 0
execute @a[score_TriggerCommand_min=9,score_TriggerCommand=9] ~ ~ ~ tp @r[x=881,y=46,z=69,dx=2,dy=2,dz=2,type=pixelmon:npc_trainer,c=1] 910 100 67.0 90 ~

#Resets Battle Streak armor stand to 0
execute @a[score_TriggerCommand_min=9,score_TriggerCommand=9] ~ ~ ~ kill @e[x=903,z=100,z=77,r=5,type=armor_stand]
execute @a[score_TriggerCommand_min=9,score_TriggerCommand=9] ~ ~ ~ function custom:battlestreakhologram
execute @a[score_TriggerCommand_min=9,score_TriggerCommand=9] ~ ~ ~ summon Armor_Stand 903.0 101 77 {CustomName:"Battle Streak",NoGravity:1b,Invisible:1b,CustomNameVisible:1b}

#Enables observation monitoring function
execute @a[score_TriggerCommand_min=9,score_TriggerCommand=9] ~ ~ ~ setblock 925 48 69 minecraft:iron_block

execute @a[score_TriggerCommand_min=9,score_TriggerCommand=9] ~ ~ ~ scoreboard players set @s TriggerCommand 0




#78 - Battle Tower End Session
#scoreboard players set @a[x=875,y=99,z=50,dx=55,dy=20,dz=27] TriggerCommand 78

#Clears the observation and turns off module
execute @a[score_TriggerCommand_min=78,score_TriggerCommand=78] ~ ~ ~ entitydata @e[x=907,y=106,z=102,r=5,type=pixelmon:painting] {Item:{id:"minecraft:air",Count:1}}
execute @a[score_TriggerCommand_min=78,score_TriggerCommand=78] ~ ~ ~ entitydata @e[x=898,y=106,z=102,r=5,type=pixelmon:painting] {Item:{id:"minecraft:air",Count:1}}
execute @a[score_TriggerCommand_min=78,score_TriggerCommand=78] ~ ~ ~ setblock 925 48 69 minecraft:redstone_block

execute @a[score_TriggerCommand_min=78,score_TriggerCommand=78] ~ ~ ~ tp @s 902 64 67 180 ~
execute @a[score_TriggerCommand_min=78,score_TriggerCommand=78] ~ ~ ~ scoreboard players tag @e[x=-792,y=65,z=-284,dy=3,type=armor_stand] remove TowerActive
execute @a[score_TriggerCommand_min=78,score_TriggerCommand=78] ~ ~ ~ scoreboard players set @s Battle_Streak 0
execute @a[score_TriggerCommand_min=78,score_TriggerCommand=78] ~ ~ ~ tellraw @s {"text":"<Clerk> Thank you for visiting! Please come again!"}
execute @a[score_TriggerCommand_min=78,score_TriggerCommand=78] ~ ~ ~ scoreboard players set @s BattleTower 0

#Return TP Pokemon
execute @a[score_TriggerCommand_min=78,score_TriggerCommand=78] ~ ~ ~ tp @e[x=910,y=99,z=66,dy=2,dz=1,type=pixelmon:npc_trainer,score_Battle_Streak_min=1,score_Battle_Streak=1] 882 47 70
execute @a[score_TriggerCommand_min=78,score_TriggerCommand=78] ~ ~ ~ tp @e[x=910,y=99,z=66,dy=2,dz=1,type=pixelmon:npc_trainer,score_Battle_Streak_min=2,score_Battle_Streak=2] 887 47 70
execute @a[score_TriggerCommand_min=78,score_TriggerCommand=78] ~ ~ ~ tp @e[x=910,y=99,z=66,dy=2,dz=1,type=pixelmon:npc_trainer,score_Battle_Streak_min=3,score_Battle_Streak=3] 892 47 70
execute @a[score_TriggerCommand_min=78,score_TriggerCommand=78] ~ ~ ~ tp @e[x=910,y=99,z=66,dy=2,dz=1,type=pixelmon:npc_trainer,score_Battle_Streak_min=4,score_Battle_Streak=4] 897 47 70

execute @a[score_TriggerCommand_min=78,score_TriggerCommand=78] ~ ~ ~ scoreboard players set @s TriggerCommand 0







#10 Guide Gent Yes
execute @a[score_TriggerCommand_min=10,score_TriggerCommand=10] ~ ~ ~ tellraw @s {"text":"<Guide Gent> OK, then! Follow me!"}
execute @a[score_TriggerCommand_min=10,score_TriggerCommand=10] ~ ~ ~ fill -731 84 -242 -733 84 -242 minecraft:redstone_block
execute @a[score_TriggerCommand_min=10,score_TriggerCommand=10] ~ ~ ~ scoreboard players set @s TriggerCommand 0


#11 Guide Gent No
execute @a[score_TriggerCommand_min=11,score_TriggerCommand=11] ~ ~ ~ /tellraw @a[x=-270,y=64,z=-505,r=15,score_GuideGent=0] {"text":"<Guide Gent> <Guide Gent> Alright! Maybe some other time!"}
scoreboard players set @a[score_TriggerCommand_min=11,score_TriggerCommand=11] TriggerCommand 0

#12 Arceus Pick - Dialga
#Stays on player, removed during dialogue

#13 Arceus Pick - Palkia
#Stays on player, removed during dialogue

#14 Arceus Pick - Giratina
#Stays on player, removed during dialogue





#Radio Tower start Quiz
execute @a[score_TriggerCommand_min=21,score_TriggerCommand=21] ~ ~ ~ scoreboard players set @s DialogueTrigger 179

#Radio Quiz Wrong Answer
execute @a[score_TriggerCommand_min=15,score_TriggerCommand=15] ~ ~ ~ scoreboard players set @s DialogueTrigger 178

#Radio Tower Correct Answers
execute @a[score_TriggerCommand_min=16,score_TriggerCommand=16] ~ ~ ~ scoreboard players set @s DialogueTrigger 180
execute @a[score_TriggerCommand_min=17,score_TriggerCommand=17] ~ ~ ~ scoreboard players set @s DialogueTrigger 181
execute @a[score_TriggerCommand_min=18,score_TriggerCommand=18] ~ ~ ~ scoreboard players set @s DialogueTrigger 182
execute @a[score_TriggerCommand_min=19,score_TriggerCommand=19] ~ ~ ~ scoreboard players set @s DialogueTrigger 183
execute @a[score_TriggerCommand_min=20,score_TriggerCommand=20] ~ ~ ~ scoreboard players set @s DialogueTrigger 184
scoreboard players set @a[score_TriggerCommand_min=15,score_TriggerCommand=21] TriggerCommand 0



#22 - Safari Zone Begin Session
#If Safari Zone is currently active:
execute @a[score_TriggerCommand_min=22,score_TriggerCommand=22] ~ ~ ~ execute @e[x=-792,y=65,z=-284,dy=3,type=armor_stand,tag=SafariActive] ~ ~ ~ tellraw @a[score_TriggerCommand_min=22,score_TriggerCommand=22] {"text":"<Safari Clerk> Sorry, our Safari Zone is currently active. Please try again later!"}
execute @a[score_TriggerCommand_min=22,score_TriggerCommand=22] ~ ~ ~ execute @e[x=-792,y=65,z=-284,dy=3,type=armor_stand,tag=SafariActive] ~ ~ ~ scoreboard players set @a[score_TriggerCommand_min=22,score_TriggerCommand=22] TriggerCommand 0

execute @a[score_TriggerCommand_min=22,score_TriggerCommand=22] ~ ~ ~ tp @s 1595 75 -125 -180 -5
execute @a[score_TriggerCommand_min=22,score_TriggerCommand=22] ~ ~ ~ tellraw @s ["",{"text":"Before you start, you must pick which biomes you want in your Safari Zone!"}]
execute @a[score_TriggerCommand_min=22,score_TriggerCommand=22] ~ ~ ~ scoreboard players tag @e[x=-792,y=65,z=-284,dy=3,type=armor_stand] add SafariActive
execute @a[score_TriggerCommand_min=22,score_TriggerCommand=22] ~ ~ ~ clone 1595 81 -121 1595 81 -121 1595 75 -122
execute @a[score_TriggerCommand_min=22,score_TriggerCommand=22] ~ ~ ~ scoreboard players set @s TriggerCommand 0


#23 - Safari Zone Confirm Maps
execute @a[score_TriggerCommand_min=23,score_TriggerCommand=23] ~ ~ ~ scoreboard players tag @s remove Dialogue201
execute @a[score_TriggerCommand_min=23,score_TriggerCommand=23] ~ ~ ~ scoreboard players tag @s remove Dialogue202
execute @a[score_TriggerCommand_min=23,score_TriggerCommand=23] ~ ~ ~ scoreboard players set @s[x=1590,y=74,z=-129,dx=10,dy=5,dz=10] DialogueTrigger 201
execute @a[score_TriggerCommand_min=23,score_TriggerCommand=23] ~ ~ ~ scoreboard players set @s TriggerCommand 0


#77 - Map Room Cancel
execute @a[score_TriggerCommand_min=77,score_TriggerCommand=77] ~ ~ ~ scoreboard players tag @e[x=-792,y=65,z=-284,dy=3,type=armor_stand] remove SafariActive
execute @a[score_TriggerCommand_min=77,score_TriggerCommand=77] ~ ~ ~ tp @s 1591 88 -103 180 4
execute @a[score_TriggerCommand_min=77,score_TriggerCommand=77] ~ ~ ~ tellraw @s {"text":"<Safari Clerk> Thank you for visiting! Come again soon!"}
execute @a[score_TriggerCommand_min=77,score_TriggerCommand=77] ~ ~ ~ setblock 1595 81 -129 minecraft:redstone_block
execute @a[score_TriggerCommand_min=77,score_TriggerCommand=77] ~ ~ ~ scoreboard players set @e[x=-879,y=64,z=-180,dy=5,dz=10,type=armor_stand] BiomeID 0
execute @a[score_TriggerCommand_min=77,score_TriggerCommand=77] ~ ~ ~ scoreboard players set @s TriggerCommand 0


#24 - Safari Zone quit button & Fly Prompt
#If Safari isn't active
execute @a[score_TriggerCommand_min=24,score_TriggerCommand=25] ~ ~ ~ scoreboard players tag @s remove Dialogue202
execute @a[score_TriggerCommand_min=24,score_TriggerCommand=25] ~ ~ ~ scoreboard players tag @s remove Dialogue201
execute @a[score_TriggerCommand_min=24,score_TriggerCommand=25] ~ ~ ~ scoreboard players set @s DialogueTrigger 202
scoreboard players set @a[score_TriggerCommand_min=24,score_TriggerCommand=25] TriggerCommand 0




#26 - Sinjoh Ruins Abra TP out
execute @a[score_TriggerCommand_min=26,score_TriggerCommand=26] ~ ~ ~ scoreboard players set @s[score_TalkTime=0] DialogueTrigger 177
execute @a[score_TriggerCommand_min=26,score_TriggerCommand=26] ~ ~ ~ scoreboard players tag @s remove Dialogue177
scoreboard players set @a[score_TriggerCommand_min=26,score_TriggerCommand=26] TriggerCommand 0



#29 - Steven Hoenn Starters (Treecko)
execute @a[score_TriggerCommand_min=29,score_TriggerCommand=29] ~ ~ ~ pokegive @s[tag=!HoennStarters] Treecko lvl:5
execute @a[score_TriggerCommand_min=29,score_TriggerCommand=29] ~ ~ ~ tellraw @s {"text":"<Steven> You chose correctly! I will give you Treecko!"}
execute @a[score_TriggerCommand_min=29,score_TriggerCommand=29] ~ ~ ~ scoreboard players tag @s add HoennStarters
execute @a[score_TriggerCommand_min=29,score_TriggerCommand=29] ~ ~ ~ scoreboard players set @s DialogueTrigger 138
execute @a[score_TriggerCommand_min=29,score_TriggerCommand=29] ~ ~ ~ playsound egghatch ambient @s ~ ~ ~ 1000 1 1
scoreboard players set @a[score_TriggerCommand_min=29,score_TriggerCommand=29] TriggerCommand 0


#30 - Steven Hoenn Starters (Torchic)
execute @a[score_TriggerCommand_min=30,score_TriggerCommand=30] ~ ~ ~ pokegive @s[tag=!HoennStarters] Torchic lvl:5
execute @a[score_TriggerCommand_min=30,score_TriggerCommand=30] ~ ~ ~ tellraw @s {"text":"<Steven> You chose correctly! I will give you Torchic!"}
execute @a[score_TriggerCommand_min=30,score_TriggerCommand=30] ~ ~ ~ scoreboard players tag @s add HoennStarters
execute @a[score_TriggerCommand_min=30,score_TriggerCommand=30] ~ ~ ~ scoreboard players set @s DialogueTrigger 138
execute @a[score_TriggerCommand_min=30,score_TriggerCommand=30] ~ ~ ~ playsound egghatch ambient @s ~ ~ ~ 1000 1 1
scoreboard players set @a[score_TriggerCommand_min=30,score_TriggerCommand=30] TriggerCommand 0

#31 - Steven Hoenn Starters (Mudkip)
execute @a[score_TriggerCommand_min=31,score_TriggerCommand=31] ~ ~ ~ pokegive @s[tag=!HoennStarters] Mudkip lvl:5
execute @a[score_TriggerCommand_min=31,score_TriggerCommand=31] ~ ~ ~ tellraw @s {"text":"<Steven> You chose correctly! I will give you Mudkip!"}
execute @a[score_TriggerCommand_min=31,score_TriggerCommand=31] ~ ~ ~ scoreboard players tag @s add HoennStarters
execute @a[score_TriggerCommand_min=31,score_TriggerCommand=31] ~ ~ ~ scoreboard players set @s DialogueTrigger 138
execute @a[score_TriggerCommand_min=31,score_TriggerCommand=31] ~ ~ ~ playsound egghatch ambient @s ~ ~ ~ 1000 1 1
scoreboard players set @a[score_TriggerCommand_min=31,score_TriggerCommand=31] TriggerCommand 0


#28 - Begin Bug Catching Contest
execute @a[score_TriggerCommand_min=28,score_TriggerCommand=28] ~ ~ ~ scoreboard players set @s DialogueTrigger 198
execute @a[score_TriggerCommand_min=28,score_TriggerCommand=28] ~ ~ ~ scoreboard players set @s TriggerCommand 0

#32 - Bug Catching Contest force judging
execute @a[score_TriggerCommand_min=32,score_TriggerCommand=32] ~ ~ ~ scoreboard players set @s TalkTime 1704
execute @a[score_TriggerCommand_min=32,score_TriggerCommand=32] ~ ~ ~ scoreboard players set @s TriggerCommand 0

#33 - Bug Catching Contest skip judging and cancel
execute @a[score_TriggerCommand_min=33,score_TriggerCommand=33] ~ ~ ~ scoreboard players set @s TalkTime 30
execute @a[score_TriggerCommand_min=33,score_TriggerCommand=33] ~ ~ ~ scoreboard players set @s DialogueTrigger 199
execute @a[score_TriggerCommand_min=33,score_TriggerCommand=33] ~ ~ ~ scoreboard players set @s TriggerCommand 0



#27 - Bug Catching Contest Submit to be judged
execute @a[score_TriggerCommand_min=27,score_TriggerCommand=27] ~ ~ ~ /scoreboard players set @s DialogueTrigger 199
scoreboard players set @a[score_TriggerCommand_min=27,score_TriggerCommand=27] TriggerCommand 0



#39 - Lance Lake of Rage will you help me?
execute @a[score_TriggerCommand_min=39,score_TriggerCommand=39] ~ ~ ~ scoreboard players set @s DialogueTrigger 52
scoreboard players set @a[score_TriggerCommand_min=39,score_TriggerCommand=39] TriggerCommand 0



#40 - Beauty Salon would you like a makeover? [Yes]
execute @a[score_TriggerCommand_min=40,score_TriggerCommand=40] ~ ~ ~ tellraw @s {"text":"<Beauty Salon Clerk> Send out a Pokemon for me to pamper!"}
execute @a[score_TriggerCommand_min=40,score_TriggerCommand=40] ~ ~ ~ entitydata @e[x=-801,y=64,z=-284,dy=3,type=armor_stand] {CustomName:"Beauty Salon Clerk"}
execute @a[score_TriggerCommand_min=40,score_TriggerCommand=40] ~ ~ ~ execute @e[x=-801,y=64,z=-284,dy=3,type=armor_stand] ~ ~ ~ /givemoney @a[score_TriggerCommand_min=40,score_TriggerCommand=40] -500
execute @a[score_TriggerCommand_min=40,score_TriggerCommand=40] ~ ~ ~ entitydata @e[x=-801,y=64,z=-284,dy=3,type=armor_stand] {CustomName:"Pixelmon Johto"}
execute @a[score_TriggerCommand_min=40,score_TriggerCommand=40] ~ ~ ~ scoreboard players tag @s add BeautySalon
execute @a[score_TriggerCommand_min=40,score_TriggerCommand=40] ~ ~ ~ scoreboard players tag @s remove Dialogue186
scoreboard players set @a[score_TriggerCommand_min=40,score_TriggerCommand=40] TriggerCommand 0


#41 - Celebi Time Travel event start
execute @a[score_TriggerCommand_min=41,score_TriggerCommand=41] ~ ~ ~ scoreboard players set @s DialogueTrigger 162
execute @a[score_TriggerCommand_min=41,score_TriggerCommand=41] ~ ~ ~ scoreboard players set @s TriggerCommand 0


#42 - Celebi Time Travel Giovanni Cave Leave
execute @a[score_TriggerCommand_min=42,score_TriggerCommand=42] ~ ~ ~ /scoreboard players set @s DialogueTrigger 165
scoreboard players set @a[score_TriggerCommand_min=42,score_TriggerCommand=42] TriggerCommand 0



#43 - Hall of Fame Yes
execute @e[x=-803,y=64,z=-284,dy=3,type=armor_stand,score_HOFCount_min=10] ~ ~ ~ tellraw @a[score_TriggerCommand_min=43,score_TriggerCommand=43] ["",{"text":"<Lance> I have to apologize, our Hall of Fame is currently full of statues at the moment.","color":"white"}]
execute @e[x=-803,y=64,z=-284,dy=3,type=armor_stand,score_HOFCount_min=0,score_HOFCount=9] ~ ~ ~ scoreboard players set @a[score_TriggerCommand_min=43,score_TriggerCommand=43] DialogueTrigger 97
scoreboard players set @a[score_TriggerCommand_min=43,score_TriggerCommand=43] TriggerCommand 0


#44 - Hall of Fame No
tellraw @a[score_TriggerCommand_min=44,score_TriggerCommand=44] {"text":"<Lance> Very well! Just press the button above the healer, and you are good to go!"}
scoreboard players set @a[score_TriggerCommand_min=44,score_TriggerCommand=44] TriggerCommand 0


#47 Mr. Pokémon exchanging a red scale for EXP Share
execute @a[score_TriggerCommand_min=47,score_TriggerCommand=47] ~ ~ ~ clear @s minecraft:record_cat
execute @a[score_TriggerCommand_min=47,score_TriggerCommand=47] ~ ~ ~ give @s pixelmon:exp_share
execute @a[score_TriggerCommand_min=47,score_TriggerCommand=47] ~ ~ ~ tellraw @s {"text":"<Mr. Pokémon> Life is delightful! Always, new discoveries to be made!"}
scoreboard players set @a[score_TriggerCommand_min=47,score_TriggerCommand=47] TriggerCommand 0



#48 - Randy's Spearow sidequest Yes
execute @a[score_TriggerCommand_min=48,score_TriggerCommand=48] ~ ~ ~ scoreboard players set @s DialogueTrigger 147
scoreboard players set @a[score_TriggerCommand_min=48,score_TriggerCommand=48] TriggerCommand 0


#49 - Randy's Spearow sidequest No
execute @a[score_TriggerCommand_min=49,score_TriggerCommand=49] ~ ~ ~ tellraw @s {"text":"<Randy> Oh... Never mind, then... "}
execute @a[score_TriggerCommand_min=49,score_TriggerCommand=49] ~ ~ ~ scoreboard players set @s Cooldown 30
execute @a[score_TriggerCommand_min=49,score_TriggerCommand=49] ~ ~ ~ scoreboard players tag @s remove Dialogue146
scoreboard players set @a[score_TriggerCommand_min=49,score_TriggerCommand=49] TriggerCommand 0


#50 - Kyogre Spawn
execute @a[score_TriggerCommand_min=50,score_TriggerCommand=50] ~ ~ ~ scoreboard players set @e[x=-801,y=64,z=-287,dy=3,type=armor_stand,score_DialogueTrigger=0,score_TalkTime=0] DialogueTrigger 150

#51 - Groudon Spawn
execute @a[score_TriggerCommand_min=51,score_TriggerCommand=51] ~ ~ ~ scoreboard players set @e[x=-801,y=64,z=-287,dy=3,type=armor_stand,score_DialogueTrigger=0,score_TalkTime=0] DialogueTrigger 151

#53 - Rayquaza Spawn
execute @a[score_TriggerCommand_min=52,score_TriggerCommand=52] ~ ~ ~ scoreboard players set @e[x=-801,y=64,z=-287,dy=3,type=armor_stand,score_DialogueTrigger=0,score_TalkTime=0] DialogueTrigger 152




#If player has already picked a Kanto Starter
execute @a[score_TriggerCommand_min=54,score_TriggerCommand=56,score_KantoStarters_min=1] ~ ~ ~ tellraw @s {"text":"You alredy picked a Kanto Starter!","italic":true,"color":"gray"}
execute @a[score_TriggerCommand_min=54,score_TriggerCommand=56,score_KantoStarters_min=1] ~ ~ ~ clear @s minecraft:spruce_fence_gate
execute @a[score_TriggerCommand_min=54,score_TriggerCommand=56,score_KantoStarters_min=1] ~ ~ ~ clear @s minecraft:birch_fence_gate
execute @a[score_TriggerCommand_min=54,score_TriggerCommand=56,score_KantoStarters_min=1] ~ ~ ~ clear @s minecraft:dark_oak_fence_gate
execute @a[score_TriggerCommand_min=54,score_TriggerCommand=56,score_KantoStarters_min=1] ~ ~ ~ scoreboard players set @s TriggerCommand 0

#54 - Bulbasaur Give
#scoreboard players set @a[x=-1726,y=63,z=-319,dx=23,dy=5,dz=25,score_TalkTime=0] TriggerCommand 54 {Inventory:[{id:"minecraft:spruce_fence_gate"}]}
execute @a[score_TriggerCommand_min=54,score_TriggerCommand=54] ~ ~ ~ pokegive @s[score_KantoStarters=0] Bulbasaur lvl:5
execute @a[score_TriggerCommand_min=54,score_TriggerCommand=54] ~ ~ ~ playsound egghatch ambient @s ~ ~ ~ 100 1 1
execute @a[score_TriggerCommand_min=54,score_TriggerCommand=54] ~ ~ ~ clear @s minecraft:spruce_fence_gate
execute @a[score_TriggerCommand_min=54,score_TriggerCommand=54] ~ ~ ~ scoreboard players set @s KantoStarters 1
execute @a[score_TriggerCommand_min=54,score_TriggerCommand=54] ~ ~ ~ scoreboard players set @s TriggerCommand 0


#55 - Squirtle Give
#scoreboard players set @a[x=-1726,y=63,z=-319,dx=23,dy=5,dz=25,score_TalkTime=0] TriggerCommand 55 {Inventory:[{id:"minecraft:birch_fence_gate"}]}
execute @a[score_TriggerCommand_min=55,score_TriggerCommand=55] ~ ~ ~ pokegive @s[score_KantoStarters=0] Squirtle lvl:5
execute @a[score_TriggerCommand_min=55,score_TriggerCommand=55] ~ ~ ~ playsound egghatch ambient @s ~ ~ ~ 100 1 1
execute @a[score_TriggerCommand_min=55,score_TriggerCommand=55] ~ ~ ~ clear @s minecraft:birch_fence_gate
execute @a[score_TriggerCommand_min=55,score_TriggerCommand=55] ~ ~ ~ scoreboard players set @s KantoStarters 2
execute @a[score_TriggerCommand_min=55,score_TriggerCommand=55] ~ ~ ~ scoreboard players set @s TriggerCommand 0


#56 - Charmander Give
#scoreboard players set @a[x=-1726,y=63,z=-319,dx=23,dy=5,dz=25,score_TalkTime=0] TriggerCommand 56 {Inventory:[{id:"minecraft:dark_oak_fence_gate"}]}
execute @a[score_TriggerCommand_min=56,score_TriggerCommand=56] ~ ~ ~ pokegive @s[score_KantoStarters=0] Charmander lvl:5
execute @a[score_TriggerCommand_min=56,score_TriggerCommand=56] ~ ~ ~ playsound egghatch ambient @s ~ ~ ~ 100 1 1
execute @a[score_TriggerCommand_min=56,score_TriggerCommand=56] ~ ~ ~ clear @s minecraft:dark_oak_fence_gate
execute @a[score_TriggerCommand_min=56,score_TriggerCommand=56] ~ ~ ~ scoreboard players set @s KantoStarters 3
execute @a[score_TriggerCommand_min=56,score_TriggerCommand=56] ~ ~ ~ scoreboard players set @s TriggerCommand 0




#57 - Moltres Reset
#scoreboard players set @a TriggerCommand 57 {Inventory:[{id:"minecraft:chainmail_helmet"}]}
execute @a[score_TriggerCommand_min=57,score_TriggerCommand=57] ~ ~ ~ clear @s minecraft:chainmail_helmet 0 1
execute @a[score_TriggerCommand_min=57,score_TriggerCommand=57] ~ ~ ~ tellraw @s {"text":"You can encounter Moltres again in a half an hour.","italic":true}
execute @a[score_TriggerCommand_min=57,score_TriggerCommand=57] ~ ~ ~ scoreboard players set @s Moltres 0
execute @a[score_TriggerCommand_min=57,score_TriggerCommand=57] ~ ~ ~ scoreboard players tag @s remove Dialogue160
execute @a[score_TriggerCommand_min=57,score_TriggerCommand=57] ~ ~ ~ scoreboard players set @s MoltresCD 7
execute @a[score_TriggerCommand_min=57,score_TriggerCommand=57] ~ ~ ~ scoreboard players set @s TriggerCommand 0


#58 - Articuno Reset
#scoreboard players set @a TriggerCommand 58 {Inventory:[{id:"minecraft:chainmail_boots"}]}
execute @a[score_TriggerCommand_min=58,score_TriggerCommand=58] ~ ~ ~ clear @s minecraft:chainmail_boots 0 1
execute @a[score_TriggerCommand_min=58,score_TriggerCommand=58] ~ ~ ~ tellraw @s {"text":"You can encounter Articuno again in a half an hour.","italic":true}
execute @a[score_TriggerCommand_min=58,score_TriggerCommand=58] ~ ~ ~ scoreboard players set @s Articuno 0
execute @a[score_TriggerCommand_min=58,score_TriggerCommand=58] ~ ~ ~ scoreboard players tag @s remove Dialogue158
execute @a[score_TriggerCommand_min=58,score_TriggerCommand=58] ~ ~ ~ scoreboard players set @s ArticunoCD 7
execute @a[score_TriggerCommand_min=58,score_TriggerCommand=58] ~ ~ ~ scoreboard players set @s TriggerCommand 0


#59 - Zapdos Reset
#scoreboard players set @a TriggerCommand 59 {Inventory:[{id:"minecraft:chainmail_chestplate"}]}
execute @a[score_TriggerCommand_min=59,score_TriggerCommand=59] ~ ~ ~ clear @s minecraft:chainmail_chestplate 0 1
execute @a[score_TriggerCommand_min=59,score_TriggerCommand=59] ~ ~ ~ tellraw @s {"text":"You can encounter Zapdos again in a half an hour.","italic":true}
execute @a[score_TriggerCommand_min=59,score_TriggerCommand=59] ~ ~ ~ scoreboard players set @s Zapdos 0
execute @a[score_TriggerCommand_min=59,score_TriggerCommand=59] ~ ~ ~ scoreboard players tag @s remove Dialogue159
execute @a[score_TriggerCommand_min=59,score_TriggerCommand=59] ~ ~ ~ scoreboard players set @s ZapdosCD 7
execute @a[score_TriggerCommand_min=59,score_TriggerCommand=59] ~ ~ ~ scoreboard players set @s TriggerCommand 0


#60 - Arceus Reset
#scoreboard players set @a TriggerCommand 60 {Inventory:[{id:"minecraft:diamond_chestplate"}]}
execute @a[score_TriggerCommand_min=60,score_TriggerCommand=60] ~ ~ ~ clear @s minecraft:diamond_chestplate 0 1
execute @a[score_TriggerCommand_min=60,score_TriggerCommand=60] ~ ~ ~ tellraw @s {"text":"You can encounter Arceus again, and will be given another flute, in a half an hour.","italic":true}
execute @a[score_TriggerCommand_min=60,score_TriggerCommand=60] ~ ~ ~ scoreboard players set @s ArceusCD 7
execute @a[score_TriggerCommand_min=60,score_TriggerCommand=60] ~ ~ ~ scoreboard players set @s TriggerCommand 0


#61 - Rayquaza Reset
#scoreboard players set @a TriggerCommand 61 {Inventory:[{id:"minecraft:iron_leggings"}]}
execute @a[score_TriggerCommand_min=61,score_TriggerCommand=61] ~ ~ ~ clear @s minecraft:iron_leggings 0 1
execute @a[score_TriggerCommand_min=61,score_TriggerCommand=61] ~ ~ ~ give @s minecraft:diamond_horse_armor 1 0 {display:{Name:"Jade Orb",Lore:["A shiny green orb that is said","to have a legend tied to it. It's","known to have a deep connection","with the Hoenn region."]},ench:[{id:"2",lvl:"1"}]}
execute @a[score_TriggerCommand_min=61,score_TriggerCommand=61] ~ ~ ~ tellraw @s {"text":"You can encounter Rayquaza again in a half an hour.","italic":true}
execute @a[score_TriggerCommand_min=61,score_TriggerCommand=61] ~ ~ ~ scoreboard players set @s RayquazaCD 6
execute @a[score_TriggerCommand_min=61,score_TriggerCommand=61] ~ ~ ~ scoreboard players set @s TriggerCommand 0


#62 - Kyogre Reset
#scoreboard players set @a TriggerCommand 62 {Inventory:[{id:"minecraft:iron_chestplate"}]}
execute @a[score_TriggerCommand_min=62,score_TriggerCommand=62] ~ ~ ~ clear @s minecraft:iron_chestplate 0 1
execute @a[score_TriggerCommand_min=62,score_TriggerCommand=62] ~ ~ ~ give @s minecraft:iron_horse_armor 1 0 {display:{Name:"Blue Orb",Lore:["A shiny blue orb that is said","to have a legend tied to it. It's","known to have a deep connection","with the Hoenn region."]},ench:[{id:"2",lvl:"1"}]}
execute @a[score_TriggerCommand_min=62,score_TriggerCommand=62] ~ ~ ~ tellraw @s {"text":"You can encounter Kyogre again in a half an hour.","italic":true}
execute @a[score_TriggerCommand_min=62,score_TriggerCommand=62] ~ ~ ~ scoreboard players set @s KyogreCD 6
execute @a[score_TriggerCommand_min=62,score_TriggerCommand=62] ~ ~ ~ scoreboard players set @s TriggerCommand 0


#63 - Groudon Reset
#scoreboard players set @a TriggerCommand 63 {Inventory:[{id:"minecraft:iron_helmet"}]}
execute @a[score_TriggerCommand_min=63,score_TriggerCommand=63] ~ ~ ~ clear @s minecraft:iron_helmet 0 1
execute @a[score_TriggerCommand_min=63,score_TriggerCommand=63] ~ ~ ~ give @s minecraft:golden_horse_armor 1 0 {display:{Name:"Red Orb",Lore:["A shiny red orb that is said","to have a legend tied to it. It's","known to have a deep connection","with the Hoenn region."]},ench:[{id:"2",lvl:"1"}]}
execute @a[score_TriggerCommand_min=63,score_TriggerCommand=63] ~ ~ ~ tellraw @s {"text":"You can encounter Groudon again in a half an hour.","italic":true}
execute @a[score_TriggerCommand_min=63,score_TriggerCommand=63] ~ ~ ~ scoreboard players set @s GroudonCD 6
execute @a[score_TriggerCommand_min=63,score_TriggerCommand=63] ~ ~ ~ scoreboard players set @s TriggerCommand 0


#64 - Mew Reset
#scoreboard players set @a TriggerCommand 64 {Inventory:[{id:"minecraft:diamond_boots"}]}
execute @a[score_TriggerCommand_min=64,score_TriggerCommand=64] ~ ~ ~ clear @s minecraft:diamond_boots 0 1
execute @a[score_TriggerCommand_min=64,score_TriggerCommand=64] ~ ~ ~ scoreboard players set @s Mew 0
execute @a[score_TriggerCommand_min=64,score_TriggerCommand=64] ~ ~ ~ tellraw @s {"text":"You can encounter Mew again in a half an hour.","italic":true}
execute @a[score_TriggerCommand_min=64,score_TriggerCommand=64] ~ ~ ~ scoreboard players set @s MewCD 6
execute @a[score_TriggerCommand_min=64,score_TriggerCommand=64] ~ ~ ~ scoreboard players set @s TriggerCommand 0


#65 - Mewtwo Reset
#scoreboard players set @a TriggerCommand 65 {Inventory:[{id:"minecraft:chainmail_leggings"}]}
execute @a[score_TriggerCommand_min=65,score_TriggerCommand=65] ~ ~ ~ clear @s minecraft:chainmail_leggings 0 1
execute @a[score_TriggerCommand_min=65,score_TriggerCommand=65] ~ ~ ~ scoreboard players set @s Mewtwo 0
execute @a[score_TriggerCommand_min=65,score_TriggerCommand=65] ~ ~ ~ tellraw @s {"text":"You can encounter Mewtwo again in a half an hour.","italic":true}
execute @a[score_TriggerCommand_min=65,score_TriggerCommand=65] ~ ~ ~ scoreboard players set @s MewtwoCD 6
execute @a[score_TriggerCommand_min=65,score_TriggerCommand=65] ~ ~ ~ scoreboard players set @s TriggerCommand 0


#66 - Ho-Oh Reset
#scoreboard players set @a TriggerCommand 66 {Inventory:[{id:"minecraft:iron_boots"}]}
execute @a[score_TriggerCommand_min=66,score_TriggerCommand=66] ~ ~ ~ clear @s minecraft:iron_boots 0 1
execute @a[score_TriggerCommand_min=66,score_TriggerCommand=66] ~ ~ ~ give @s minecraft:prismarine_crystals 1 0 {display:{Name:"Rainbow Wing",Lore:["A strange, rainbow feather","that sparkles."]},ench:[{id:"2",lvl:"1"}]}
execute @a[score_TriggerCommand_min=66,score_TriggerCommand=66] ~ ~ ~ tellraw @s {"text":"You can encounter Ho-Oh again in a half an hour.","italic":true}
execute @a[score_TriggerCommand_min=66,score_TriggerCommand=66] ~ ~ ~ scoreboard players tag @s remove Dialogue104
execute @a[score_TriggerCommand_min=66,score_TriggerCommand=66] ~ ~ ~ scoreboard players set @s HoohCD 6
execute @a[score_TriggerCommand_min=66,score_TriggerCommand=66] ~ ~ ~ scoreboard players set @s TriggerCommand 0


#67 - Lugia Reset
#scoreboard players set @a TriggerCommand 67 {Inventory:[{id:"minecraft:golden_leggings"}]}
execute @a[score_TriggerCommand_min=67,score_TriggerCommand=67] ~ ~ ~ clear @s minecraft:golden_leggings 0 1
execute @a[score_TriggerCommand_min=67,score_TriggerCommand=67] ~ ~ ~ give @s minecraft:prismarine_shard 1 0 {display:{Name:"Silver Wing",Lore:["A strange, silvery feather","that sparkles."]},ench:[{id:"2",lvl:"1"}]}
execute @a[score_TriggerCommand_min=67,score_TriggerCommand=67] ~ ~ ~ tellraw @s {"text":"You can encounter Lugia again in a half an hour.","italic":true}
execute @a[score_TriggerCommand_min=67,score_TriggerCommand=67] ~ ~ ~ scoreboard players tag @s remove Dialogue103
execute @a[score_TriggerCommand_min=67,score_TriggerCommand=67] ~ ~ ~ scoreboard players set @s LugiaCD 6
execute @a[score_TriggerCommand_min=67,score_TriggerCommand=67] ~ ~ ~ scoreboard players set @s TriggerCommand 0


#68 - Suicune Reset
#scoreboard players set @a TriggerCommand 68 {Inventory:[{id:"minecraft:golden_helmet"}]}
execute @a[score_TriggerCommand_min=68,score_TriggerCommand=68] ~ ~ ~ clear @s minecraft:golden_helmet 0 1
execute @a[score_TriggerCommand_min=68,score_TriggerCommand=68] ~ ~ ~ scoreboard players set @s DogEncounter 1
execute @a[score_TriggerCommand_min=68,score_TriggerCommand=68] ~ ~ ~ scoreboard players set @s Suicune 0
execute @a[score_TriggerCommand_min=68,score_TriggerCommand=68] ~ ~ ~ tellraw @s {"text":"You can encounter Suicune again in a half an hour.","italic":true}
execute @a[score_TriggerCommand_min=68,score_TriggerCommand=68] ~ ~ ~ scoreboard players set @s SuicuneCD 6
execute @a[score_TriggerCommand_min=68,score_TriggerCommand=68] ~ ~ ~ scoreboard players set @s TriggerCommand 0


#69 - Entei Reset
#scoreboard players set @a TriggerCommand 69 {Inventory:[{id:"minecraft:golden_chestplate"}]}
execute @a[score_TriggerCommand_min=69,score_TriggerCommand=69] ~ ~ ~ clear @s golden_chestplate 0 1
execute @a[score_TriggerCommand_min=69,score_TriggerCommand=69] ~ ~ ~ scoreboard players set @s DogEncounter 1
execute @a[score_TriggerCommand_min=69,score_TriggerCommand=69] ~ ~ ~ tellraw @s {"text":"You can encounter Entei again in a half an hour.","italic":true}
execute @a[score_TriggerCommand_min=69,score_TriggerCommand=69] ~ ~ ~ scoreboard players set @s Entei 0
execute @a[score_TriggerCommand_min=69,score_TriggerCommand=69] ~ ~ ~ scoreboard players set @s EnteiCD 6
execute @a[score_TriggerCommand_min=69,score_TriggerCommand=69] ~ ~ ~ scoreboard players set @s TriggerCommand 0


#70 - Raikou Reset
#scoreboard players set @a TriggerCommand 70 {Inventory:[{id:"minecraft:golden_boots"}]}
execute @a[score_TriggerCommand_min=70,score_TriggerCommand=70] ~ ~ ~ clear @s minecraft:golden_boots 0 1
execute @a[score_TriggerCommand_min=70,score_TriggerCommand=70] ~ ~ ~ scoreboard players set @s DogEncounter 1
execute @a[score_TriggerCommand_min=70,score_TriggerCommand=70] ~ ~ ~ tellraw @s {"text":"You can encounter Raikou again in a half an hour.","italic":true}
execute @a[score_TriggerCommand_min=70,score_TriggerCommand=70] ~ ~ ~ scoreboard players set @s Raikou 0
execute @a[score_TriggerCommand_min=70,score_TriggerCommand=70] ~ ~ ~ scoreboard players set @s RaikouCD 6
execute @a[score_TriggerCommand_min=70,score_TriggerCommand=70] ~ ~ ~ scoreboard players set @s TriggerCommand 0


#71 - Latios Reset
#scoreboard players set @a TriggerCommand 71 {Inventory:[{id:"minecraft:leather_chestplate"}]}
execute @a[score_TriggerCommand_min=71,score_TriggerCommand=71] ~ ~ ~ clear @s minecraft:leather_chestplate 0 1
execute @a[score_TriggerCommand_min=71,score_TriggerCommand=71] ~ ~ ~ tellraw @s {"text":"You can encounter Latios again in a half an hour.","italic":true}
execute @a[score_TriggerCommand_min=71,score_TriggerCommand=71] ~ ~ ~ scoreboard players set @s Latios 0
execute @a[score_TriggerCommand_min=71,score_TriggerCommand=71] ~ ~ ~ scoreboard players set @s LatiosCD 7
execute @a[score_TriggerCommand_min=71,score_TriggerCommand=71] ~ ~ ~ scoreboard players set @s TriggerCommand 0


#72 - Latias Reset
#scoreboard players set @a TriggerCommand 72 {Inventory:[{id:"pixelmon:aluminium_boots"}]}
execute @a[score_TriggerCommand_min=72,score_TriggerCommand=72] ~ ~ ~ clear @s pixelmon:aluminium_boots 0 1
execute @a[score_TriggerCommand_min=72,score_TriggerCommand=72] ~ ~ ~ tellraw @s {"text":"You can encounter Latias again in a half an hour.","italic":true}
execute @a[score_TriggerCommand_min=72,score_TriggerCommand=72] ~ ~ ~ scoreboard players set @s Latias 0
execute @a[score_TriggerCommand_min=72,score_TriggerCommand=72] ~ ~ ~ scoreboard players set @s LatiasCD 7
execute @a[score_TriggerCommand_min=72,score_TriggerCommand=72] ~ ~ ~ scoreboard players set @s TriggerCommand 0


#73 - Giratina Reset
#scoreboard players set @a TriggerCommand 73 {Inventory:[{id:"minecraft:diamond_leggings"}]}
execute @a[score_TriggerCommand_min=73,score_TriggerCommand=73] ~ ~ ~ clear @s minecraft:diamond_leggings 0 1
execute @a[score_TriggerCommand_min=73,score_TriggerCommand=73] ~ ~ ~ tellraw @s {"text":"You can encounter Giratina again in a half an hour.","italic":true}
execute @a[score_TriggerCommand_min=73,score_TriggerCommand=73] ~ ~ ~ give @s pixelmon:Griseous_orb 1 0 {display:{Lore:["A glowing orb containing","the essence of Giratina"]}}
execute @a[score_TriggerCommand_min=73,score_TriggerCommand=73] ~ ~ ~ scoreboard players set @s GiratinaCD 7
execute @a[score_TriggerCommand_min=73,score_TriggerCommand=73] ~ ~ ~ scoreboard players set @s TriggerCommand 0


#74 - Palkia Reset
#scoreboard players set @a TriggerCommand 74 {Inventory:[{id:"minecraft:diamond_helmet"}]}
execute @a[score_TriggerCommand_min=74,score_TriggerCommand=74] ~ ~ ~ clear @s minecraft:diamond_helmet 0 1
execute @a[score_TriggerCommand_min=74,score_TriggerCommand=74] ~ ~ ~ tellraw @s {"text":"You can encounter Palkia again in a half an hour.","italic":true}
execute @a[score_TriggerCommand_min=74,score_TriggerCommand=74] ~ ~ ~ give @s pixelmon:lustrous_orb 1 0 {display:{Lore:["A glowing orb containing","the essence of Palkia"]}}
execute @a[score_TriggerCommand_min=74,score_TriggerCommand=74] ~ ~ ~ scoreboard players set @s PalkiaCD 7
execute @a[score_TriggerCommand_min=74,score_TriggerCommand=74] ~ ~ ~ scoreboard players set @s TriggerCommand 0


#75 - Dialga Reset
#scoreboard players set @a TriggerCommand 75 {Inventory:[{id:"minecraft:leather_helmet"}]}
execute @a[score_TriggerCommand_min=75,score_TriggerCommand=75] ~ ~ ~ clear @s minecraft:leather_helmet 0 1
execute @a[score_TriggerCommand_min=75,score_TriggerCommand=75] ~ ~ ~ tellraw @s {"text":"You can encounter Dialga again in a half an hour.","italic":true}
execute @a[score_TriggerCommand_min=75,score_TriggerCommand=75] ~ ~ ~ give @s pixelmon:adamant_orb 1 0 {display:{Lore:["A glowing orb containing","the essence of Dialga"]}}
execute @a[score_TriggerCommand_min=75,score_TriggerCommand=75] ~ ~ ~ scoreboard players set @s DialgaCD 7
execute @a[score_TriggerCommand_min=75,score_TriggerCommand=75] ~ ~ ~ scoreboard players set @s TriggerCommand 0


#76 - Runs Lucky Number Show
execute @a[score_TriggerCommand_min=76,score_TriggerCommand=76] ~ ~ ~ scoreboard players set @s DialogueTrigger 185
execute @a[score_TriggerCommand_min=76,score_TriggerCommand=76] ~ ~ ~ scoreboard players tag @s remove Dialogue185
execute @a[score_TriggerCommand_min=76,score_TriggerCommand=76] ~ ~ ~ scoreboard players set @s TriggerCommand 0

#----------------------------------------------------------------------------


#80-88 - Johto Starters when player has sword

#if player already has a starter
execute @a[score_TriggerCommand_min=80,score_TriggerCommand=86,score_StarterPick_min=1] ~ ~ ~ clear @s pixelmon:fire_stone_sword
execute @a[score_TriggerCommand_min=80,score_TriggerCommand=86,score_StarterPick_min=1] ~ ~ ~ clear @s pixelmon:leaf_stone_sword
execute @a[score_TriggerCommand_min=80,score_TriggerCommand=86,score_StarterPick_min=1] ~ ~ ~ clear @s pixelmon:water_stone_sword
execute @a[score_TriggerCommand_min=80,score_TriggerCommand=86,score_StarterPick_min=1] ~ ~ ~ tellraw @s {"text":"You already picked your starter!","italic":true}
execute @a[score_TriggerCommand_min=80,score_TriggerCommand=86,score_StarterPick_min=1] ~ ~ ~ scoreboard players set @s TriggerCommand 0


#80 - Cyndaquil Prompt
#scoreboard players set @a[x=-682,y=63,z=-482,r=25,score_TalkTime=0,tag=Dialogue3] TriggerCommand 80 {Inventory:[{id:"pixelmon:fire_stone_sword"}]}
execute @a[score_TriggerCommand_min=80,score_TriggerCommand=80] ~ ~ ~ tellraw @s ["",{"text":"<Professor Elm> You'll take Cyndaquil, the fire Pokémon?"}]
execute @a[score_TriggerCommand_min=80,score_TriggerCommand=80] ~ ~ ~ scoreboard players enable @s TriggerCommand
execute @a[score_TriggerCommand_min=80,score_TriggerCommand=80] ~ ~ ~ tellraw @s ["",{"text":"[Yes]","color":"green","clickEvent":{"action":"run_command","value":"/trigger TriggerCommand set 81"}}]
execute @a[score_TriggerCommand_min=80,score_TriggerCommand=80] ~ ~ ~ tellraw @s ["",{"text":"[No]","color":"red","clickEvent":{"action":"run_command","value":"/trigger TriggerCommand set 86"}}]
execute @a[score_TriggerCommand_min=80,score_TriggerCommand=80] ~ ~ ~ clear @s pixelmon:fire_stone_sword
execute @a[score_TriggerCommand_min=80,score_TriggerCommand=80] ~ ~ ~ playsound cyndaquil ambient @s ~ ~ ~ 10 1 1
execute @a[score_TriggerCommand_min=80,score_TriggerCommand=80] ~ ~ ~ scoreboard players set @s TriggerCommand 0

#81 - Cyndaquil Confirm
execute @a[score_TriggerCommand_min=81,score_TriggerCommand=81] ~ ~ ~ tellraw @s ["",{"text":"<Professor Elm> I think that's a great Pokémon too!"}]
execute @a[score_TriggerCommand_min=81,score_TriggerCommand=81] ~ ~ ~ pokegive @s[score_StarterPick=0] Cyndaquil lvl:5
execute @a[score_TriggerCommand_min=81,score_TriggerCommand=81] ~ ~ ~ playsound egghatch ambient @s ~ ~ ~ 1000 1 1
execute @a[score_TriggerCommand_min=81,score_TriggerCommand=81] ~ ~ ~ scoreboard players set @s StarterPick 2
execute @a[score_TriggerCommand_min=81,score_TriggerCommand=81] ~ ~ ~ clone -690 62 -487 -686 62 -487 -689 65 -479
execute @a[score_TriggerCommand_min=81,score_TriggerCommand=81] ~ ~ ~ scoreboard players set @s TriggerCommand 0




#82 - Chikorita Prompt
#scoreboard players set @a[x=-682,y=63,z=-482,r=25,score_TalkTime=0,tag=Dialogue3] TriggerCommand 82 {Inventory:[{id:"pixelmon:leaf_stone_sword"}]}
execute @a[score_TriggerCommand_min=82,score_TriggerCommand=82] ~ ~ ~ tellraw @s ["",{"text":"<Professor Elm> So, you like Chikorita, the grass Pokémon?"}]
execute @a[score_TriggerCommand_min=82,score_TriggerCommand=82] ~ ~ ~ scoreboard players enable @s TriggerCommand
execute @a[score_TriggerCommand_min=82,score_TriggerCommand=82] ~ ~ ~ tellraw @s ["",{"text":"[Yes]","color":"green","clickEvent":{"action":"run_command","value":"/trigger TriggerCommand set 83"}}]
execute @a[score_TriggerCommand_min=82,score_TriggerCommand=82] ~ ~ ~ tellraw @s ["",{"text":"[No]","color":"red","clickEvent":{"action":"run_command","value":"/trigger TriggerCommand set 86"}}]
execute @a[score_TriggerCommand_min=82,score_TriggerCommand=82] ~ ~ ~ clear @s pixelmon:leaf_stone_sword
execute @a[score_TriggerCommand_min=82,score_TriggerCommand=82] ~ ~ ~ playsound chickorita ambient @s ~ ~ ~ 10 1 1
execute @a[score_TriggerCommand_min=82,score_TriggerCommand=82] ~ ~ ~ scoreboard players set @s TriggerCommand 0


#83 - Chikorita Confirm
execute @a[score_TriggerCommand_min=83,score_TriggerCommand=83] ~ ~ ~ tellraw @s ["",{"text":"<Professor Elm> I think that's a great Pokémon too!"}]
execute @a[score_TriggerCommand_min=83,score_TriggerCommand=83] ~ ~ ~ pokegive @s[score_StarterPick=0] Chikorita lvl:5
execute @a[score_TriggerCommand_min=83,score_TriggerCommand=83] ~ ~ ~ playsound egghatch ambient @s ~ ~ ~ 1000 1 1
execute @a[score_TriggerCommand_min=83,score_TriggerCommand=83] ~ ~ ~ scoreboard players set @s StarterPick 1
execute @a[score_TriggerCommand_min=83,score_TriggerCommand=83] ~ ~ ~ clone -690 62 -487 -686 62 -487 -689 65 -479
execute @a[score_TriggerCommand_min=83,score_TriggerCommand=83] ~ ~ ~ scoreboard players set @s TriggerCommand 0




#84 - Totodile Prompt
#scoreboard players set @a[x=-682,y=63,z=-482,r=25,score_TalkTime=0,tag=Dialogue3] TriggerCommand 84 {Inventory:[{id:"pixelmon:water_stone_sword"}]}
execute @a[score_TriggerCommand_min=84,score_TriggerCommand=84] ~ ~ ~ tellraw @s ["",{"text":"<Professor Elm> Do you want the Totodile, the water Pokémon?"}]
execute @a[score_TriggerCommand_min=84,score_TriggerCommand=84] ~ ~ ~ scoreboard players enable @s TriggerCommand
execute @a[score_TriggerCommand_min=84,score_TriggerCommand=84] ~ ~ ~ tellraw @s ["",{"text":"[Yes]","color":"green","clickEvent":{"action":"run_command","value":"/trigger TriggerCommand set 85"}}]
execute @a[score_TriggerCommand_min=84,score_TriggerCommand=84] ~ ~ ~ tellraw @s ["",{"text":"[No]","color":"red","clickEvent":{"action":"run_command","value":"/trigger TriggerCommand set 86"}}]
execute @a[score_TriggerCommand_min=84,score_TriggerCommand=84] ~ ~ ~ clear @s pixelmon:water_stone_sword
execute @a[score_TriggerCommand_min=84,score_TriggerCommand=84] ~ ~ ~ playsound totodile ambient @s ~ ~ ~ 10 1 1
execute @a[score_TriggerCommand_min=84,score_TriggerCommand=84] ~ ~ ~ scoreboard players set @s TriggerCommand 0


#85 - Totodile Confirm
execute @a[score_TriggerCommand_min=85,score_TriggerCommand=85] ~ ~ ~ tellraw @s ["",{"text":"<Professor Elm> I think that's a great Pokémon too!"}]
execute @a[score_TriggerCommand_min=85,score_TriggerCommand=85] ~ ~ ~ pokegive @s[score_StarterPick=0] Totodile lvl:5
execute @a[score_TriggerCommand_min=85,score_TriggerCommand=85] ~ ~ ~ playsound egghatch ambient @s ~ ~ ~ 1000 1 1
execute @a[score_TriggerCommand_min=85,score_TriggerCommand=85] ~ ~ ~ scoreboard players set @s StarterPick 3
execute @a[score_TriggerCommand_min=85,score_TriggerCommand=85] ~ ~ ~ clone -690 62 -487 -686 62 -487 -689 65 -479
execute @a[score_TriggerCommand_min=85,score_TriggerCommand=85] ~ ~ ~ scoreboard players set @s TriggerCommand 0


#86 - Reset
execute @a[score_TriggerCommand_min=86,score_TriggerCommand=86] ~ ~ ~ clone -686 62 -487 -690 62 -487 -689 65 -479
execute @a[score_TriggerCommand_min=86,score_TriggerCommand=86] ~ ~ ~ tellraw @s ["",{"text":"<Professor Elm> Think it over carefully. Your partner is important."}]
execute @a[score_TriggerCommand_min=86,score_TriggerCommand=86] ~ ~ ~ scoreboard players set @s TriggerCommand 0



#Languages

execute @a[score_TriggerCommand_min=87,score_TriggerCommand=92] ~ ~ ~ scoreboard players tag @s remove Japanese
execute @a[score_TriggerCommand_min=87,score_TriggerCommand=92] ~ ~ ~ scoreboard players tag @s remove English
execute @a[score_TriggerCommand_min=87,score_TriggerCommand=92] ~ ~ ~ scoreboard players tag @s remove German
execute @a[score_TriggerCommand_min=87,score_TriggerCommand=92] ~ ~ ~ scoreboard players tag @s remove Spanish
execute @a[score_TriggerCommand_min=87,score_TriggerCommand=92] ~ ~ ~ scoreboard players tag @s remove French
execute @a[score_TriggerCommand_min=87,score_TriggerCommand=92] ~ ~ ~ scoreboard players tag @s remove Italian

#Japanese
execute @a[score_TriggerCommand_min=87,score_TriggerCommand=87] ~ ~ ~ tellraw @s {"text":"日本語!"}
execute @a[score_TriggerCommand_min=87,score_TriggerCommand=87] ~ ~ ~ scoreboard players tag @s add Japanese
execute @a[score_TriggerCommand_min=87,score_TriggerCommand=87] ~ ~ ~ scoreboard players set @s TriggerCommand 0

#English
execute @a[score_TriggerCommand_min=88,score_TriggerCommand=88] ~ ~ ~ tellraw @s {"text":"English!"}
execute @a[score_TriggerCommand_min=88,score_TriggerCommand=88] ~ ~ ~ scoreboard players tag @s add English
execute @a[score_TriggerCommand_min=88,score_TriggerCommand=88] ~ ~ ~ scoreboard players set @s TriggerCommand 0

#German
execute @a[score_TriggerCommand_min=89,score_TriggerCommand=89] ~ ~ ~ tellraw @s {"text":"Deutsche!"}
execute @a[score_TriggerCommand_min=89,score_TriggerCommand=89] ~ ~ ~ scoreboard players tag @s add German
execute @a[score_TriggerCommand_min=89,score_TriggerCommand=89] ~ ~ ~ scoreboard players set @s TriggerCommand 0

#Spanish
execute @a[score_TriggerCommand_min=90,score_TriggerCommand=90] ~ ~ ~ tellraw @s {"text":"¡Español!"}
execute @a[score_TriggerCommand_min=90,score_TriggerCommand=90] ~ ~ ~ scoreboard players tag @s add Spanish
execute @a[score_TriggerCommand_min=90,score_TriggerCommand=90] ~ ~ ~ scoreboard players set @s TriggerCommand 0

#French
execute @a[score_TriggerCommand_min=91,score_TriggerCommand=91] ~ ~ ~ tellraw @s {"text":"Français!"}
execute @a[score_TriggerCommand_min=91,score_TriggerCommand=91] ~ ~ ~ scoreboard players tag @s add French
execute @a[score_TriggerCommand_min=91,score_TriggerCommand=91] ~ ~ ~ scoreboard players set @s TriggerCommand 0

#Italian
execute @a[score_TriggerCommand_min=92,score_TriggerCommand=92] ~ ~ ~ tellraw @s {"text":"Italiano!"}
execute @a[score_TriggerCommand_min=92,score_TriggerCommand=92] ~ ~ ~ scoreboard players tag @s add Italian
execute @a[score_TriggerCommand_min=92,score_TriggerCommand=92] ~ ~ ~ scoreboard players set @s TriggerCommand 0





#
