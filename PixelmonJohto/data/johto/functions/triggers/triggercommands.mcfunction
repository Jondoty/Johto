
#Command to activate in tellraws:
#/trigger TriggerCommand set 1
#/scoreboard players enable @p TriggerCommand

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------









#1 - 8, old starters





#9 - Battle Tower begin Session

#If Tower is currently active
execute as @a[scores={TriggerCommand=9}] run execute as @e[x=-792,y=65,z=-284,dy=3,type=armor_stand,tag=TowerActive] run tellraw @a[scores={TriggerCommand=9}] ["",{"text":"<Clerk> Sorry, our last Battle Room is taken right now. Feel free to spectate the battles while you wait!"}]
execute as @a[scores={TriggerCommand=9}] run execute as @e[x=-792,y=65,z=-284,dy=3,type=armor_stand,tag=TowerActive] run scoreboard players set @a[scores={TriggerCommand=9}] TriggerCommand 0


execute as @a[scores={TriggerCommand=9}] run tag @e[x=-792,y=65,z=-284,dy=3,type=armor_stand] add TowerActive
execute as @a[scores={TriggerCommand=9}] run tellraw @s {"text":"<Clerk> Let's begin!"}
execute as @a[scores={TriggerCommand=9}] run scoreboard players set @s BattleTower 1
execute as @a[scores={TriggerCommand=9}] run tp @s 894 100 67.0 -90 ~
execute as @a[scores={TriggerCommand=9}] run scoreboard players set @s Battle_Streak 0
execute as @a[scores={TriggerCommand=9}] run execute as @r[x=881,y=46,z=69,dx=2,dy=2,dz=2] run tp @s 910 100 67.0 90 ~

#Resets Battle Streak armor stand to 0
execute as @a[scores={TriggerCommand=9}] run kill @e[x=903,y=100,z=77,distance=..5,type=armor_stand]
execute as @a[scores={TriggerCommand=9}] run function custom:battlestreakhologram
execute as @a[scores={TriggerCommand=9}] run summon minecraft:armor_stand 903.0 101 77 {CustomName:"Battle Streak",NoGravity:1b,Invisible:1b,CustomNameVisible:1b}

#Enables observation monitoring function
execute as @a[scores={TriggerCommand=9}] run setblock 925 48 69 minecraft:iron_block

execute as @a[scores={TriggerCommand=9}] run scoreboard players set @s TriggerCommand 0




#78 - Battle Tower End Session
#scoreboard players set @a[x=875,y=99,z=50,dx=55,dy=20,dz=27] TriggerCommand 78

#Clears the observation and turns off module
execute as @a[scores={TriggerCommand=78}] run data merge entity @e[type=!minecraft:player,distance=..5,limit=1] {Item:{id:"minecraft:air",Count:1b}}
execute as @a[scores={TriggerCommand=78}] run data merge entity @e[type=!minecraft:player,distance=..5,limit=1] {Item:{id:"minecraft:air",Count:1b}}
execute as @a[scores={TriggerCommand=78}] run setblock 925 48 69 minecraft:redstone_block

execute as @a[scores={TriggerCommand=78}] run tp @s 902 64 67 180 ~
execute as @a[scores={TriggerCommand=78}] run tag @e[x=-792,y=65,z=-284,dy=3,type=armor_stand] remove TowerActive
execute as @a[scores={TriggerCommand=78}] run scoreboard players set @s Battle_Streak 0
execute as @a[scores={TriggerCommand=78}] run tellraw @s {"text":"<Clerk> Thank you for visiting! Please come again!"}
execute as @a[scores={TriggerCommand=78}] run scoreboard players set @s BattleTower 0

#Return TP Pokemon
execute as @a[scores={TriggerCommand=78}] run tp @e[x=910,y=99,z=66,dy=2,dz=1,type=pixelmon:npc_trainer,scores={Battle_Streak=1}] 882 47 70
execute as @a[scores={TriggerCommand=78}] run tp @e[x=910,y=99,z=66,dy=2,dz=1,type=pixelmon:npc_trainer,scores={Battle_Streak=2}] 887 47 70
execute as @a[scores={TriggerCommand=78}] run tp @e[x=910,y=99,z=66,dy=2,dz=1,type=pixelmon:npc_trainer,scores={Battle_Streak=3}] 892 47 70
execute as @a[scores={TriggerCommand=78}] run tp @e[x=910,y=99,z=66,dy=2,dz=1,type=pixelmon:npc_trainer,scores={Battle_Streak=4}] 897 47 70

execute as @a[scores={TriggerCommand=78}] run scoreboard players set @s TriggerCommand 0







#10 Guide Gent Yes
execute as @a[scores={TriggerCommand=10}] run tellraw @s {"text":"<Guide Gent> OK, then! Follow me!"}
execute as @a[scores={TriggerCommand=10}] run setblock -861 64 -295 minecraft:redstone_block
execute as @a[scores={TriggerCommand=10}] run scoreboard players set @s TriggerCommand 0


#11 Guide Gent No
execute as @a[scores={TriggerCommand=11}] run tellraw @a[x=-270,y=64,z=-505,distance=..15,scores={GuideGent=0}] {"text":"<Guide Gent> <Guide Gent> Alright! Maybe some other time!"}
execute as @a[scores={TriggerCommand=11}] run scoreboard players set @s TriggerCommand 0

#12 Arceus Pick - Dialga
#Stays on player, removed during dialogue

#13 Arceus Pick - Palkia
#Stays on player, removed during dialogue

#14 Arceus Pick - Giratina
#Stays on player, removed during dialogue





#Radio Tower start Quiz
execute as @a[scores={TriggerCommand=21}] run scoreboard players set @s DialogueTrigger 179

