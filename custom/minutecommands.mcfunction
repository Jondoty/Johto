#Item Clears
clear @a[m=2] minecraft:ender_pearl
clear @a[m=2] minecraft:log
clear @a[m=2] pixelmon:tree


#Enables Unown Spawning in Ruins of Alph when any puzzle is complete
#scoreboard players tag @e[x=-792,y=65,z=-284,dy=3,type=armor_stand] add UnownSpawning
execute @e[x=-792,y=65,z=-284,dy=3,type=armor_stand,tag=UnownSpawning] ~ ~ ~ /setblock -880 67 -302 minecraft:redstone_block





#Gives player AllGyms tag and achievement
execute @a[tag=Clair] ~ ~ ~ /execute @s[tag=Pryce] ~ ~ ~ /execute @s[tag=Jasmine] ~ ~ ~ /execute @s[tag=Chuck] ~ ~ ~ /execute @s[tag=Morty] ~ ~ ~ /execute @s[tag=Whitney] ~ ~ ~ /execute @s[tag=Bugsy] ~ ~ ~ /execute @s[tag=Falkner] ~ ~ ~ /execute @s[tag=Brock] ~ ~ ~ /execute @s[tag=Misty] ~ ~ ~ /execute @s[tag=Surge] ~ ~ ~ /execute @s[tag=Erika] ~ ~ ~ /execute @s[tag=Janine] ~ ~ ~ /execute @s[tag=Sabrina] ~ ~ ~ /execute @s[tag=Blaine] ~ ~ ~ /execute @s[tag=Blue] ~ ~ ~ /advancement grant @s[tag=!AllGyms] only johto:event11
execute @a[tag=Clair] ~ ~ ~ /execute @s[tag=Pryce] ~ ~ ~ /execute @s[tag=Jasmine] ~ ~ ~ /execute @s[tag=Chuck] ~ ~ ~ /execute @s[tag=Morty] ~ ~ ~ /execute @s[tag=Whitney] ~ ~ ~ /execute @s[tag=Bugsy] ~ ~ ~ /execute @s[tag=Falkner] ~ ~ ~ /execute @s[tag=Brock] ~ ~ ~ /execute @s[tag=Misty] ~ ~ ~ /execute @s[tag=Surge] ~ ~ ~ /execute @s[tag=Erika] ~ ~ ~ /execute @s[tag=Janine] ~ ~ ~ /execute @s[tag=Sabrina] ~ ~ ~ /execute @s[tag=Blaine] ~ ~ ~ /execute @s[tag=Blue] ~ ~ ~ /scoreboard players tag @s[tag=!AllGyms] add AllGyms


#All Week Siblings achievement
execute @a[tag=Dialogue187] ~ ~ ~ execute @s[tag=Dialogue188] ~ ~ ~ execute @s[tag=Dialogue189] ~ ~ ~ execute @s[tag=Dialogue190] ~ ~ ~ execute @s[tag=Dialogue191] ~ ~ ~ execute @s[tag=Dialogue192] ~ ~ ~ execute @s[tag=Dialogue193] ~ ~ ~ advancement grant @s only johto:weeksiblings

#Returns the Azure Flute to player
execute @a[score_ArceusCD_min=1,score_ArceusCD=1] ~ ~ ~ playsound minecraft:entity.lightning.thunder ambient @s ~ ~ ~ 10 1 1
execute @a[score_ArceusCD_min=1,score_ArceusCD=1] ~ ~ ~ playsound minecraft:entity.lightning.impact ambient @s ~ ~ ~ 10 1 1
execute @a[score_ArceusCD_min=1,score_ArceusCD=1] ~ ~ ~ give @s pixelmon:azure_flute 1 0 {display:{Lore:["A flute that puts out echoing","sounds that do not seem to be of","this world. No one knows who made","it. It seems to call to the","highest mountains."]}}
execute @a[score_ArceusCD_min=1,score_ArceusCD=1] ~ ~ ~ playsound arceus ambient @s ~ ~ ~ 1000 1 1
execute @a[score_ArceusCD_min=1,score_ArceusCD=1] ~ ~ ~ scoreboard players remove @s ArceusCD 1


