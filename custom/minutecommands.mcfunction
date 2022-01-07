#Item Clears
clear @a[gamemode=adventure] minecraft:ender_pearl
clear @a[gamemode=adventure] minecraft:oak_log
clear @a[gamemode=adventure] minecraft:spruce_log
###clear @a[gamemode=adventure] pixelmon:tree


#Enables Unown Spawning in Ruins of Alph when any puzzle is complete
#scoreboard players tag @e[x=-792,y=65,z=-284,dy=3,type=armor_stand] add UnownSpawning
execute as @e[x=-792,y=65,z=-284,dy=3,type=armor_stand,tag=UnownSpawning] run setblock -880 67 -302 minecraft:redstone_block





#Gives player AllGyms tag and achievement
advancement grant @a[tag=Clair,tag=Pryce,tag=Jasmine,tag=Chuck,tag=Morty,tag=Whitney,tag=Bugsy,tag=Falkner,tag=Brock,tag=Misty,tag=Surge,tag=Erika,tag=Janine,tag=Sabrina,tag=Blaine,tag=Blue,tag=!AllGyms] only johto:event11
tag @a[tag=Clair,tag=Pryce,tag=Jasmine,tag=Chuck,tag=Morty,tag=Whitney,tag=Bugsy,tag=Falkner,tag=Brock,tag=Misty,tag=Surge,tag=Erika,tag=Janine,tag=Sabrina,tag=Blaine,tag=Blue,tag=!AllGyms] add AllGyms


#All Week Siblings achievement
advancement grant @a[tag=Dialogue187,tag=Dialogue188,tag=Dialogue189,tag=Dialogue190,tag=Dialogue191,tag=Dialogue192,tag=Dialogue193] only johto:weeksiblings

#Returns the Azure Flute to player
execute as @a[scores={ArceusCD=1}] run playsound minecraft:entity.lightning.thunder ambient @s ~ ~ ~ 10 1 1
execute as @a[scores={ArceusCD=1}] run playsound minecraft:entity.lightning.impact ambient @s ~ ~ ~ 10 1 1
###execute as @a[scores={ArceusCD=1}] run give @s pixelmon:azure_flute{display:{Lore:["A flute that puts out echoing","sounds that do not seem to be of","this world. No one knows who made","it. It seems to call to the","highest mountains."]}}
execute as @a[scores={ArceusCD=1}] run playsound arceus ambient @s ~ ~ ~ 1000 1 1
execute as @a[scores={ArceusCD=1}] run scoreboard players remove @s ArceusCD 1


#Dialga Returning a Red Chain
execute as @a[scores={DialgaCD=1}] run playsound minecraft:entity.lightning.thunder ambient @s ~ ~ ~ 10 1 1
execute as @a[scores={DialgaCD=1}] run playsound minecraft:entity.lightning.impact ambient @s ~ ~ ~ 10 1 1
###execute @a[scores={DialgaCD=1}] run give @s pixelmon:red_chain{display:{Lore:["A chain used in summoning Dialga,","Palkia and Giratina at an alter."]}}
execute as @a[scores={DialgaCD=1}] run playsound dialga ambient @s ~ ~ ~ 1000 1 1
execute as @a[scores={DialgaCD=1}] run scoreboard players remove @s DialgaCD 1


#Palkia Returning a Red Chain
execute as @a[scores={PalkiaCD=1}] run playsound minecraft:entity.lightning.thunder ambient @s ~ ~ ~ 10 1 1
execute as @a[scores={PalkiaCD=1}] run playsound minecraft:entity.lightning.impact ambient @s ~ ~ ~ 10 1 1
###execute as @a[scores={PalkiaCD=1}] run give @s pixelmon:red_chain{display:{Lore:["A chain used in summoning Dialga,","Palkia and Giratina at an alter."]}}
execute as @a[scores={PalkiaCD=1}] run playsound palkia ambient @s ~ ~ ~ 1000 1 1
execute as @a[scores={PalkiaCD=1}] run scoreboard players remove @s PalkiaCD 1


#Giratina Returning a Red Chain
execute as @a[scores={GiratinaCD=1}] run playsound minecraft:entity.lightning.thunder ambient @s ~ ~ ~ 10 1 1
execute as @a[scores={GiratinaCD=1}] run playsound minecraft:entity.lightning.impact ambient @s ~ ~ ~ 10 1 1
###execute as @a[scores={GiratinaCD=1}] run give @s pixelmon:red_chain{display:{Lore:["A chain used in summoning Dialga,","Palkia and Giratina at an alter."]}}
execute as @a[scores={GiratinaCD=1}] run playsound giratina ambient @s ~ ~ ~ 1000 1 1
execute as @a[scores={GiratinaCD=1}] run scoreboard players remove @s GiratinaCD 1