#Radio Quiz Wrong Answer
execute as @a[scores={TriggerCommand=15}] run scoreboard players set @s DialogueTrigger 178

#Radio Tower Correct Answers
execute as @a[scores={TriggerCommand=16}] run scoreboard players set @s DialogueTrigger 180
execute as @a[scores={TriggerCommand=17}] run scoreboard players set @s DialogueTrigger 181
execute as @a[scores={TriggerCommand=18}] run scoreboard players set @s DialogueTrigger 182
execute as @a[scores={TriggerCommand=19}] run scoreboard players set @s DialogueTrigger 183
execute as @a[scores={TriggerCommand=20}] run scoreboard players set @s DialogueTrigger 184
execute as @a[scores={TriggerCommand=15..21}] run scoreboard players set @s TriggerCommand 0



#22 - Safari Zone Begin Session
#If Safari Zone is currently active:
execute as @a[scores={TriggerCommand=22}] run execute as @e[x=-792,y=65,z=-284,dy=3,type=armor_stand,tag=SafariActive] run tellraw @a[scores={TriggerCommand=22}] {"text":"<Safari Clerk> Sorry, our Safari Zone is currently active. Please try again later!"}
execute as @a[scores={TriggerCommand=22}] run execute as @e[x=-792,y=65,z=-284,dy=3,type=armor_stand,tag=SafariActive] run scoreboard players set @a[scores={TriggerCommand=22}] TriggerCommand 0

execute as @a[scores={TriggerCommand=22}] run tp @s 1595 75 -125 -180 -5
execute as @a[scores={TriggerCommand=22}] run tellraw @s ["",{"text":"Before you start, you must pick which biomes you want in your Safari Zone!"}]
execute as @a[scores={TriggerCommand=22}] run tag @e[x=-792,y=65,z=-284,dy=3,type=armor_stand] add SafariActive
execute as @a[scores={TriggerCommand=22}] run clone 1595 81 -121 1595 81 -121 1595 75 -122
execute as @a[scores={TriggerCommand=22}] run scoreboard players set @s TriggerCommand 0


#23 - Safari Zone Confirm Maps
execute as @a[scores={TriggerCommand=23}] run tag @s remove Dialogue201
execute as @a[scores={TriggerCommand=23}] run tag @s remove Dialogue202
execute as @a[scores={TriggerCommand=23}] run scoreboard players set @s[x=1590,y=74,z=-129,dx=10,dy=5,dz=10] DialogueTrigger 201
execute as @a[scores={TriggerCommand=23}] run scoreboard players set @s TriggerCommand 0


#77 - Map Room Cancel
execute as @a[scores={TriggerCommand=77}] run tag @e[x=-792,y=65,z=-284,dy=3,type=armor_stand] remove SafariActive
execute as @a[scores={TriggerCommand=77}] run tp @s 1591 88 -103 180 4
execute as @a[scores={TriggerCommand=77}] run tellraw @s {"text":"<Safari Clerk> Thank you for visiting! Come again soon!"}
execute as @a[scores={TriggerCommand=77}] run setblock 1595 81 -129 minecraft:redstone_block
execute as @a[scores={TriggerCommand=77}] run scoreboard players set @e[x=-879,y=64,z=-180,dy=5,dz=10,type=armor_stand] BiomeID 0
execute as @a[scores={TriggerCommand=77}] run scoreboard players set @s TriggerCommand 0


#24 - Safari Zone quit button & Fly Prompt
#If Safari isn't active
execute as @a[scores={TriggerCommand=24..25}] run tag @s remove Dialogue202
execute as @a[scores={TriggerCommand=24..25}] run tag @s remove Dialogue201
execute as @a[scores={TriggerCommand=24..25}] run scoreboard players set @s DialogueTrigger 202
scoreboard players set @a[scores={TriggerCommand=24..25}] TriggerCommand 0




#26 - Sinjoh Ruins Abra TP out
execute as @a[scores={TriggerCommand=26}] run scoreboard players set @s[scores={TalkTime=0}] DialogueTrigger 177
execute as @a[scores={TriggerCommand=26}] run tag @s remove Dialogue177
scoreboard players set @a[scores={TriggerCommand=26}] TriggerCommand 0



#29 - Steven Hoenn Starters (Treecko)
execute as @a[scores={TriggerCommand=29}] run pokegive @s[tag=!HoennStarters] Treecko lvl:5
execute as @a[scores={TriggerCommand=29}] run tellraw @s {"text":"<Steven> You chose correctly! I will give you Treecko!"}
execute as @a[scores={TriggerCommand=29}] run tag @s add HoennStarters
execute as @a[scores={TriggerCommand=29}] run scoreboard players set @s DialogueTrigger 138
execute as @a[scores={TriggerCommand=29}] run playsound egghatch ambient @s ~ ~ ~ 1000 1 1
scoreboard players set @a[scores={TriggerCommand=29}] TriggerCommand 0


#30 - Steven Hoenn Starters (Torchic)
execute as @a[scores={TriggerCommand=30}] run pokegive @s[tag=!HoennStarters] Torchic lvl:5
execute as @a[scores={TriggerCommand=30}] run tellraw @s {"text":"<Steven> You chose correctly! I will give you Torchic!"}
execute as @a[scores={TriggerCommand=30}] run tag @s add HoennStarters
execute as @a[scores={TriggerCommand=30}] run scoreboard players set @s DialogueTrigger 138
execute as @a[scores={TriggerCommand=30}] run playsound egghatch ambient @s ~ ~ ~ 1000 1 1
scoreboard players set @a[scores={TriggerCommand=30}] TriggerCommand 0