#Dialga Returning a Red Chain
execute @a[score_DialgaCD_min=1,score_DialgaCD=1] ~ ~ ~ playsound minecraft:entity.lightning.thunder ambient @s ~ ~ ~ 10 1 1
execute @a[score_DialgaCD_min=1,score_DialgaCD=1] ~ ~ ~ playsound minecraft:entity.lightning.impact ambient @s ~ ~ ~ 10 1 1
execute @a[score_DialgaCD_min=1,score_DialgaCD=1] ~ ~ ~ give @s pixelmon:red_chain 1 0 {display:{Lore:["A chain used in summoning Dialga,","Palkia and Giratina at an alter."]}}
execute @a[score_DialgaCD_min=1,score_DialgaCD=1] ~ ~ ~ playsound dialga ambient @s ~ ~ ~ 1000 1 1
execute @a[score_DialgaCD_min=1,score_DialgaCD=1] ~ ~ ~ scoreboard players remove @s DialgaCD 1


#Palkia Returning a Red Chain
execute @a[score_PalkiaCD_min=1,score_PalkiaCD=1] ~ ~ ~ playsound minecraft:entity.lightning.thunder ambient @s ~ ~ ~ 10 1 1
execute @a[score_PalkiaCD_min=1,score_PalkiaCD=1] ~ ~ ~ playsound minecraft:entity.lightning.impact ambient @s ~ ~ ~ 10 1 1
execute @a[score_PalkiaCD_min=1,score_PalkiaCD=1] ~ ~ ~ give @s pixelmon:red_chain 1 0 {display:{Lore:["A chain used in summoning Dialga,","Palkia and Giratina at an alter."]}}
execute @a[score_PalkiaCD_min=1,score_PalkiaCD=1] ~ ~ ~ playsound palkia ambient @s ~ ~ ~ 1000 1 1
execute @a[score_PalkiaCD_min=1,score_PalkiaCD=1] ~ ~ ~ scoreboard players remove @s PalkiaCD 1


#Giratina Returning a Red Chain
execute @a[score_GiratinaCD_min=1,score_GiratinaCD=1] ~ ~ ~ playsound minecraft:entity.lightning.thunder ambient @s ~ ~ ~ 10 1 1
execute @a[score_GiratinaCD_min=1,score_GiratinaCD=1] ~ ~ ~ playsound minecraft:entity.lightning.impact ambient @s ~ ~ ~ 10 1 1
execute @a[score_GiratinaCD_min=1,score_GiratinaCD=1] ~ ~ ~ give @s pixelmon:red_chain 1 0 {display:{Lore:["A chain used in summoning Dialga,","Palkia and Giratina at an alter."]}}
execute @a[score_GiratinaCD_min=1,score_GiratinaCD=1] ~ ~ ~ playsound giratina ambient @s ~ ~ ~ 1000 1 1
execute @a[score_GiratinaCD_min=1,score_GiratinaCD=1] ~ ~ ~ scoreboard players remove @s GiratinaCD 1






#Kills Plate Merchant in Goldenrod Underground, post-Arceus encounter
execute @p[x=513,y=54,z=-368,r=100,score_Arceus=0] ~ ~ ~ execute @e[x=513,y=55,z=-368,r=1,type=pixelmon:npc_shopkeeper] ~ ~ ~ particle cloud ~ ~ ~ 1 1 1 1 100
execute @p[x=513,y=54,z=-368,r=100,score_Arceus=0] ~ ~ ~ tp @e[x=513,y=55,z=-368,r=1,type=pixelmon:npc_shopkeeper] -815 70 -228
execute @p[x=513,y=54,z=-368,r=100,score_Arceus=0] ~ ~ ~ blockdata 511 57 -370 {x:511,Text4:"{\"text\":\"collecting!\"}",y:57,Text3:"{\"text\":\"Currently out\"}",z:-370,Text2:"{\"text\":\"\"}",id:"minecraft:sign",Text1:"{\"text\":\"Exotic Plates\"}"}



#Spawns Plate Merchant
execute @p[x=513,y=54,z=-368,r=100,score_Arceus_min=1] ~ ~ ~ tp @e[x=-815,y=69,z=-228,dy=3,type=pixelmon:npc_shopkeeper] 513 55 -368
execute @p[x=513,y=54,z=-368,r=100,score_Arceus_min=1] ~ ~ ~ execute @e[x=-815,y=69,z=-228,dy=3,type=pixelmon:npc_shopkeeper] ~ ~ ~ particle cloud 513 54 -368 1 1 1 1 100
execute @p[x=513,y=54,z=-368,r=100,score_Arceus_min=1] ~ ~ ~ blockdata 511 57 -370 {x:511,Text4:"{\"text\":\"Open!\"}",y:57,Text3:"{\"text\":\"Now\"}",z:-370,Text2:"{\"text\":\"\"}",id:"minecraft:sign",Text1:"{\"text\":\"Exotic Plates\"}"}