#Kills Plate Merchant in Goldenrod Underground, post-Arceus encounter
execute at @p[x=513,y=54,z=-368,distance=..100,scores={Arceus=0}] run execute as @e[x=513,y=55,z=-368,distance=..1,nbt=!{pixelmon:npc_shopkeeper}] run particle cloud ~ ~ ~ 1 1 1 1 100
execute at @p[x=513,y=54,z=-368,distance=..100,scores={Arceus=0}] run tp @e[x=513,y=55,z=-368,distance=..1,nbt=!{pixelmon:npc_shopkeeper}] -815 70 -228
execute at @p[x=513,y=54,z=-368,distance=..100,scores={Arceus=0}] run data merge block 511 57 -370 {x:511,Text4:"{\"text\":\"collecting!\"}",y:57,Text3:"{\"text\":\"Currently out\"}",z:-370,Text2:"{\"text\":\"\"}",id:"minecraft:sign",Text1:"{\"text\":\"Exotic Plates\"}"}



#Spawns Plate Merchant
execute at @p[x=513,y=54,z=-368,distance=..100,scores={Arceus=1..}] run tp @e[x=-815,y=69,z=-228,dy=3,nbt=!{pixelmon:npc_shopkeeper}] 513 55 -368
execute at @p[x=513,y=54,z=-368,distance=..100,scores={Arceus=1..}] run execute as @e[x=-815,y=69,z=-228,dy=3,nbt=!{pixelmon:npc_shopkeeper}] run particle cloud 513 54 -368 1 1 1 1 100
execute at @p[x=513,y=54,z=-368,distance=..100,scores={Arceus=1..}] run data merge block 511 57 -370 {x:511,Text4:"{\"text\":\"Open!\"}",y:57,Text3:"{\"text\":\"Now\"}",z:-370,Text2:"{\"text\":\"\"}",id:"minecraft:sign",Text1:"{\"text\":\"Exotic Plates\"}"}




#Returns Statue Trap Team Rocket grunts if nobody is in the Rocket HQ
execute as @a[x=-178,y=0,z=152,dx=121,dy=63,dz=73] run tag @e[x=-792,y=65,z=-284,dy=3,type=armor_stand] add Skip

execute as @e[x=-792,y=65,z=-284,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=-79,y=53,z=214,dy=3,nbt=!{pixelmon:npc_trainer}] -815 93 -240
execute as @e[x=-792,y=65,z=-284,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=-157,y=53,z=198,dy=3,nbt=!{pixelmon:npc_trainer}] -815 93 -238
execute as @e[x=-792,y=65,z=-284,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=-149,y=53,z=161,dy=3,nbt=!{pixelmon:npc_trainer}] -815 93 -236
execute as @e[x=-792,y=65,z=-284,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=-95,y=53,z=161,dy=3,nbt=!{pixelmon:npc_trainer}] -815 93 -234
execute as @e[x=-792,y=65,z=-284,dy=3,type=armor_stand,tag=!Skip] run tp @e[x=-132,y=53,z=215,dy=3,nbt=!{pixelmon:npc_trainer}] -815 94 -242

execute as @a[x=-178,y=0,z=152,dx=121,dy=63,dz=73] run tag @e[x=-792,y=65,z=-284,dy=3,type=armor_stand] remove Skip



#Return TPs the weekday siblings if present

#Monica
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=2..7}] run execute as @e[x=913,y=63,z=-54,dy=3,nbt=!{pixelmon:npc_chatting}] run particle cloud ~ ~ ~ 1 1 1 1 100
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=2..7}] run tp @e[x=913,y=63,z=-54,dy=3,nbt=!{pixelmon:npc_chatting}] -815 65 -228

#Tuscany
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=1}] run execute as @e[x=-482,y=63,z=-535,dy=3,nbt=!{pixelmon:npc_chatting}] run particle cloud ~ ~ ~ 1 1 1 1 100
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=3..7}] run execute as @e[x=-482,y=63,z=-535,dy=3,nbt=!{pixelmon:npc_chatting}] run particle cloud ~ ~ ~ 1 1 1 1 100

execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=1}] run tp @e[x=-482,y=63,z=-535,dy=3,nbt=!{pixelmon:npc_chatting}] -815 65 -226
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=3..7}] run tp @e[x=-482,y=63,z=-535,dy=3,nbt=!{pixelmon:npc_chatting}] -815 65 -226

#Wesley
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=1..2}] run execute as @e[x=-56,y=63,z=722,dy=3,nbt=!{pixelmon:npc_chatting}] run particle cloud ~ ~ ~ 1 1 1 1 100
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=4..7}] run execute as @e[x=-56,y=63,z=722,dy=3,nbt=!{pixelmon:npc_chatting}] run particle cloud ~ ~ ~ 1 1 1 1 100

execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=1..2}] run tp @e[x=-56,y=63,z=722,dy=3,nbt=!{pixelmon:npc_chatting}] -815 65 -224
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=4..7}] run tp @e[x=-56,y=63,z=722,dy=3,nbt=!{pixelmon:npc_chatting}] -815 65 -224

#Arthur
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=1..3}] run execute as @e[x=236,y=63,z=-6,dy=3,nbt=!{pixelmon:npc_chatting}] run particle cloud ~ ~ ~ 1 1 1 1 100
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=5..7}] run execute as @e[x=236,y=63,z=-6,dy=3,nbt=!{pixelmon:npc_chatting}] run particle cloud ~ ~ ~ 1 1 1 1 100

execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=1..3}] run tp @e[x=236,y=63,z=-6,dy=3,nbt=!{pixelmon:npc_chatting}] -815 65 -222
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=5..7}] run tp @e[x=236,y=63,z=-6,dy=3,nbt=!{pixelmon:npc_chatting}] -815 65 -222

#Frieda
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=1..4}] run execute as @e[x=127,y=63,z=-545,dy=3,nbt=!{pixelmon:npc_chatting}] run particle cloud ~ ~ ~ 1 1 1 1 100
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=6..7}] run execute as @e[x=127,y=63,z=-545,dy=3,nbt=!{pixelmon:npc_chatting}] run particle cloud ~ ~ ~ 1 1 1 1 100

execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=1..4}] run tp @e[x=127,y=63,z=-545,dy=3,nbt=!{pixelmon:npc_chatting}] -815 65 -220
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=6..7}] run tp @e[x=127,y=63,z=-545,dy=3,nbt=!{pixelmon:npc_chatting}] -815 65 -220

#Santos
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=1..5}] run execute as @e[x=-663,y=63,z=225,dy=3,nbt=!{pixelmon:npc_chatting}] run particle cloud ~ ~ ~ 1 1 1 1 100
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=7}] run execute as @e[x=-663,y=63,z=225,dy=3,nbt=!{pixelmon:npc_chatting}] run particle cloud ~ ~ ~ 1 1 1 1 100

execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=1..5}] run tp @e[x=-663,y=63,z=225,dy=3,nbt=!{pixelmon:npc_chatting}] -815 65 -218
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=7}] run tp @e[x=-663,y=63,z=225,dy=3,nbt=!{pixelmon:npc_chatting}] -815 65 -218

#Sunny
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=1..6}] run execute as @e[x=335,y=64,z=113,dy=3,nbt=!{pixelmon:npc_chatting}] run particle cloud ~ ~ ~ 1 1 1 1 100

execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=1..6}] run tp @e[x=335,y=64,z=113,dy=3,nbt=!{pixelmon:npc_chatting}] -815 65 -216






#Removes GuideGent tags so players can re-listen if wanted
tag @a[tag=Dialogue209] remove Dialogue209
tag @a[tag=Dialogue210] remove Dialogue210
tag @a[tag=Dialogue211] remove Dialogue211
tag @a[tag=Dialogue212] remove Dialogue212
tag @a[tag=Dialogue197] remove Dialogue197
tag @a[tag=Dialogue213] remove Dialogue213

#Return TPs guide gent if in house and player could use tour
execute as @a[x=-223,y=64,z=-512,distance=..100,tag=!GuideTour,scores={TalkTime=0}] run tp @e[x=-230,y=64,z=-519,distance=..1,nbt=!{pixelmon:npc_chatting}] -270 64 -505





#Tps in and out the Shady Merchant selling Slowpoke Tails on Route 32
execute as @p[x=147,y=64,z=-562,distance=..50,tag=Dialogue16] run tp @e[x=147,y=63,z=-562,dy=3,nbt=!{pixelmon:npc_shopkeeper}] -815 70 -223
execute as @p[x=147,y=64,z=-562,distance=..50,tag=!Dialogue16] run tp @e[x=-815,y=69,z=-223,dy=3,nbt=!{pixelmon:npc_shopkeeper}] 147 64 -562