#31 - Steven Hoenn Starters (Mudkip)
execute as @a[scores={TriggerCommand=31}] run pokegive @s[tag=!HoennStarters] Mudkip lvl:5
execute as @a[scores={TriggerCommand=31}] run tellraw @s {"text":"<Steven> You chose correctly! I will give you Mudkip!"}
execute as @a[scores={TriggerCommand=31}] run tag @s add HoennStarters
execute as @a[scores={TriggerCommand=31}] run scoreboard players set @s DialogueTrigger 138
execute as @a[scores={TriggerCommand=31}] run playsound egghatch ambient @s ~ ~ ~ 1000 1 1
scoreboard players set @a[scores={TriggerCommand=31}] TriggerCommand 0


#28 - Begin Bug Catching Contest
execute as @a[scores={TriggerCommand=28}] run scoreboard players set @s DialogueTrigger 198
execute as @a[scores={TriggerCommand=28}] run scoreboard players set @s TriggerCommand 0

#32 - Bug Catching Contest force judging
execute as @a[scores={TriggerCommand=32}] run scoreboard players set @s TalkTime 1704
execute as @a[scores={TriggerCommand=32}] run scoreboard players set @s TriggerCommand 0

#33 - Bug Catching Contest skip judging and cancel
execute as @a[scores={TriggerCommand=33}] run scoreboard players set @s TalkTime 30
execute as @a[scores={TriggerCommand=33}] run scoreboard players set @s DialogueTrigger 199
execute as @a[scores={TriggerCommand=33}] run scoreboard players set @s TriggerCommand 0



#27 - Bug Catching Contest Submit to be judged
execute as @a[scores={TriggerCommand=27}] run scoreboard players set @s DialogueTrigger 199
scoreboard players set @a[scores={TriggerCommand=27}] TriggerCommand 0



#39 - Lance Lake of Rage will you help me?
execute as @a[scores={TriggerCommand=39}] run scoreboard players set @s DialogueTrigger 52
scoreboard players set @a[scores={TriggerCommand=39}] TriggerCommand 0



#40 - Beauty Salon would you like a makeover? [Yes]
execute as @a[scores={TriggerCommand=40}] run tellraw @s {"text":"<Beauty Salon Clerk> Send out a Pokemon for me to pamper!"}
execute as @a[scores={TriggerCommand=40}] run data merge entity @e[x=-801,y=64,z=-284,dy=3,type=armor_stand,limit=1] {CustomName:'{"text":"Beauty Salon Clerk"}'}
execute as @a[scores={TriggerCommand=40}] run execute as @e[x=-801,y=64,z=-284,dy=3,type=armor_stand] run givemoney @a[scores={TriggerCommand=40}] -500
execute as @a[scores={TriggerCommand=40}] run data merge entity @e[x=-801,y=64,z=-284,dy=3,type=armor_stand,limit=1] {CustomName:'{"text":"Pixelmon Johto"}'}
execute as @a[scores={TriggerCommand=40}] run tag @s add BeautySalon
execute as @a[scores={TriggerCommand=40}] run tag @s remove Dialogue186
scoreboard players set @a[scores={TriggerCommand=40}] TriggerCommand 0


#41 - Celebi Time Travel event start
execute as @a[scores={TriggerCommand=41}] run scoreboard players set @s DialogueTrigger 162
execute as @a[scores={TriggerCommand=41}] run scoreboard players set @s TriggerCommand 0


#42 - Celebi Time Travel Giovanni Cave Leave
execute as @a[scores={TriggerCommand=42}] run scoreboard players set @s DialogueTrigger 165
scoreboard players set @a[scores={TriggerCommand=42}] TriggerCommand 0



#43 - Hall of Fame Yes
execute as @e[x=-803,y=64,z=-284,dy=3,type=armor_stand,scores={HOFCount=10..}] run tellraw @a[scores={TriggerCommand=43}] ["",{"text":"<Lance> I have to apologize, our Hall of Fame is currently full of statues at the moment.","color":"white"}]
execute as @e[x=-803,y=64,z=-284,dy=3,type=armor_stand,scores={HOFCount=0..9}] run scoreboard players set @a[scores={TriggerCommand=43}] DialogueTrigger 97
scoreboard players set @a[scores={TriggerCommand=43}] TriggerCommand 0


#44 - Hall of Fame No
tellraw @a[scores={TriggerCommand=44}] {"text":"<Lance> Very well! Just press the button above the healer, and you are good to go!"}
scoreboard players set @a[scores={TriggerCommand=44}] TriggerCommand 0


#47 Mr. Pokémon exchanging a red scale for EXP Share
execute as @a[scores={TriggerCommand=47}] run clear @s minecraft:music_disc_cat
execute as @a[scores={TriggerCommand=47}] run give @s pixelmon:exp_share
execute as @a[scores={TriggerCommand=47}] run tellraw @s {"text":"<Mr. Pokémon> Life is delightful! Always, new discoveries to be made!"}
scoreboard players set @a[scores={TriggerCommand=47}] TriggerCommand 0



#48 - Randy's Spearow sidequest Yes
execute as @a[scores={TriggerCommand=48}] run scoreboard players set @s DialogueTrigger 147
scoreboard players set @a[scores={TriggerCommand=48}] TriggerCommand 0


#49 - Randy's Spearow sidequest No
execute as @a[scores={TriggerCommand=49}] run tellraw @s {"text":"<Randy> Oh... Never mind, then... "}
execute as @a[scores={TriggerCommand=49}] run scoreboard players set @s Cooldown 30
execute as @a[scores={TriggerCommand=49}] run tag @s remove Dialogue146
scoreboard players set @a[scores={TriggerCommand=49}] TriggerCommand 0