#Returns Statue Trap Team Rocket grunts if nobody is in the Rocket HQ
execute @a[x=-178,y=0,z=152,dx=121,dy=63,dz=73] ~ ~ ~ scoreboard players set @e[x=-792,y=65,z=-284,dy=3,type=armor_stand] add Skip

execute @e[x=-792,y=65,z=-284,dy=3,type=armor_stand,tag=!Skip] ~ ~ ~ tp @e[x=-79,y=53,z=214,dy=3,type=pixelmon:npc_trainer] -815 93 -240
execute @e[x=-792,y=65,z=-284,dy=3,type=armor_stand,tag=!Skip] ~ ~ ~ tp @e[x=-157,y=53,z=198,dy=3,type=pixelmon:npc_trainer] -815 93 -238
execute @e[x=-792,y=65,z=-284,dy=3,type=armor_stand,tag=!Skip] ~ ~ ~ tp @e[x=-149,y=53,z=161,dy=3,type=pixelmon:npc_trainer] -815 93 -236
execute @e[x=-792,y=65,z=-284,dy=3,type=armor_stand,tag=!Skip] ~ ~ ~ tp @e[x=-95,y=53,z=161,dy=3,type=pixelmon:npc_trainer] -815 93 -234
execute @e[x=-792,y=65,z=-284,dy=3,type=armor_stand,tag=!Skip] ~ ~ ~ tp @e[x=-132,y=53,z=215,dy=3,type=pixelmon:npc_trainer] -815 94 -242

execute @a[x=-178,y=0,z=152,dx=121,dy=63,dz=73] ~ ~ ~ scoreboard players set @e[x=-792,y=65,z=-284,dy=3,type=armor_stand] remove Skip



#Return TPs the weekday siblings if present

#Monica
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=2,score_WeekdayTrack=7] ~ ~ ~ execute @e[x=913,y=63,z=-54,dy=3,type=pixelmon:npc_chatting] ~ ~ ~ particle cloud ~ ~ ~ 1 1 1 1 100
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=2,score_WeekdayTrack=7] ~ ~ ~ tp @e[x=913,y=63,z=-54,dy=3,type=pixelmon:npc_chatting] -815 65 -228

#Tuscany
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=1,score_WeekdayTrack=1] ~ ~ ~ execute @e[x=-482,y=63,z=-535,dy=3,type=pixelmon:npc_chatting] ~ ~ ~ particle cloud ~ ~ ~ 1 1 1 1 100
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=3,score_WeekdayTrack=7] ~ ~ ~ execute @e[x=-482,y=63,z=-535,dy=3,type=pixelmon:npc_chatting] ~ ~ ~ particle cloud ~ ~ ~ 1 1 1 1 100

execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=1,score_WeekdayTrack=1] ~ ~ ~ tp @e[x=-482,y=63,z=-535,dy=3,type=pixelmon:npc_chatting] -815 65 -226
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=3,score_WeekdayTrack=7] ~ ~ ~ tp @e[x=-482,y=63,z=-535,dy=3,type=pixelmon:npc_chatting] -815 65 -226

#Wesley
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=1,score_WeekdayTrack=2] ~ ~ ~ execute @e[x=-56,y=63,z=722,dy=3,type=pixelmon:npc_chatting] ~ ~ ~ particle cloud ~ ~ ~ 1 1 1 1 100
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=4,score_WeekdayTrack=7] ~ ~ ~ execute @e[x=-56,y=63,z=722,dy=3,type=pixelmon:npc_chatting] ~ ~ ~ particle cloud ~ ~ ~ 1 1 1 1 100

execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=1,score_WeekdayTrack=2] ~ ~ ~ tp @e[x=-56,y=63,z=722,dy=3,type=pixelmon:npc_chatting] -815 65 -224
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=4,score_WeekdayTrack=7] ~ ~ ~ tp @e[x=-56,y=63,z=722,dy=3,type=pixelmon:npc_chatting] -815 65 -224

