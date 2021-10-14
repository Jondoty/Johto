#Music Cooldown score determined by (seconds of file x 20)
#Removes one MusicCooldown score every MC tick, or 20 ticks per second



#Adds Music State for players currently holding the Radio in the 2nd slot of offhand
scoreboard players set @a[score_MusicState=0] MusicState 1 {Inventory:[{tag:{display:{Name:"Radio"}},Slot:1b}],SelectedItemSlot:1}
scoreboard players set @a[score_MusicState=0] MusicState 1 {Inventory:[{tag:{display:{Name:"Radio"}},Slot:-106b}]}


#Tags Legendary and Gym Leaders
execute @a[type=player] ~ ~ ~ /scoreboard players tag @e[r=15,type=pixelmon:pixelmon,tag=!Legendary] add Legendary {ndex:384s,OwnerUUID:""}
execute @a[type=player] ~ ~ ~ /scoreboard players tag @e[r=15,type=pixelmon:pixelmon,tag=!Legendary] add Legendary {ndex:380s,OwnerUUID:""}
execute @a[type=player] ~ ~ ~ /scoreboard players tag @e[r=15,type=pixelmon:pixelmon,tag=!Legendary] add Legendary {ndex:243s,OwnerUUID:""}
execute @a[type=player] ~ ~ ~ /scoreboard players tag @e[r=15,type=pixelmon:pixelmon,tag=!Legendary] add Legendary {ndex:484s,OwnerUUID:""}
execute @a[type=player] ~ ~ ~ /scoreboard players tag @e[r=15,type=pixelmon:pixelmon,tag=!Legendary] add Legendary {ndex:151s,OwnerUUID:""}
execute @a[type=player] ~ ~ ~ /scoreboard players tag @e[r=15,type=pixelmon:pixelmon,tag=!Legendary] add Legendary {ndex:146s,OwnerUUID:""}
execute @a[type=player] ~ ~ ~ /scoreboard players tag @e[r=15,type=pixelmon:pixelmon,tag=!Legendary] add Legendary {ndex:150s,OwnerUUID:""}
execute @a[type=player] ~ ~ ~ /scoreboard players tag @e[r=15,type=pixelmon:pixelmon,tag=!Legendary] add Legendary {ndex:245s,OwnerUUID:""}
execute @a[type=player] ~ ~ ~ /scoreboard players tag @e[r=15,type=pixelmon:pixelmon,tag=!Legendary] add Legendary {ndex:250s,OwnerUUID:""}
execute @a[type=player] ~ ~ ~ /scoreboard players tag @e[r=15,type=pixelmon:pixelmon,tag=!Legendary] add Legendary {ndex:249s,OwnerUUID:""}
execute @a[type=player] ~ ~ ~ /scoreboard players tag @e[r=15,type=pixelmon:pixelmon,tag=!Legendary] add Legendary {ndex:144s,OwnerUUID:""}
execute @a[type=player] ~ ~ ~ /scoreboard players tag @e[r=15,type=pixelmon:pixelmon,tag=!Legendary] add Legendary {ndex:145s,OwnerUUID:""}
execute @a[type=player] ~ ~ ~ /scoreboard players tag @e[r=15,type=pixelmon:pixelmon,tag=!Legendary] add Legendary {ndex:382s,OwnerUUID:""}
execute @a[type=player] ~ ~ ~ /scoreboard players tag @e[r=15,type=pixelmon:pixelmon,tag=!Legendary] add Legendary {ndex:283s,OwnerUUID:""}
execute @a[type=player] ~ ~ ~ /scoreboard players tag @e[r=15,type=pixelmon:pixelmon,tag=!Legendary] add Legendary {ndex:281s,OwnerUUID:""}
execute @a[type=player] ~ ~ ~ /scoreboard players tag @e[r=15,type=pixelmon:pixelmon,tag=!Legendary] add Legendary {ndex:244s,OwnerUUID:""}
execute @a[type=player] ~ ~ ~ /scoreboard players tag @e[r=15,type=pixelmon:pixelmon,tag=!Legendary] add Legendary {ndex:483s,OwnerUUID:""}
execute @a[type=player] ~ ~ ~ /scoreboard players tag @e[r=15,type=pixelmon:pixelmon,tag=!Legendary] add Legendary {ndex:487s,OwnerUUID:""}
execute @a[type=player] ~ ~ ~ /scoreboard players tag @e[r=15,type=pixelmon:pixelmon,tag=!ArceusBattle] add ArceusBattle {ndex:493s,OwnerUUID:""}

scoreboard players tag @e[type=pixelmon:npc_trainer,tag=!GymLeader,name=Bugsy] add GymLeader
scoreboard players tag @e[type=pixelmon:npc_trainer,tag=!GymLeader,name=Whitney] add GymLeader
scoreboard players tag @e[type=pixelmon:npc_trainer,tag=!GymLeader,name=Jasmine] add GymLeader
scoreboard players tag @e[type=pixelmon:npc_trainer,tag=!GymLeader,name=Pryce] add GymLeader
scoreboard players tag @e[type=pixelmon:npc_trainer,tag=!GymLeader,name=Clair] add GymLeader
scoreboard players tag @e[type=pixelmon:npc_trainer,tag=!GymLeader,name=Chuck] add GymLeader
scoreboard players tag @e[type=pixelmon:npc_trainer,tag=!GymLeader,name=Falkner] add GymLeader
scoreboard players tag @e[type=pixelmon:npc_trainer,tag=!GymLeader,name=Morty] add GymLeader