#50 - Kyogre Spawn
execute as @a[scores={TriggerCommand=50}] run scoreboard players set @e[x=-801,y=64,z=-287,dy=3,type=armor_stand,scores={DialogueTrigger=0,TalkTime=0}] DialogueTrigger 150

#51 - Groudon Spawn
execute as @a[scores={TriggerCommand=51}] run scoreboard players set @e[x=-801,y=64,z=-287,dy=3,type=armor_stand,scores={DialogueTrigger=0,TalkTime=0}] DialogueTrigger 151

#53 - Rayquaza Spawn
execute as @a[scores={TriggerCommand=52}] run scoreboard players set @e[x=-801,y=64,z=-287,dy=3,type=armor_stand,scores={DialogueTrigger=0,TalkTime=0}] DialogueTrigger 152




#If player has already picked a Kanto Starter
execute as @a[scores={TriggerCommand=54..56,KantoStarters=1..}] run tellraw @s {"text":"You alredy picked a Kanto Starter!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=54..56,KantoStarters=1..}] run clear @s minecraft:spruce_fence_gate
execute as @a[scores={TriggerCommand=54..56,KantoStarters=1..}] run clear @s minecraft:birch_fence_gate
execute as @a[scores={TriggerCommand=54..56,KantoStarters=1..}] run clear @s minecraft:dark_oak_fence_gate
execute as @a[scores={TriggerCommand=54..56,KantoStarters=1..}] run scoreboard players set @s TriggerCommand 0

#54 - Bulbasaur Give
#scoreboard players set @a[x=-1726,y=63,z=-319,dx=23,dy=5,dz=25,score_TalkTime=0] TriggerCommand 54 {Inventory:[{id:"minecraft:spruce_fence_gate"}]}
execute as @a[scores={TriggerCommand=54}] run pokegive @s[score_KantoStarters=0] Bulbasaur lvl:5
execute as @a[scores={TriggerCommand=54}] run playsound egghatch ambient @s ~ ~ ~ 100 1 1
execute as @a[scores={TriggerCommand=54}] run clear @s minecraft:spruce_fence_gate
execute as @a[scores={TriggerCommand=54}] run scoreboard players set @s KantoStarters 1
execute as @a[scores={TriggerCommand=54}] run scoreboard players set @s TriggerCommand 0


#55 - Squirtle Give
#scoreboard players set @a[x=-1726,y=63,z=-319,dx=23,dy=5,dz=25,score_TalkTime=0] TriggerCommand 55 {Inventory:[{id:"minecraft:birch_fence_gate"}]}
execute as @a[scores={TriggerCommand=55}] run pokegive @s[score_KantoStarters=0] Squirtle lvl:5
execute as @a[scores={TriggerCommand=55}] run playsound egghatch ambient @s ~ ~ ~ 100 1 1
execute as @a[scores={TriggerCommand=55}] run clear @s minecraft:birch_fence_gate
execute as @a[scores={TriggerCommand=55}] run scoreboard players set @s KantoStarters 2
execute as @a[scores={TriggerCommand=55}] run scoreboard players set @s TriggerCommand 0


#56 - Charmander Give
#scoreboard players set @a[x=-1726,y=63,z=-319,dx=23,dy=5,dz=25,score_TalkTime=0] TriggerCommand 56 {Inventory:[{id:"minecraft:dark_oak_fence_gate"}]}
execute as @a[scores={TriggerCommand=56}] run pokegive @s[score_KantoStarters=0] Charmander lvl:5
execute as @a[scores={TriggerCommand=56}] run playsound egghatch ambient @s ~ ~ ~ 100 1 1
execute as @a[scores={TriggerCommand=56}] run clear @s minecraft:dark_oak_fence_gate
execute as @a[scores={TriggerCommand=56}] run scoreboard players set @s KantoStarters 3
execute as @a[scores={TriggerCommand=56}] run scoreboard players set @s TriggerCommand 0




#57 - Moltres Reset
#scoreboard players set @a TriggerCommand 57 {Inventory:[{id:"minecraft:chainmail_helmet"}]}
execute as @a[scores={TriggerCommand=57}] run clear @s minecraft:chainmail_helmet
execute as @a[scores={TriggerCommand=57}] run tellraw @s {"text":"You can encounter Moltres again in a half an hour.","italic":true}
execute as @a[scores={TriggerCommand=57}] run scoreboard players set @s Moltres 0
execute as @a[scores={TriggerCommand=57}] run tag @s remove Dialogue160
execute as @a[scores={TriggerCommand=57}] run scoreboard players set @s MoltresCD 7
execute as @a[scores={TriggerCommand=57}] run scoreboard players set @s TriggerCommand 0


#58 - Articuno Reset
#scoreboard players set @a TriggerCommand 58 {Inventory:[{id:"minecraft:chainmail_boots"}]}
execute as @a[scores={TriggerCommand=58}] run clear @s minecraft:chainmail_boots
execute as @a[scores={TriggerCommand=58}] run tellraw @s {"text":"You can encounter Articuno again in a half an hour.","italic":true}
execute as @a[scores={TriggerCommand=58}] run scoreboard players set @s Articuno 0
execute as @a[scores={TriggerCommand=58}] run tag @s remove Dialogue158
execute as @a[scores={TriggerCommand=58}] run scoreboard players set @s ArticunoCD 7
execute as @a[scores={TriggerCommand=58}] run scoreboard players set @s TriggerCommand 0


#59 - Zapdos Reset
#scoreboard players set @a TriggerCommand 59 {Inventory:[{id:"minecraft:chainmail_chestplate"}]}
execute as @a[scores={TriggerCommand=59}] run clear @s minecraft:chainmail_chestplate
execute as @a[scores={TriggerCommand=59}] run tellraw @s {"text":"You can encounter Zapdos again in a half an hour.","italic":true}
execute as @a[scores={TriggerCommand=59}] run scoreboard players set @s Zapdos 0
execute as @a[scores={TriggerCommand=59}] run tag @s remove Dialogue159
execute as @a[scores={TriggerCommand=59}] run scoreboard players set @s ZapdosCD 7
execute as @a[scores={TriggerCommand=59}] run scoreboard players set @s TriggerCommand 0


#60 - Arceus Reset
#scoreboard players set @a TriggerCommand 60 {Inventory:[{id:"minecraft:diamond_chestplate"}]}
execute as @a[scores={TriggerCommand=60}] run clear @s minecraft:diamond_chestplate
execute as @a[scores={TriggerCommand=60}] run tellraw @s {"text":"You can encounter Arceus again, and will be given another flute, in a half an hour.","italic":true}
execute as @a[scores={TriggerCommand=60}] run scoreboard players set @s ArceusCD 7
execute as @a[scores={TriggerCommand=60}] run scoreboard players set @s TriggerCommand 0


#61 - Rayquaza Reset
#scoreboard players set @a TriggerCommand 61 {Inventory:[{id:"minecraft:iron_leggings"}]}
execute as @a[scores={TriggerCommand=61}] run clear @s minecraft:iron_leggings
execute as @a[scores={TriggerCommand=61}] run give @s minecraft:diamond_horse_armor{display:{Name:"Jade Orb",Lore:["A shiny green orb that is said","to have a legend tied to it. It's","known to have a deep connection","with the Hoenn region."]},ench:[{id:"2",lvl:"1"}]}
execute as @a[scores={TriggerCommand=61}] run tellraw @s {"text":"You can encounter Rayquaza again in a half an hour.","italic":true}
execute as @a[scores={TriggerCommand=61}] run scoreboard players set @s RayquazaCD 6
execute as @a[scores={TriggerCommand=61}] run scoreboard players set @s TriggerCommand 0


#62 - Kyogre Reset
#scoreboard players set @a TriggerCommand 62 {Inventory:[{id:"minecraft:iron_chestplate"}]}
execute as @a[scores={TriggerCommand=62}] run clear @s minecraft:iron_chestplate
execute as @a[scores={TriggerCommand=62}] run give @s minecraft:iron_horse_armor{display:{Name:"Blue Orb",Lore:["A shiny blue orb that is said","to have a legend tied to it. It's","known to have a deep connection","with the Hoenn region."]},ench:[{id:"2",lvl:"1"}]}
execute as @a[scores={TriggerCommand=62}] run tellraw @s {"text":"You can encounter Kyogre again in a half an hour.","italic":true}
execute as @a[scores={TriggerCommand=62}] run scoreboard players set @s KyogreCD 6
execute as @a[scores={TriggerCommand=62}] run scoreboard players set @s TriggerCommand 0


#63 - Groudon Reset
#scoreboard players set @a TriggerCommand 63 {Inventory:[{id:"minecraft:iron_helmet"}]}
execute as @a[scores={TriggerCommand=63}] run clear @s minecraft:iron_helmet
execute as @a[scores={TriggerCommand=63}] run give @s minecraft:golden_horse_armor{display:{Name:"Red Orb",Lore:["A shiny red orb that is said","to have a legend tied to it. It's","known to have a deep connection","with the Hoenn region."]},ench:[{id:"2",lvl:"1"}]}
execute as @a[scores={TriggerCommand=63}] run tellraw @s {"text":"You can encounter Groudon again in a half an hour.","italic":true}
execute as @a[scores={TriggerCommand=63}] run scoreboard players set @s GroudonCD 6
execute as @a[scores={TriggerCommand=63}] run scoreboard players set @s TriggerCommand 0


#64 - Mew Reset
#scoreboard players set @a TriggerCommand 64 {Inventory:[{id:"minecraft:diamond_boots"}]}
execute as @a[scores={TriggerCommand=64}] run clear @s minecraft:diamond_boots
execute as @a[scores={TriggerCommand=64}] run scoreboard players set @s Mew 0
execute as @a[scores={TriggerCommand=64}] run tellraw @s {"text":"You can encounter Mew again in a half an hour.","italic":true}
execute as @a[scores={TriggerCommand=64}] run scoreboard players set @s MewCD 6
execute as @a[scores={TriggerCommand=64}] run scoreboard players set @s TriggerCommand 0


#65 - Mewtwo Reset
#scoreboard players set @a TriggerCommand 65 {Inventory:[{id:"minecraft:chainmail_leggings"}]}
execute as @a[scores={TriggerCommand=65}] run clear @s minecraft:chainmail_leggings
execute as @a[scores={TriggerCommand=65}] run scoreboard players set @s Mewtwo 0
execute as @a[scores={TriggerCommand=65}] run tellraw @s {"text":"You can encounter Mewtwo again in a half an hour.","italic":true}
execute as @a[scores={TriggerCommand=65}] run scoreboard players set @s MewtwoCD 6
execute as @a[scores={TriggerCommand=65}] run scoreboard players set @s TriggerCommand 0


#66 - Ho-Oh Reset
#scoreboard players set @a TriggerCommand 66 {Inventory:[{id:"minecraft:iron_boots"}]}
execute as @a[scores={TriggerCommand=66}] run clear @s minecraft:iron_boots
execute as @a[scores={TriggerCommand=66}] run give @s minecraft:prismarine_crystals{display:{Name:"Rainbow Wing",Lore:["A strange, rainbow feather","that sparkles."]},ench:[{id:"2",lvl:"1"}]}
execute as @a[scores={TriggerCommand=66}] run tellraw @s {"text":"You can encounter Ho-Oh again in a half an hour.","italic":true}
execute as @a[scores={TriggerCommand=66}] run tag @s remove Dialogue104
execute as @a[scores={TriggerCommand=66}] run scoreboard players set @s HoohCD 6
execute as @a[scores={TriggerCommand=66}] run scoreboard players set @s TriggerCommand 0


#67 - Lugia Reset
#scoreboard players set @a TriggerCommand 67 {Inventory:[{id:"minecraft:golden_leggings"}]}
execute as @a[scores={TriggerCommand=67}] run clear @s minecraft:golden_leggings
execute as @a[scores={TriggerCommand=67}] run give @s minecraft:prismarine_shard{display:{Name:"Silver Wing",Lore:["A strange, silvery feather","that sparkles."]},ench:[{id:"2",lvl:"1"}]}
execute as @a[scores={TriggerCommand=67}] run tellraw @s {"text":"You can encounter Lugia again in a half an hour.","italic":true}
execute as @a[scores={TriggerCommand=67}] run tag @s remove Dialogue103
execute as @a[scores={TriggerCommand=67}] run scoreboard players set @s LugiaCD 6
execute as @a[scores={TriggerCommand=67}] run scoreboard players set @s TriggerCommand 0


#68 - Suicune Reset
#scoreboard players set @a TriggerCommand 68 {Inventory:[{id:"minecraft:golden_helmet"}]}
execute as @a[scores={TriggerCommand=68}] run clear @s minecraft:golden_helmet
execute as @a[scores={TriggerCommand=68}] run scoreboard players set @s DogEncounter 1
execute as @a[scores={TriggerCommand=68}] run scoreboard players set @s Suicune 0
execute as @a[scores={TriggerCommand=68}] run tellraw @s {"text":"You can encounter Suicune again in a half an hour.","italic":true}
execute as @a[scores={TriggerCommand=68}] run scoreboard players set @s SuicuneCD 6
execute as @a[scores={TriggerCommand=68}] run scoreboard players set @s TriggerCommand 0


#69 - Entei Reset
#scoreboard players set @a TriggerCommand 69 {Inventory:[{id:"minecraft:golden_chestplate"}]}
execute as @a[scores={TriggerCommand=69}] run clear @s golden_chestplate
execute as @a[scores={TriggerCommand=69}] run scoreboard players set @s DogEncounter 1
execute as @a[scores={TriggerCommand=69}] run tellraw @s {"text":"You can encounter Entei again in a half an hour.","italic":true}
execute as @a[scores={TriggerCommand=69}] run scoreboard players set @s Entei 0
execute as @a[scores={TriggerCommand=69}] run scoreboard players set @s EnteiCD 6
execute as @a[scores={TriggerCommand=69}] run scoreboard players set @s TriggerCommand 0


#70 - Raikou Reset
#scoreboard players set @a TriggerCommand 70 {Inventory:[{id:"minecraft:golden_boots"}]}
execute as @a[scores={TriggerCommand=70}] run clear @s minecraft:golden_boots
execute as @a[scores={TriggerCommand=70}] run scoreboard players set @s DogEncounter 1
execute as @a[scores={TriggerCommand=70}] run tellraw @s {"text":"You can encounter Raikou again in a half an hour.","italic":true}
execute as @a[scores={TriggerCommand=70}] run scoreboard players set @s Raikou 0
execute as @a[scores={TriggerCommand=70}] run scoreboard players set @s RaikouCD 6
execute as @a[scores={TriggerCommand=70}] run scoreboard players set @s TriggerCommand 0


#71 - Latios Reset
#scoreboard players set @a TriggerCommand 71 {Inventory:[{id:"minecraft:leather_chestplate"}]}
execute as @a[scores={TriggerCommand=71}] run clear @s minecraft:leather_chestplate
execute as @a[scores={TriggerCommand=71}] run tellraw @s {"text":"You can encounter Latios again in a half an hour.","italic":true}
execute as @a[scores={TriggerCommand=71}] run scoreboard players set @s Latios 0
execute as @a[scores={TriggerCommand=71}] run scoreboard players set @s LatiosCD 7
execute as @a[scores={TriggerCommand=71}] run scoreboard players set @s TriggerCommand 0


#72 - Latias Reset
#scoreboard players set @a TriggerCommand 72 {Inventory:[{id:"pixelmon:aluminium_boots"}]}
execute as @a[scores={TriggerCommand=72}] run clear @s pixelmon:aluminium_boots
execute as @a[scores={TriggerCommand=72}] run tellraw @s {"text":"You can encounter Latias again in a half an hour.","italic":true}
execute as @a[scores={TriggerCommand=72}] run scoreboard players set @s Latias 0
execute as @a[scores={TriggerCommand=72}] run scoreboard players set @s LatiasCD 7
execute as @a[scores={TriggerCommand=72}] run scoreboard players set @s TriggerCommand 0


#73 - Giratina Reset
#scoreboard players set @a TriggerCommand 73 {Inventory:[{id:"minecraft:diamond_leggings"}]}
execute as @a[scores={TriggerCommand=73}] run clear @s minecraft:diamond_leggings
execute as @a[scores={TriggerCommand=73}] run tellraw @s {"text":"You can encounter Giratina again in a half an hour.","italic":true}
execute as @a[scores={TriggerCommand=73}] run give @s pixelmon:griseous_orb{display:{Lore:["A glowing orb containing","the essence of Giratina"]}}
execute as @a[scores={TriggerCommand=73}] run scoreboard players set @s GiratinaCD 7
execute as @a[scores={TriggerCommand=73}] run scoreboard players set @s TriggerCommand 0


#74 - Palkia Reset
#scoreboard players set @a TriggerCommand 74 {Inventory:[{id:"minecraft:diamond_helmet"}]}
execute as @a[scores={TriggerCommand=74}] run clear @s minecraft:diamond_helmet
execute as @a[scores={TriggerCommand=74}] run tellraw @s {"text":"You can encounter Palkia again in a half an hour.","italic":true}
execute as @a[scores={TriggerCommand=74}] run give @s pixelmon:lustrous_orb{display:{Lore:["A glowing orb containing","the essence of Palkia"]}}
execute as @a[scores={TriggerCommand=74}] run scoreboard players set @s PalkiaCD 7
execute as @a[scores={TriggerCommand=74}] run scoreboard players set @s TriggerCommand 0


#75 - Dialga Reset
#scoreboard players set @a TriggerCommand 75 {Inventory:[{id:"minecraft:leather_helmet"}]}
execute as @a[scores={TriggerCommand=75}] run clear @s minecraft:leather_helmet
execute as @a[scores={TriggerCommand=75}] run tellraw @s {"text":"You can encounter Dialga again in a half an hour.","italic":true}
execute as @a[scores={TriggerCommand=75}] run give @s pixelmon:adamant_orb{display:{Lore:["A glowing orb containing","the essence of Dialga"]}}
execute as @a[scores={TriggerCommand=75}] run scoreboard players set @s DialgaCD 7
execute as @a[scores={TriggerCommand=75}] run scoreboard players set @s TriggerCommand 0


#76 - Runs Lucky Number Show
execute as @a[scores={TriggerCommand=76}] run scoreboard players set @s DialogueTrigger 185
execute as @a[scores={TriggerCommand=76}] run tag @s remove Dialogue185
execute as @a[scores={TriggerCommand=76}] run scoreboard players set @s TriggerCommand 0

#----------------------------------------------------------------------------


#80-88 - Johto Starters when player has sword

#if player already has a starter
execute as @a[scores={TriggerCommand=80..86,StarterPick=1..}] run clear @s pixelmon:fire_stone_sword
execute as @a[scores={TriggerCommand=80..86,StarterPick=1..}] run clear @s pixelmon:leaf_stone_sword
execute as @a[scores={TriggerCommand=80..86,StarterPick=1..}] run clear @s pixelmon:water_stone_sword
execute as @a[scores={TriggerCommand=80..86,StarterPick=1..}] run tellraw @s {"text":"You already picked your starter!","italic":true,"color":"gray"}
execute as @a[scores={TriggerCommand=80..86,StarterPick=1..}] run clone -686 62 -487 -690 62 -487 -689 65 -479
execute as @a[scores={TriggerCommand=80..86,StarterPick=1..}] run scoreboard players set @s TriggerCommand 0


#80 - Cyndaquil Prompt
#scoreboard players set @a[x=-682,y=63,z=-482,r=25,score_TalkTime=0,tag=Dialogue3] TriggerCommand 80 {Inventory:[{id:"pixelmon:fire_stone_sword"}]}
execute as @a[scores={TriggerCommand=80}] run tellraw @s ["",{"text":"<Professor Elm> You'll take Cyndaquil, the fire Pokémon?"}]
execute as @a[scores={TriggerCommand=80}] run scoreboard players enable @s TriggerCommand
execute as @a[scores={TriggerCommand=80}] run tellraw @s ["",{"text":"[Yes]","color":"green","clickEvent":{"action":"run_command","value":"/trigger TriggerCommand set 81"}}]
execute as @a[scores={TriggerCommand=80}] run tellraw @s ["",{"text":"[No]","color":"red","clickEvent":{"action":"run_command","value":"/trigger TriggerCommand set 86"}}]
execute as @a[scores={TriggerCommand=80}] run clear @s pixelmon:fire_stone_sword
execute as @a[scores={TriggerCommand=80}] run playsound cyndaquil ambient @s ~ ~ ~ 10 1 1
execute as @a[scores={TriggerCommand=80}] run scoreboard players set @s TriggerCommand 0

#81 - Cyndaquil Confirm
execute as @a[scores={TriggerCommand=81}] run tellraw @s ["",{"text":"<Professor Elm> I think that's a great Pokémon too!"}]
execute as @a[scores={TriggerCommand=81}] run pokegive @s[scores={StarterPick=0}] Cyndaquil lvl:5
execute as @a[scores={TriggerCommand=81}] run playsound egghatch ambient @s ~ ~ ~ 1000 1 1
execute as @a[scores={TriggerCommand=81}] run scoreboard players set @s StarterPick 2
execute as @a[scores={TriggerCommand=81}] run clone -690 62 -487 -686 62 -487 -689 65 -479
execute as @a[scores={TriggerCommand=81}] run scoreboard players set @s TriggerCommand 0




#82 - Chikorita Prompt
#scoreboard players set @a[x=-682,y=63,z=-482,r=25,score_TalkTime=0,tag=Dialogue3] TriggerCommand 82 {Inventory:[{id:"pixelmon:leaf_stone_sword"}]}
execute as @a[scores={TriggerCommand=82}] run tellraw @s ["",{"text":"<Professor Elm> So, you like Chikorita, the grass Pokémon?"}]
execute as @a[scores={TriggerCommand=82}] run scoreboard players enable @s TriggerCommand
execute as @a[scores={TriggerCommand=82}] run tellraw @s ["",{"text":"[Yes]","color":"green","clickEvent":{"action":"run_command","value":"/trigger TriggerCommand set 83"}}]
execute as @a[scores={TriggerCommand=82}] run tellraw @s ["",{"text":"[No]","color":"red","clickEvent":{"action":"run_command","value":"/trigger TriggerCommand set 86"}}]
execute as @a[scores={TriggerCommand=82}] run clear @s #pixelmon:leaf_stone_sword
execute as @a[scores={TriggerCommand=82}] run playsound chickorita ambient @s ~ ~ ~ 10 1 1
execute as @a[scores={TriggerCommand=82}] run scoreboard players set @s TriggerCommand 0


#83 - Chikorita Confirm
execute as @a[scores={TriggerCommand=83}] run tellraw @s ["",{"text":"<Professor Elm> I think that's a great Pokémon too!"}]
execute as @a[scores={TriggerCommand=83}] run pokegive @s[scores={StarterPick=0}] Chikorita lvl:5
execute as @a[scores={TriggerCommand=83}] run playsound egghatch ambient @s ~ ~ ~ 1000 1 1
execute as @a[scores={TriggerCommand=83}] run scoreboard players set @s StarterPick 1
execute as @a[scores={TriggerCommand=83}] run clone -690 62 -487 -686 62 -487 -689 65 -479
execute as @a[scores={TriggerCommand=83}] run scoreboard players set @s TriggerCommand 0




#84 - Totodile Prompt
#scoreboard players set @a[x=-682,y=63,z=-482,r=25,score_TalkTime=0,tag=Dialogue3] TriggerCommand 84 {Inventory:[{id:"pixelmon:water_stone_sword"}]}
execute as @a[scores={TriggerCommand=84}] run tellraw @s ["",{"text":"<Professor Elm> Do you want the Totodile, the water Pokémon?"}]
execute as @a[scores={TriggerCommand=84}] run scoreboard players enable @s TriggerCommand
execute as @a[scores={TriggerCommand=84}] run tellraw @s ["",{"text":"[Yes]","color":"green","clickEvent":{"action":"run_command","value":"/trigger TriggerCommand set 85"}}]
execute as @a[scores={TriggerCommand=84}] run tellraw @s ["",{"text":"[No]","color":"red","clickEvent":{"action":"run_command","value":"/trigger TriggerCommand set 86"}}]
execute as @a[scores={TriggerCommand=84}] run clear @s pixelmon:water_stone_sword
execute as @a[scores={TriggerCommand=84}] run playsound totodile ambient @s ~ ~ ~ 10 1 1
execute as @a[scores={TriggerCommand=84}] run scoreboard players set @s TriggerCommand 0


#85 - Totodile Confirm
execute as @a[scores={TriggerCommand=85}] run tellraw @s ["",{"text":"<Professor Elm> I think that's a great Pokémon too!"}]
execute as @a[scores={TriggerCommand=85}] run pokegive @s[scores={StarterPick=0}] Totodile lvl:5
execute as @a[scores={TriggerCommand=85}] run playsound egghatch ambient @s ~ ~ ~ 1000 1 1
execute as @a[scores={TriggerCommand=85}] run scoreboard players set @s StarterPick 3
execute as @a[scores={TriggerCommand=85}] run clone -690 62 -487 -686 62 -487 -689 65 -479
execute as @a[scores={TriggerCommand=85}] run scoreboard players set @s TriggerCommand 0


#86 - Reset
execute as @a[scores={TriggerCommand=86}] run clone -686 62 -487 -690 62 -487 -689 65 -479
execute as @a[scores={TriggerCommand=86}] run tellraw @s ["",{"text":"<Professor Elm> Think it over carefully. Your partner is important."}]
execute as @a[scores={TriggerCommand=86}] run scoreboard players set @s TriggerCommand 0



#Languages

execute as @a[scores={TriggerCommand=87..92}] run tag @s remove Japanese
execute as @a[scores={TriggerCommand=87..92}] run tag @s remove English
execute as @a[scores={TriggerCommand=87..92}] run tag @s remove German
execute as @a[scores={TriggerCommand=87..92}] run tag @s remove Spanish
execute as @a[scores={TriggerCommand=87..92}] run tag @s remove French
execute as @a[scores={TriggerCommand=87..92}] run tag @s remove Italian

#Japanese
execute as @a[scores={TriggerCommand=87}] run tellraw @s {"text":"日本語!"}
execute as @a[scores={TriggerCommand=87}] run tag @s add Japanese
execute as @a[scores={TriggerCommand=87}] run scoreboard players set @s TriggerCommand 0

#English
execute as @a[scores={TriggerCommand=88}] run tellraw @s {"text":"English!"}
execute as @a[scores={TriggerCommand=88}] run tag @s add English
execute as @a[scores={TriggerCommand=88}] run scoreboard players set @s TriggerCommand 0

#German
execute as @a[scores={TriggerCommand=89}] run tellraw @s {"text":"Deutsche!"}
execute as @a[scores={TriggerCommand=89}] run tag @s add German
execute as @a[scores={TriggerCommand=89}] run scoreboard players set @s TriggerCommand 0

#Spanish
execute as @a[scores={TriggerCommand=90}] run tellraw @s {"text":"¡Español!"}
execute as @a[scores={TriggerCommand=90}] run tag @s add Spanish
execute as @a[scores={TriggerCommand=90}] run scoreboard players set @s TriggerCommand 0

#French
execute as @a[scores={TriggerCommand=91}] run tellraw @s {"text":"Français!"}
execute as @a[scores={TriggerCommand=91}] run tag @s add French
execute as @a[scores={TriggerCommand=91}] run scoreboard players set @s TriggerCommand 0

#Italian
execute as @a[scores={TriggerCommand=92}] run tellraw @s {"text":"Italiano!"}
execute as @a[scores={TriggerCommand=92}] run tag @s add Italian
execute as @a[scores={TriggerCommand=92}] run scoreboard players set @s TriggerCommand 0



#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#tellraw @a[scores={TriggerCommand=0..1000}] {"text":"Success!"}
scoreboard players set @a[scores={TriggerCommand=0..1000}] TriggerCommand 0





#




#