#Arthur
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=1,score_WeekdayTrack=3] ~ ~ ~ execute @e[x=236,y=63,z=-6,dy=3,type=pixelmon:npc_chatting] ~ ~ ~ particle cloud ~ ~ ~ 1 1 1 1 100
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=5,score_WeekdayTrack=7] ~ ~ ~ execute @e[x=236,y=63,z=-6,dy=3,type=pixelmon:npc_chatting] ~ ~ ~ particle cloud ~ ~ ~ 1 1 1 1 100

execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=1,score_WeekdayTrack=3] ~ ~ ~ tp @e[x=236,y=63,z=-6,dy=3,type=pixelmon:npc_chatting] -815 65 -222
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=5,score_WeekdayTrack=7] ~ ~ ~ tp @e[x=236,y=63,z=-6,dy=3,type=pixelmon:npc_chatting] -815 65 -222

#Frieda
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=1,score_WeekdayTrack=4] ~ ~ ~ execute @e[x=127,y=63,z=-545,dy=3,type=pixelmon:npc_chatting] ~ ~ ~ particle cloud ~ ~ ~ 1 1 1 1 100
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=6,score_WeekdayTrack=7] ~ ~ ~ execute @e[x=127,y=63,z=-545,dy=3,type=pixelmon:npc_chatting] ~ ~ ~ particle cloud ~ ~ ~ 1 1 1 1 100

execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=1,score_WeekdayTrack=4] ~ ~ ~ tp @e[x=127,y=63,z=-545,dy=3,type=pixelmon:npc_chatting] -815 65 -220
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=6,score_WeekdayTrack=7] ~ ~ ~ tp @e[x=127,y=63,z=-545,dy=3,type=pixelmon:npc_chatting] -815 65 -220

#Santos
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=1,score_WeekdayTrack=5] ~ ~ ~ execute @e[x=-663,y=63,z=225,dy=3,type=pixelmon:npc_chatting] ~ ~ ~ particle cloud ~ ~ ~ 1 1 1 1 100
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=7,score_WeekdayTrack=7] ~ ~ ~ execute @e[x=-663,y=63,z=225,dy=3,type=pixelmon:npc_chatting] ~ ~ ~ particle cloud ~ ~ ~ 1 1 1 1 100

execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=1,score_WeekdayTrack=5] ~ ~ ~ tp @e[x=-663,y=63,z=225,dy=3,type=pixelmon:npc_chatting] -815 65 -218
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=7,score_WeekdayTrack=7] ~ ~ ~ tp @e[x=-663,y=63,z=225,dy=3,type=pixelmon:npc_chatting] -815 65 -218

#Sunny
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=1,score_WeekdayTrack=6] ~ ~ ~ execute @e[x=335,y=64,z=113,dy=3,type=pixelmon:npc_chatting] ~ ~ ~ particle cloud ~ ~ ~ 1 1 1 1 100

execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=1,score_WeekdayTrack=6] ~ ~ ~ tp @e[x=335,y=64,z=113,dy=3,type=pixelmon:npc_chatting] -815 65 -216






#Removes GuideGent tags so players can re-listen if wanted
scoreboard players tag @a[tag=Dialogue209] remove Dialogue209
scoreboard players tag @a[tag=Dialogue210] remove Dialogue210
scoreboard players tag @a[tag=Dialogue211] remove Dialogue211
scoreboard players tag @a[tag=Dialogue212] remove Dialogue212
scoreboard players tag @a[tag=Dialogue197] remove Dialogue197
scoreboard players tag @a[tag=Dialogue213] remove Dialogue213

#Return TPs guide gent if in house and player could use tour
execute @a[x=-223,y=64,z=-512,r=100,tag=!GuideTour,score_TalkTime=0] ~ ~ ~ tp @e[x=-230,y=64,z=-519,r=1,type=pixelmon:npc_chatting] -270 64 -505





#Tps in and out the Shady Merchant selling Slowpoke Tails on Route 32
execute @p[x=147,y=64,z=-562,r=50,tag=Dialogue16] ~ ~ ~ tp @e[x=147,y=63,z=-562,dy=3,type=pixelmon:npc_shopkeeper] -815 70 -223
execute @p[x=147,y=64,z=-562,r=50,tag=!Dialogue16] ~ ~ ~ tp @e[x=-815,y=69,z=-223,dy=3,type=pixelmon:npc_shopkeeper] 147 64 -562






#Night Trainers
#/scoreboard players tag @e[x=-792,y=65,z=-284,dy=3,type=armor_stand] add Night
#/scoreboard players tag @e[x=-792,y=65,z=-284,dy=3,type=armor_stand] remove Night