scoreboard players tag @e[type=pixelmon:npc_trainer,tag=!GymLeader,name=Brock] add GymLeader
scoreboard players tag @e[type=pixelmon:npc_trainer,tag=!GymLeader,name=Misty] add GymLeader
scoreboard players tag @e[type=pixelmon:npc_trainer,tag=!GymLeader,name=Surge] add GymLeader
scoreboard players tag @e[type=pixelmon:npc_trainer,tag=!GymLeader,name=Erika] add GymLeader
scoreboard players tag @e[type=pixelmon:npc_trainer,tag=!GymLeader,name=Sabrina] add GymLeader
scoreboard players tag @e[type=pixelmon:npc_trainer,tag=!GymLeader,name=Janine] add GymLeader
scoreboard players tag @e[type=pixelmon:npc_trainer,tag=!GymLeader,name=Blaine] add GymLeader
scoreboard players tag @e[type=pixelmon:npc_trainer,tag=!GymLeader,name=Blue] add GymLeader


#-----------------------Entity/Tag Based------------
#Bicycle music

#Adds Bicycle tag if player is riding on one
scoreboard players tag @a[score_MusicCooldown=0,score_MusicState_min=1] remove Bicycle
execute @e[type=pixelmon:bike] ~ ~ ~ /scoreboard players tag @a[r=1,tag=!Bicycle] add Bicycle