#Night Trainers
#/scoreboard players tag @e[x=-792,y=65,z=-284,dy=3,type=armor_stand] add Night
#/scoreboard players tag @e[x=-792,y=65,z=-284,dy=3,type=armor_stand] remove Night

#tps in Trainers

#Route 34 Policeman
execute at @a[x=477,y=64,z=-536,distance=..100] run execute as @e[x=-792,y=65,z=-284,dy=3,type=armor_stand,tag=Night] run execute as @e[x=-815,y=64,z=-211,dy=3,nbt=!{pixelmon:npc_trainer}] run particle cloud 477 64 -536 1 1 1 1 100
execute at @a[x=477,y=64,z=-536,distance=..100] run execute as @e[x=-792,y=65,z=-284,dy=3,type=armor_stand,tag=Night] run tp @e[x=-815,y=64,z=-211,dy=3,nbt=!{pixelmon:npc_trainer}] 477 64 -536

#Route 35 Policeman
execute at @a[x=504,y=64,z=-100,distance=..100] run execute as @e[x=-792,y=65,z=-284,dy=3,type=armor_stand,tag=Night] run execute as @e[x=-815,y=64,z=-209,dy=3,nbt=!{pixelmon:npc_trainer}] run particle cloud 504 64 -100 1 1 1 1 100
execute at @a[x=504,y=64,z=-100,distance=..100] run execute as @e[x=-792,y=65,z=-284,dy=3,type=armor_stand,tag=Night] run tp @e[x=-815,y=64,z=-209,dy=3,nbt=!{pixelmon:npc_trainer}] 504 64 -100

#Route 39 Poke Fan
execute at @a[x=787,y=64,z=157,distance=..100] run execute as @e[x=-792,y=65,z=-284,dy=3,type=armor_stand,tag=Night] run execute as @e[x=-815,y=64,z=-207,dy=3,nbt=!{pixelmon:npc_trainer}] run particle cloud 787 64 157 1 1 1 1 100
execute at @a[x=787,y=64,z=157,distance=..100] run execute as @e[x=-792,y=65,z=-284,dy=3,type=armor_stand,tag=Night] run tp @e[x=-815,y=64,z=-207,dy=3,nbt=!{pixelmon:npc_trainer}] 787 64 157



#tps trainers out

#Route 34 Policeman
execute as @e[x=-792,y=65,z=-284,dy=3,type=armor_stand,tag=!Night] run execute as @e[x=477,y=63,z=-536,dy=3,nbt=!{pixelmon:npc_trainer}] run particle cloud ~ ~ ~ 1 1 1 1 100
execute as @e[x=-792,y=65,z=-284,dy=3,type=armor_stand,tag=!Night] run tp @e[x=477,y=63,z=-536,dy=3,nbt=!{pixelmon:npc_trainer}] -815 65 -211


#Route 35 Policeman
execute as @e[x=-792,y=65,z=-284,dy=3,type=armor_stand,tag=!Night] run execute as @e[x=504,y=63,z=-100,dy=3,nbt=!{pixelmon:npc_trainer}] run particle cloud 504 64 -100 1 1 1 1 100
execute as @e[x=-792,y=65,z=-284,dy=3,type=armor_stand,tag=!Night] run tp @e[x=504,y=63,z=-100,dy=3,nbt=!{pixelmon:npc_trainer}] -815 65 -209


#Route 39 Poke Fan
execute as @e[x=-792,y=65,z=-284,dy=3,type=armor_stand,tag=!Night] run execute as @e[x=787,y=63,z=157,dy=3,nbt=!{pixelmon:npc_trainer}] run particle cloud 787 64 157 1 1 1 1 100
execute as @e[x=-792,y=65,z=-284,dy=3,type=armor_stand,tag=!Night] run tp @e[x=787,y=63,z=157,dy=3,nbt=!{pixelmon:npc_trainer}] -815 65 -207


#Un-sticks Dialogues if player has TalkTime score but not a DialogueTrigger score
execute as @a[scores={DialogueTrigger=0,TalkTime=1..}] run tellraw @s {"text":"Dialogue desync detected, resyncing...","italic":true,"color":"gray"}
execute as @a[scores={DialogueTrigger=0,TalkTime=1..}] run scoreboard players set @s TalkTime 0




#Reclones in starter balls
clone -690 62 -487 -686 62 -487 -689 65 -479








#