#tps in Trainers

#Route 34 Policeman
execute @a[x=477,y=64,z=-536,r=100] ~ ~ ~ execute @e[x=-792,y=65,z=-284,dy=3,type=armor_stand,tag=Night] ~ ~ ~ execute @e[x=-815,y=64,z=-211,dy=3,type=pixelmon:npc_trainer] ~ ~ ~ particle cloud 477 64 -536 1 1 1 1 100
execute @a[x=477,y=64,z=-536,r=100] ~ ~ ~ execute @e[x=-792,y=65,z=-284,dy=3,type=armor_stand,tag=Night] ~ ~ ~ tp @e[x=-815,y=64,z=-211,dy=3,type=pixelmon:npc_trainer] 477 64 -536

#Route 35 Policeman
execute @a[x=504,y=64,z=-100,r=100] ~ ~ ~ execute @e[x=-792,y=65,z=-284,dy=3,type=armor_stand,tag=Night] ~ ~ ~ execute @e[x=-815,y=64,z=-209,dy=3,type=pixelmon:npc_trainer] ~ ~ ~ particle cloud 504 64 -100 1 1 1 1 100
execute @a[x=504,y=64,z=-100,r=100] ~ ~ ~ execute @e[x=-792,y=65,z=-284,dy=3,type=armor_stand,tag=Night] ~ ~ ~ tp @e[x=-815,y=64,z=-209,dy=3,type=pixelmon:npc_trainer] 504 64 -100

#Route 39 Poke Fan
execute @a[x=787,y=64,z=157,r=100] ~ ~ ~ execute @e[x=-792,y=65,z=-284,dy=3,type=armor_stand,tag=Night] ~ ~ ~ execute @e[x=-815,y=64,z=-207,dy=3,type=pixelmon:npc_trainer] ~ ~ ~ particle cloud 787 64 157 1 1 1 1 100
execute @a[x=787,y=64,z=157,r=100] ~ ~ ~ execute @e[x=-792,y=65,z=-284,dy=3,type=armor_stand,tag=Night] ~ ~ ~ tp @e[x=-815,y=64,z=-207,dy=3,type=pixelmon:npc_trainer] 787 64 157



#tps trainers out

#Route 34 Policeman
execute @e[x=-792,y=65,z=-284,dy=3,type=armor_stand,tag=!Night] ~ ~ ~ execute @e[x=477,y=63,z=-536,dy=3,type=pixelmon:npc_trainer] ~ ~ ~ particle cloud ~ ~ ~ 1 1 1 1 100
execute @e[x=-792,y=65,z=-284,dy=3,type=armor_stand,tag=!Night] ~ ~ ~ tp @e[x=477,y=63,z=-536,dy=3,type=pixelmon:npc_trainer] -815 65 -211


#Route 35 Policeman
execute @e[x=-792,y=65,z=-284,dy=3,type=armor_stand,tag=!Night] ~ ~ ~ execute @e[x=504,y=63,z=-100,dy=3,type=pixelmon:npc_trainer] ~ ~ ~ particle cloud 504 64 -100 1 1 1 1 100
execute @e[x=-792,y=65,z=-284,dy=3,type=armor_stand,tag=!Night] ~ ~ ~ tp @e[x=504,y=63,z=-100,dy=3,type=pixelmon:npc_trainer] -815 65 -209


#Route 39 Poke Fan
execute @e[x=-792,y=65,z=-284,dy=3,type=armor_stand,tag=!Night] ~ ~ ~ execute @e[x=787,y=63,z=157,dy=3,type=pixelmon:npc_trainer] ~ ~ ~ particle cloud 787 64 157 1 1 1 1 100
execute @e[x=-792,y=65,z=-284,dy=3,type=armor_stand,tag=!Night] ~ ~ ~ tp @e[x=787,y=63,z=157,dy=3,type=pixelmon:npc_trainer] -815 65 -207


#Un-sticks Dialogues if player has TalkTime score but not a DialogueTrigger score
execute @a[score_DialogueTrigger=0] ~ ~ ~ tellraw @s[score_TalkTime_min=1] {"text":"Dialogue desync detected, resyncing...","italic":true,"color":"gray"}
execute @a[score_DialogueTrigger=0] ~ ~ ~ scoreboard players set @s[score_TalkTime_min=1] TalkTime 0




#Reclones in starter balls
clone -690 62 -487 -686 62 -487 -689 65 -479








#