playsound bicycle record @a[tag=Bicycle,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[tag=Bicycle,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1320


#GymVictory tag
playsound gymvictory record @a[x=-1222,y=0,z=500,dx=470,dy=240,dz=342,score_MusicCooldown=0,score_MusicState_min=1,tag=GymVictory] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-1222,y=0,z=500,dx=470,dy=240,dz=342,score_MusicCooldown=0,score_MusicState_min=1,tag=GymVictory] MusicCooldown 1560


#Kanto Gym Leaders
execute @e[x=-1220,y=60,z=633,dx=313,dy=100,dz=196,tag=GymLeader,type=pixelmon:npc_trainer] ~ ~ ~ /playsound gymbattlekanto record @a[r=15,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
execute @e[x=-1220,y=60,z=633,dx=313,dy=100,dz=196,tag=GymLeader,type=pixelmon:npc_trainer] ~ ~ ~ /scoreboard players set @a[r=15,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1660



#Gym Leader radius
execute @e[tag=GymLeader,type=pixelmon:npc_trainer] ~ ~ ~ /playsound gymbattle record @a[r=15,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
execute @e[tag=GymLeader,type=pixelmon:npc_trainer] ~ ~ ~ /scoreboard players set @a[r=15,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2780



#Silver Trainer Battle
execute @e[name=Silver,type=pixelmon:npc_trainer] ~ ~ ~ /playsound rivalbattle record @a[r=15,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
execute @e[name=Silver,type=pixelmon:npc_trainer] ~ ~ ~ /scoreboard players set @a[r=15,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2540

#Silver Chatting NPC
execute @e[name=Silver,type=pixelmon:npc_chatting] ~ ~ ~ /playsound rivaltalk record @a[r=15,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
execute @e[name=Silver,type=pixelmon:npc_chatting] ~ ~ ~ /scoreboard players set @a[r=15,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1000



#Arceus legendary battle
execute @e[tag=ArceusBattle,type=pixelmon:pixelmon] ~ ~ ~ /playsound arceusbattle record @a[r=15,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
execute @e[tag=ArceusBattle,type=pixelmon:pixelmon] ~ ~ ~ /scoreboard players set @a[r=15,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1610


#General legendary battle
execute @e[tag=Legendary,type=pixelmon:pixelmon] ~ ~ ~ /playsound legendarybattle record @a[r=15,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
execute @e[tag=Legendary,type=pixelmon:pixelmon,c=1] ~ ~ ~ /scoreboard players set @a[r=15,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 4072


#--------------Dialogue-Based-------------
#Team Rocket mugging on Route 43
playsound rockettakeover record @a[score_DialogueTrigger_min=48,score_DialogueTrigger=48,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[score_DialogueTrigger_min=48,score_DialogueTrigger=48,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1740



#Hall of Fame room Credits
playsound endingtheme record @a[score_DialogueTrigger_min=98,score_DialogueTrigger=98,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[score_DialogueTrigger_min=98,score_DialogueTrigger=98,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2300


#Magnet Train Rides
playsound magnettrain record @a[score_DialogueTrigger_min=207,score_DialogueTrigger=208,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[score_DialogueTrigger_min=207,score_DialogueTrigger=208,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 170


#Bug Catching Contest
playsound bugcontest record @a[score_DialogueTrigger_min=198,score_DialogueTrigger=199,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[score_DialogueTrigger_min=198,score_DialogueTrigger=199,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2100


#Giovanni's Cave radio broadcast
playsound rockettakeover record @a[score_DialogueTrigger_min=164,score_DialogueTrigger=164,score_TalkTime_min=166,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[score_DialogueTrigger_min=164,score_DialogueTrigger=164,score_TalkTime_min=166,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1740


#Guide Gent tour music
playsound cherrygrovetour record @a[score_DialogueTrigger_min=209,score_DialogueTrigger=213,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[score_DialogueTrigger_min=209,score_DialogueTrigger=213,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1080

playsound cherrygrovetour record @a[score_DialogueTrigger_min=197,score_DialogueTrigger=197,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[score_DialogueTrigger_min=197,score_DialogueTrigger=197,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1080










#--------------High priority-------------


#Cinnabar Island
playsound ceruleancity record @a[x=-1746,y=63,z=-913,dx=88,dy=20,dz=83,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-1746,y=63,z=-913,dx=88,dy=20,dz=83,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2880


#Oak's Welcome sequence from lobby
playsound oakwelcome record @a[x=-972,y=63,z=-410,dx=10,dy=10,dz=10,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-972,y=63,z=-410,dx=10,dy=10,dz=10,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1425


#Pokemon Centers
execute @e[type=armor_stand,name=PokeCenter] ~ ~-2 ~-1 /playsound pokemoncenter record @a[dx=17,dy=15,dz=14,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
execute @e[type=armor_stand,name=PokeCenter] ~ ~-2 ~-1 /scoreboard players set @a[dx=17,dy=15,dz=14,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1320


#Ruins of Alph Cave Interiors
playsound ruinsofalph record @a[x=174,y=36,z=-163,dx=42,dy=22,dz=85,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=174,y=36,z=-163,dx=42,dy=22,dz=85,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 845

#Sinjoh fake Ruins Interior
playsound ruinsofalph record @a[x=-992,y=59,z=-172,dx=38,dy=20,dz=50,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-992,y=59,z=-172,dx=38,dy=20,dz=50,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 845



#Tohjo Falls
playsound unioncave record @a[x=-987,y=0,z=-492,dx=125,dy=100,dz=75,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-987,y=0,z=-492,dx=125,dy=100,dz=75,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2480


#------------Areas within areas------------

#Goldenrod Radio Tower normal
playsound goldenrodcity record @a[x=495,y=30,z=-275,dx=38,dy=22,dz=21,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=495,y=30,z=-275,dx=38,dy=22,dz=21,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1370


#Goldenrod Radio Tower Rocket Takeover area
playsound rockettakeover record @a[x=495,y=31,z=-249,dx=37,dy=29,dz=21,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=495,y=31,z=-249,dx=37,dy=29,dz=21,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1740


#Safari Zone
playsound safari record @a[x=1403,y=0,z=-95,dx=379,dy=240,dz=201,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=1403,y=0,z=-95,dx=379,dy=240,dz=201,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2660


#Goldenrod Underground
playsound unioncave record @a[x=380,y=0,z=-436,dx=157,dy=62,dz=161,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=380,y=0,z=-436,dx=157,dy=62,dz=161,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2480


#Embedded Tower
playsound unioncave record @a[x=-1196,y=63,z=-239,dx=46,dy=20,dz=53,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-1196,y=63,z=-239,dx=46,dy=20,dz=53,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2480


#Kanto Power Plant Interior
playsound ceruleancity record @a[x=-3131,y=35,z=561,dx=42,dy=20,dz=36,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-3131,y=35,z=561,dx=42,dy=20,dz=36,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2880



#Professor Elm's Lab
playsound elmlab record @a[x=-693,y=63,z=-490,dx=19,dy=5,dz=19,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-693,y=63,z=-490,dx=19,dy=5,dz=19,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1540


#Ecruteak Dance Theatre
playsound dancetheater record @a[x=332,y=63,z=218,dx=22,dy=15,dz=16,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=332,y=63,z=218,dx=22,dy=15,dz=16,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 930


#Olivine City Lighthouse
playsound olivinelighthouse record @a[x=684,y=64,z=-59,dx=43,dy=150,dz=36,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=684,y=64,z=-59,dx=43,dy=150,dz=36,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1300


#Goldenrod Game Corner
playsound gamecorner record @a[x=489,y=64,z=-389,dx=31,dy=10,dz=19,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=489,y=64,z=-389,dx=31,dy=10,dz=19,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2520


#Bellsprout Tower
playsound sprouttower record @a[x=44,y=63,z=4,dx=31,dy=90,dz=31,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=44,y=63,z=4,dx=31,dy=90,dz=31,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1000


#Burned Tower
playsound burnedtower record @a[x=432,y=0,z=309,dx=20,dy=100,dz=20,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=432,y=0,z=309,dx=20,dy=100,dz=20,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1100


#Tin Tower
playsound tintower record @a[x=240,y=63,z=297,dx=33,dy=240,dz=33,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=240,y=63,z=297,dx=33,dy=240,dz=33,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1840


#---------------
#Hall of Fame room
playsound halloffame record @a[x=-1300,y=77,z=751,dx=24,dy=10,dz=34,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-1300,y=77,z=751,dx=24,dy=10,dz=34,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 600


#Route 47 & 48
playsound route47 record @a[x=1321,y=0,z=-478,dx=381,dy=240,dz=381,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=1321,y=0,z=-478,dx=381,dy=240,dz=381,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2940


#Lake of Rage
playsound route42 record @a[x=-290,y=0,z=555,dx=295,dy=240,dz=225,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-290,y=0,z=555,dx=295,dy=240,dz=225,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1160


#Route 43
playsound route42 record @a[x=-214,y=0,z=245,dx=130,dy=240,dz=768,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-214,y=0,z=245,dx=130,dy=240,dz=768,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1160


#Mahogany Town
playsound cherrygrovecity record @a[x=-214,y=64,z=125,dx=117,dy=240,dz=119,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-214,y=64,z=125,dx=117,dy=240,dz=119,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1162


#Route 42
playsound route42 record @a[x=-96,y=63,z=120,dx=329,dy=240,dz=331,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-96,y=63,z=120,dx=329,dy=240,dz=331,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1160


#Route 39
playsound route38 record @a[x=698,y=0,z=129,dx=177,dy=240,dz=77,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=698,y=0,z=129,dx=177,dy=240,dz=77,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1510


#Route 39
playsound route38 record @a[x=639,y=0,z=41,dx=236,dy=240,dz=87,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=639,y=0,z=41,dx=236,dy=240,dz=87,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1510


#Mt. Mortar
playsound unioncave record @a[x=-83,y=0,z=220,dx=318,dy=240,dz=180,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-83,y=0,z=220,dx=318,dy=240,dz=180,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2480


#Route 33
playsound route30 record @a[x=50,y=61,z=-793,dx=234,dy=240,dz=121,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=50,y=61,z=-793,dx=234,dy=240,dz=121,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1370


#Route 38
playsound route38 record @a[x=499,y=0,z=166,dx=111,dy=240,dz=139,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=499,y=0,z=166,dx=111,dy=240,dz=139,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1510


#SS Aqua Ocean
playsound ssanne record @a[x=530,y=0,z=324,dx=442,dy=240,dz=471,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=530,y=0,z=324,dx=442,dy=240,dz=471,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2340


#Route 38
playsound route38 record @a[x=611,y=0,z=166,dx=86,dy=240,dz=139,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=611,y=0,z=166,dx=86,dy=240,dz=139,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1510


#Gyms
playsound gym record @a[x=-1222,y=0,z=500,dx=470,dy=240,dz=342,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-1222,y=0,z=500,dx=470,dy=240,dz=342,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1564


#Route 38
playsound route38 record @a[x=698,y=0,z=207,dx=177,dy=240,dz=98,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=698,y=0,z=207,dx=177,dy=240,dz=98,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1510


#Route 46
playsound route32 record @a[x=-529,y=0,z=-468,dx=129,dy=240,dz=750,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-529,y=0,z=-468,dx=129,dy=240,dz=750,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1660


#Olivine City
playsound olivinecity record @a[x=639,y=0,z=-239,dx=197,dy=240,dz=279,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=639,y=0,z=-239,dx=197,dy=240,dz=279,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2360


#Route 45
playsound route32 record @a[x=-676,y=0,z=-369,dx=146,dy=240,dz=493,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-676,y=0,z=-369,dx=146,dy=240,dz=493,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1660


#Route 40
playsound surfing record @a[x=870,y=0,z=-280,dx=281,dy=240,dz=182,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=870,y=0,z=-280,dx=281,dy=240,dz=182,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2400


#Dragons Den
playsound dragonsden record @a[x=-744,y=69,z=507,dx=162,dy=70,dz=147,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-744,y=69,z=507,dx=162,dy=70,dz=147,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2535


#Route 40
playsound route32 record @a[x=837,y=0,z=-97,dx=147,dy=240,dz=81,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=837,y=0,z=-97,dx=147,dy=240,dz=81,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1660


#Route 44
playsound route42 record @a[x=-536,y=63,z=132,dx=321,dy=240,dz=102,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-536,y=0,z=132,dx=321,dy=240,dz=102,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1160


#Whirl Island Caves
playsound unioncave record @a[x=1120,y=0,z=120,dx=245,dy=240,dz=280,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=1120,y=0,z=120,dx=245,dy=240,dz=280,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2480


#Route 41
playsound surfing record @a[x=870,y=0,z=-525,dx=281,dy=240,dz=44,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=870,y=0,z=-525,dx=281,dy=240,dz=44,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2215


#Spawn Lobby
playsound opening record @a[x=-978,y=64,z=-375,dx=20,dy=20,dz=20,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-978,y=64,z=-375,dx=20,dy=20,dz=20,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1760


#---------------------------General Music---------------------------

#Mt. Silver Cave
playsound victoryroad record @a[x=-1043,y=60,z=102,dx=135,dy=100,dz=270,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-1043,y=60,z=102,dx=135,dy=100,dz=270,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 860


#Mt. Silver Summit before Arceus
playsound champbattle record @a[x=-967,y=174,z=189,dx=50,dy=30,dz=140,score_Arceus=0,score_MusicCooldown=0,score_MusicState_min=1,tag=!Red] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-967,y=174,z=189,dx=50,dy=30,dz=140,score_Arceus=0,score_MusicCooldown=0,score_MusicState_min=1,tag=!Red] MusicCooldown 2120

#Placeholder Silence when Red is beaten
scoreboard players set @a[x=-967,y=174,z=189,dx=50,dy=30,dz=140,score_Arceus=0,score_MusicCooldown=0,score_MusicState_min=1,tag=Red] MusicCooldown 1000


#Sinjoh Ruins
playsound sinjohruins record @a[x=-1099,y=0,z=-252,dx=102,dy=100,dz=189,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-1099,y=0,z=-252,dx=102,dy=100,dz=189,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 3660


#Hall of Fame Statue Room
playsound halloffame record @a[x=-1049,y=60,z=-340,dx=41,dy=20,dz=72,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-1049,y=60,z=-340,dx=41,dy=20,dz=72,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 600


#Indigo Plateau
playsound elitefour record @a[x=-1343,y=64,z=15,dx=99,dy=100,dz=338,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-1343,y=64,z=15,dx=99,dy=100,dz=338,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1250


#Victory Road
playsound victoryroad record @a[x=-1531,y=0,z=372,dx=204,dy=61,dz=173,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-1531,y=0,z=372,dx=204,dy=61,dz=173,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 860


#Power Plant
playsound route10 record @a[x=-3338,y=60,z=521,dx=122,dy=180,dz=105,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-3338,y=60,z=521,dx=122,dy=180,dz=105,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2200


#Rocket HQ Johto
playsound rocketjohto record @a[x=-178,y=0,z=152,dx=121,dy=63,dz=73,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-178,y=0,z=152,dx=121,dy=63,dz=73,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1930


#Rock Tunnel
playsound rocktunnel record @a[x=-3420,y=0,z=516,dx=257,dy=59,dz=197,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-3420,y=0,z=516,dx=257,dy=59,dz=197,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1000


#Seafoam Islands
playsound viridianforest record @a[x=-2200,y=0,z=-986,dx=250,dy=59,dz=208,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-2200,y=0,z=-986,dx=250,dy=59,dz=208,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1810


#Diglett's Cave
playsound rocktunnel record @a[x=-3088,y=0,z=80,dx=139,dy=100,dz=136,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-3088,y=0,z=80,dx=139,dy=100,dz=136,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1000


#Whirl Islands Exterior
playsound surfing record @a[x=870,y=0,z=-480,dx=281,dy=240,dz=199,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=870,y=0,z=-480,dx=281,dy=240,dz=199,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2215


#Cerulean Cave
playsound rocketkanto record @a[x=-2659,y=0,z=828,dx=124,dy=240,dz=68,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-2659,y=0,z=828,dx=124,dy=240,dz=68,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 3020


#Route 27
playsound route27 record @a[x=-961,y=0,z=-588,dx=207,dy=240,dz=128,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-961,y=0,z=-588,dx=207,dy=240,dz=128,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2150


#Giovanni's Cave time travel event
playsound unioncave record @a[x=87,y=50,z=719,dx=44,dy=20,dz=44,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=87,y=50,z=719,dx=44,dy=20,dz=44,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2480


#Slowpoke Well
playsound darkcave record @a[x=229,y=0,z=-729,dx=92,dy=60,dz=76,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=229,y=0,z=-729,dx=92,dy=60,dz=76,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2760


#Dark Cave
playsound darkcave record @a[x=-307,y=0,z=-94,dx=94,dy=240,dz=223,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-307,y=0,z=-94,dx=94,dy=240,dz=223,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2760


#Dark Cave
playsound darkcave record @a[x=-439,y=0,z=-190,dx=131,dy=240,dz=319,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-439,y=0,z=-190,dx=131,dy=240,dz=319,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2760


#Route 28 (Mt. Silver base)
playsound route27 record @a[x=-1207,y=0,z=-17,dx=292,dy=240,dz=111,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-1207,y=0,z=-17,dx=292,dy=240,dz=111,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2150


#Elite Four Lance's Room
playsound champbattle record @a[x=-1366,y=63,z=676,dx=110,dy=240,dz=74,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-1366,y=63,z=676,dx=110,dy=240,dz=74,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2120


#Elite Four
playsound elitefour record @a[x=-1366,y=0,z=372,dx=110,dy=240,dz=302,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-1366,y=0,z=372,dx=110,dy=240,dz=302,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1250


#Fuchsia City
playsound ceruleancity record @a[x=-2513,y=0,z=-642,dx=225,dy=240,dz=187,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-2513,y=0,z=-642,dx=225,dy=240,dz=187,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2880


#Cinnabar Island surround area
playsound surfing record @a[x=-1765,y=0,z=-969,dx=145,dy=240,dz=144,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-1765,y=0,z=-969,dx=145,dy=240,dz=144,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2215


#Viridian City
playsound ceruleancity record @a[x=-1800,y=0,z=-44,dx=191,dy=240,dz=166,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-1800,y=0,z=-44,dx=191,dy=240,dz=166,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2880


#Vermilion City
playsound vermillioncity record @a[x=-2884,y=0,z=-200,dx=273,dy=240,dz=239,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-2884,y=0,z=-200,dx=273,dy=240,dz=239,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 3290


#Saffron City
playsound ceruleancity record @a[x=-2871,y=0,z=235,dx=252,dy=240,dz=205,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-2871,y=0,z=235,dx=252,dy=240,dz=205,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2880


#Pallet Town
playsound pallettown record @a[x=-1765,y=0,z=-404,dx=145,dy=240,dz=154,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-1765,y=0,z=-404,dx=145,dy=240,dz=154,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1700


#Lavender Town
playsound lavendertown record @a[x=-3338,y=0,z=290,dx=113,dy=240,dz=96,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-3338,y=0,z=290,dx=113,dy=240,dz=96,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2300


#Cerulean City
playsound ceruleancity record @a[x=-2836,y=0,z=654,dx=181,dy=240,dz=148,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-2836,y=0,z=654,dx=181,dy=240,dz=148,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2880


#Celadon City
playsound celadoncity record @a[x=-2501,y=0,z=236,dx=278,dy=240,dz=199,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-2501,y=0,z=236,dx=278,dy=240,dz=199,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1470


#Fake Route 22 time travel event
playsound route10 record @a[x=148,y=60,z=613,dx=200,dy=30,dz=200,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=148,y=60,z=613,dx=200,dy=30,dz=200,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2200


#Ice Cavern
playsound darkcave record @a[x=-875,y=0,z=302,dx=280,dy=60,dz=173,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-875,y=0,z=302,dx=280,dy=60,dz=173,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2760


#Blackthorn City
playsound blackthorncity record @a[x=-775,y=0,z=125,dx=202,dy=240,dz=206,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-775,y=0,z=125,dx=202,dy=240,dz=206,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2220


#Route 27
playsound route27 record @a[x=-1152,y=0,z=-588,dx=190,dy=240,dz=128,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-1152,y=0,z=-588,dx=190,dy=240,dz=128,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2150


#Rpite 27
playsound route27 record @a[x=-1343,y=0,z=-588,dx=190,dy=240,dz=128,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-1343,y=0,z=-588,dx=190,dy=240,dz=128,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2150


#Route 26
playsound route27 record @a[x=-1343,y=0,z=-459,dx=126,dy=240,dz=473,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-1343,y=0,z=-459,dx=126,dy=240,dz=473,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2150


#Route 22
playsound route10 record @a[x=-1608,y=0,z=-14,dx=263,dy=240,dz=109,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-1608,y=0,z=-14,dx=263,dy=240,dz=109,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2200


#Route 15
playsound route12 record @a[x=-2879,y=0,z=-600,dx=365,dy=240,dz=100,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-2879,y=0,z=-600,dx=365,dy=240,dz=100,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1460


#Route 18
playsound route10 record @a[x=-2287,y=0,z=-607,dx=271,dy=240,dz=77,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-2287,y=0,z=-607,dx=271,dy=240,dz=77,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2200


#Route 17
playsound route10 record @a[x=-2121,y=0,z=-529,dx=171,dy=240,dz=807,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-2121,y=0,z=-529,dx=171,dy=240,dz=807,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2200


#Route 16
playsound route10 record @a[x=-2222,y=0,z=279,dx=272,dy=240,dz=131,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-2222,y=0,z=279,dx=272,dy=240,dz=131,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2200


#Route 7
playsound route10 record @a[x=-2618,y=0,z=290,dx=118,dy=240,dz=134,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-2618,y=0,z=290,dx=118,dy=240,dz=134,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2200


#Route 8
playsound route10 record @a[x=-3224,y=0,z=275,dx=354,dy=240,dz=156,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-3224,y=0,z=275,dx=354,dy=240,dz=156,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2200


#Route 9
playsound route10 record @a[x=-3350,y=60,z=627,dx=513,dy=180,dz=173,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-3350,y=60,z=627,dx=513,dy=180,dz=173,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2200


#Route 11
playsound route12 record @a[x=-3261,y=0,z=-118,dx=376,dy=240,dz=118,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-3261,y=0,z=-118,dx=376,dy=240,dz=118,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1460


#Route 6
playsound route3 record @a[x=-2871,y=0,z=40,dx=252,dy=240,dz=194,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-2871,y=0,z=40,dx=252,dy=240,dz=194,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1160


#Route 5
playsound route3 record @a[x=-2871,y=0,z=441,dx=211,dy=240,dz=212,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-2871,y=0,z=441,dx=211,dy=240,dz=212,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1160


#Route 4
playsound route3 record @a[x=-2654,y=0,z=675,dx=403,dy=240,dz=96,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-2654,y=0,z=675,dx=403,dy=240,dz=96,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1160


#Route 3
playsound route3 record @a[x=-2222,y=0,z=577,dx=436,dy=240,dz=194,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-2222,y=0,z=577,dx=436,dy=240,dz=194,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1160


#Route 2
playsound route3 record @a[x=-1776,y=0,z=123,dx=252,dy=240,dz=429,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-1776,y=0,z=123,dx=252,dy=240,dz=429,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1160


#Route 1
playsound route1 record @a[x=-1765,y=0,z=-249,dx=145,dy=240,dz=204,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-1765,y=0,z=-249,dx=145,dy=240,dz=204,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1440


#Pewter City
playsound ceruleancity record @a[x=-1785,y=0,z=553,dx=261,dy=240,dz=208,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-1785,y=0,z=553,dx=261,dy=240,dz=208,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2880

#Mt. Moon
playsound mtmoon record @a[x=-2250,y=0,z=722,dx=130,dy=240,dz=94,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-2250,y=0,z=722,dx=130,dy=240,dz=94,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 890


#Route 25
playsound route24 record @a[x=-3114,y=0,z=954,dx=425,dy=240,dz=70,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-3114,y=0,z=954,dx=425,dy=240,dz=70,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1030


#Route 24
playsound route24 record @a[x=-2777,y=0,z=803,dx=122,dy=240,dz=161,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-2777,y=0,z=803,dx=122,dy=240,dz=161,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1110


#Route 14
playsound route12 record @a[x=-3000,y=0,z=-600,dx=120,dy=240,dz=208,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-3000,y=0,z=-600,dx=120,dy=240,dz=208,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1460


#Route 13
playsound route12 record @a[x=-3261,y=0,z=-391,dx=381,dy=240,dz=85,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-3261,y=0,z=-391,dx=381,dy=240,dz=85,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1460


#Route 12
playsound route12 record @a[x=-3354,y=0,z=-395,dx=92,dy=240,dz=684,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-3354,y=0,z=-395,dx=92,dy=240,dz=684,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1460


#Route 21
playsound surfing record @a[x=-1765,y=0,z=-824,dx=145,dy=240,dz=419,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-1765,y=0,z=-824,dx=145,dy=240,dz=419,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2215


#Route 20
playsound surfing record @a[x=-2479,y=60,z=-969,dx=713,dy=180,dz=138,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-2479,y=60,z=-969,dx=713,dy=180,dz=138,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2215


#Route 19
playsound surfing record @a[x=-2513,y=0,z=-975,dx=225,dy=240,dz=332,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-2513,y=0,z=-975,dx=225,dy=240,dz=332,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2215


#Pokemon Mansion
playsound pokemonmansion record @a[x=-1574,y=0,z=-895,dx=114,dy=63,dz=73,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-1574,y=0,z=-895,dx=114,dy=63,dz=73,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2500


#Battle Tower Lower levels
playsound battletowerlower record @a[x=858,y=60,z=-15,dx=102,dy=10,dz=143,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=858,y=60,z=-15,dx=102,dy=10,dz=143,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 730


#Battle Tower upper level
playsound battletower record @a[x=858,y=75,z=-15,dx=102,dy=100,dz=143,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=858,y=75,z=-15,dx=102,dy=100,dz=143,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1420


#Cianwood City
playsound cianwoodcity record @a[x=1152,y=0,z=-525,dx=168,dy=240,dz=244,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=1152,y=0,z=-525,dx=168,dy=240,dz=244,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2880


#Route 32
playsound route32 record @a[x=75,y=0,z=-458,dx=154,dy=240,dz=64,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=75,y=0,z=-458,dx=154,dy=240,dz=64,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1660


#Ecruteak City
playsound cianwoodcity record @a[x=236,y=0,z=164,dx=262,dy=100,dz=204,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=236,y=0,z=164,dx=262,dy=100,dz=204,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2880


#Route 32
playsound route32 record @a[x=75,y=0,z=-393,dx=154,dy=240,dz=94,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=75,y=0,z=-393,dx=154,dy=240,dz=94,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1660


#Route 37
playsound route32 record @a[x=319,y=0,z=37,dx=82,dy=240,dz=126,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=319,y=0,z=37,dx=82,dy=240,dz=126,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1660


#Route 32
playsound route32 record @a[x=75,y=0,z=-300,dx=84,dy=240,dz=133,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=75,y=0,z=-300,dx=84,dy=240,dz=133,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1660


#Route 36
playsound route32 record @a[x=332,y=0,z=-67,dx=130,dy=240,dz=103,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=332,y=0,z=-67,dx=130,dy=240,dz=103,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1660


#Route 32
playsound route32 record @a[x=101,y=0,z=-166,dx=58,dy=240,dz=75,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=101,y=0,z=-166,dx=58,dy=240,dz=75,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1660


#National Park
playsound nationalpark record @a[x=463,y=0,z=-67,dx=175,dy=240,dz=203,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=463,y=0,z=-67,dx=175,dy=240,dz=203,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 3320


#Ruins of Alph
playsound unioncave record @a[x=160,y=0,z=-295,dx=121,dy=240,dz=205,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=160,y=0,z=-295,dx=121,dy=240,dz=205,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2480


#Route 36
playsound route32 record @a[x=349,y=0,z=-266,dx=239,dy=240,dz=198,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=349,y=0,z=-266,dx=239,dy=240,dz=198,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1660


#Route 36
playsound route32 record @a[x=191,y=0,z=-89,dx=140,dy=240,dz=100,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=191,y=0,z=-89,dx=140,dy=240,dz=100,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1660


#Violet City
playsound olivinecity record @a[x=100,y=0,z=-90,dx=90,dy=66,dz=190,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=100,y=0,z=-90,dx=90,dy=66,dz=190,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2360


#Violet City
playsound olivinecity record @a[x=-42,y=0,z=-161,dx=141,dy=66,dz=261,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-42,y=0,z=-161,dx=141,dy=66,dz=261,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2360


#Goldenrod City
playsound goldenrodcity record @a[x=349,y=0,z=-461,dx=239,dy=240,dz=194,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=349,y=0,z=-461,dx=239,dy=240,dz=194,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1970


#Route 31
playsound route30 record @a[x=-290,y=0,z=-161,dx=247,dy=240,dz=75,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-290,y=0,z=-161,dx=247,dy=240,dz=75,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1370


#Route 34
playsound route32 record @a[x=411,y=0,z=-715,dx=104,dy=240,dz=253,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=411,y=0,z=-715,dx=104,dy=240,dz=253,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1660


#Route 30
playsound route30 record @a[x=-290,y=0,z=-460,dx=176,dy=240,dz=298,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-290,y=0,z=-460,dx=176,dy=240,dz=298,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1370


#Ilex Forest
playsound unioncave record @a[x=513,y=0,z=-793,dx=187,dy=240,dz=228,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=513,y=0,z=-793,dx=187,dy=240,dz=228,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2480


#Cherrygrove City
playsound cherrygrovecity record @a[x=-279,y=0,z=-598,dx=217,dy=240,dz=137,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-279,y=0,z=-598,dx=217,dy=240,dz=137,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1162


#Azalea Town
playsound azaleatown record @a[x=285,y=0,z=-793,dx=125,dy=240,dz=130,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=285,y=0,z=-793,dx=125,dy=240,dz=130,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2220

#Azalea Town-Ilex Forest Gate
playsound azaleatown record @a[x=409,y=63,z=-740,dx=23,dy=7,dz=14,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=409,y=63,z=-740,dx=23,dy=7,dz=14,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2220


#Union Cave
playsound unioncave record @a[x=230,y=0,z=-642,dx=95,dy=240,dz=167,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=230,y=0,z=-642,dx=95,dy=240,dz=167,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 2480


#Route 29
playsound route29 record @a[x=-382,y=0,z=-598,dx=102,dy=240,dz=144,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-382,y=0,z=-598,dx=102,dy=240,dz=144,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1380


#Route 29
playsound route29 record @a[x=-434,y=0,z=-598,dx=51,dy=240,dz=134,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-434,y=0,z=-598,dx=51,dy=240,dz=134,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1380


#Route 29
playsound route29 record @a[x=-525,y=0,z=-598,dx=90,dy=240,dz=129,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-525,y=0,z=-598,dx=90,dy=240,dz=129,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1380


#Route 29
playsound route29 record @a[x=-649,y=0,z=-598,dx=124,dy=240,dz=118,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-649,y=0,z=-598,dx=124,dy=240,dz=118,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1380


#Route 32
playsound route32 record @a[x=75,y=0,z=-515,dx=154,dy=240,dz=56,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=75,y=0,z=-515,dx=154,dy=240,dz=56,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1660


#Route 32
playsound route32 record @a[x=75,y=0,z=-582,dx=154,dy=240,dz=66,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=75,y=0,z=-582,dx=154,dy=240,dz=66,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1660


#Route 32
playsound route32 record @a[x=75,y=0,z=-671,dx=154,dy=240,dz=88,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=75,y=0,z=-671,dx=154,dy=240,dz=88,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1660


#New Bark Town
playsound newbarktown record @a[x=-771,y=0,z=-577,dx=121,dy=240,dz=132,score_MusicCooldown=0,score_MusicState_min=1] ~ ~ ~ 1000 1 1
scoreboard players set @a[x=-771,y=0,z=-577,dx=121,dy=240,dz=132,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 1720


#Flymap Cooldown only to prevent function spamming
scoreboard players set @a[x=1169,y=252,z=619,r=40,score_MusicCooldown=0,score_MusicState_min=1] MusicCooldown 500





#Removes MusicState if present
scoreboard players set @a[score_MusicState_min=1,score_MusicCooldown_min=1] MusicState 0
