#/coreboard objectives add EscapeRopeUse stat.useItem.minecraft.ender_eye
#Scores of EscapeRope are given when player goes through portals


#If player is currently in a dialogue
title @a[score_DialogueTrigger_min=1,score_EscapeRopeUse_min=1] actionbar {"text":"You can't use this while in a dialogue!"}
give @a[score_EscapeRopeUse_min=1,score_DialogueTrigger_min=1] ender_eye 1 0 {display:{Lore:["A long and durable rope.","Use it to escape instantly","from a cave."]}}
scoreboard players set @a[score_EscapeRopeUse_min=1,score_DialogueTrigger_min=1] EscapeRopeUse 0

title @a[score_TalkTime_min=1,score_EscapeRopeUse_min=1] actionbar {"text":"You can't use this while in a dialogue!"}
give @a[score_EscapeRopeUse_min=1,score_TalkTime_min=1] ender_eye 1 0 {display:{Lore:["A long and durable rope.","Use it to escape instantly","from a cave."]}}
scoreboard players set @a[score_EscapeRopeUse_min=1,score_TalkTime_min=1] EscapeRopeUse 0


#Dark Cave (3 entrances)
#Violet City side
execute @a[score_EscapeRope_min=1,score_EscapeRope=1,score_EscapeRopeUse_min=1] ~ ~ ~ scoreboard players tag @s add EscapeRopeUse
execute @a[score_EscapeRope_min=1,score_EscapeRope=1,score_EscapeRopeUse_min=1] ~ ~ ~ effect @s minecraft:blindness 5 1 true
execute @a[score_EscapeRope_min=1,score_EscapeRope=1,score_EscapeRopeUse_min=1] ~ ~ ~ playsound flee ambient @s ~ ~ ~ 1000 1 1
execute @a[score_EscapeRope_min=1,score_EscapeRope=1,score_EscapeRopeUse_min=1] ~ ~ ~ kill @e[r=20,type=eye_of_ender_signal]
execute @a[score_EscapeRope_min=1,score_EscapeRope=1,score_EscapeRopeUse_min=1] ~ ~ ~ tp @s -225 64 -98 180 ~

#Blackthorn City side
execute @a[score_EscapeRope_min=2,score_EscapeRope=2,score_EscapeRopeUse_min=1] ~ ~ ~ scoreboard players tag @s add EscapeRopeUse
execute @a[score_EscapeRope_min=2,score_EscapeRope=2,score_EscapeRopeUse_min=1] ~ ~ ~ effect @s minecraft:blindness 5 1 true
execute @a[score_EscapeRope_min=2,score_EscapeRope=2,score_EscapeRopeUse_min=1] ~ ~ ~ playsound flee ambient @s ~ ~ ~ 1000 1 1
execute @a[score_EscapeRope_min=2,score_EscapeRope=2,score_EscapeRopeUse_min=1] ~ ~ ~ kill @e[r=20,type=eye_of_ender_signal]
execute @a[score_EscapeRope_min=2,score_EscapeRope=2,score_EscapeRopeUse_min=1] ~ ~ ~ tp @s -554 64 104 180 ~

#Route 45 side
execute @a[score_EscapeRope_min=3,score_EscapeRope=3,score_EscapeRopeUse_min=1] ~ ~ ~ scoreboard players tag @s add EscapeRopeUse
execute @a[score_EscapeRope_min=3,score_EscapeRope=3,score_EscapeRopeUse_min=1] ~ ~ ~ effect @s minecraft:blindness 5 1 true
execute @a[score_EscapeRope_min=3,score_EscapeRope=3,score_EscapeRopeUse_min=1] ~ ~ ~ playsound flee ambient @s ~ ~ ~ 1000 1 1
execute @a[score_EscapeRope_min=3,score_EscapeRope=3,score_EscapeRopeUse_min=1] ~ ~ ~ kill @e[r=20,type=eye_of_ender_signal]
execute @a[score_EscapeRope_min=3,score_EscapeRope=3,score_EscapeRopeUse_min=1] ~ ~ ~ tp @s -507 64 -301 180 ~



#Bellsprout Tower
execute @a[x=44,y=60,z=4,dx=32,dy=200,dz=32,score_EscapeRopeUse_min=1] ~ ~ ~ scoreboard players tag @s add EscapeRopeUse
execute @a[x=44,y=60,z=4,dx=32,dy=200,dz=32,score_EscapeRopeUse_min=1] ~ ~ ~ effect @s minecraft:blindness 5 1 true
execute @a[x=44,y=60,z=4,dx=32,dy=200,dz=32,score_EscapeRopeUse_min=1] ~ ~ ~ playsound flee ambient @s ~ ~ ~ 1000 1 1
execute @a[x=44,y=60,z=4,dx=32,dy=200,dz=32,score_EscapeRopeUse_min=1] ~ ~ ~ kill @e[r=20,type=eye_of_ender_signal]
execute @a[x=44,y=60,z=4,dx=32,dy=200,dz=32,score_EscapeRopeUse_min=1] ~ ~ ~ tp @s 59 64 0 180 ~



#Union Cave (4 entrances)

#Route 32 Side
execute @a[score_EscapeRope_min=4,score_EscapeRope=4,score_EscapeRopeUse_min=1] ~ ~ ~ scoreboard players tag @s add EscapeRopeUse
execute @a[score_EscapeRope_min=4,score_EscapeRope=4,score_EscapeRopeUse_min=1] ~ ~ ~ effect @s minecraft:blindness 5 1 true
execute @a[score_EscapeRope_min=4,score_EscapeRope=4,score_EscapeRopeUse_min=1] ~ ~ ~ playsound flee ambient @s ~ ~ ~ 1000 1 1
execute @a[score_EscapeRope_min=4,score_EscapeRope=4,score_EscapeRopeUse_min=1] ~ ~ ~ kill @e[r=20,type=eye_of_ender_signal]
execute @a[score_EscapeRope_min=4,score_EscapeRope=4,score_EscapeRopeUse_min=1] ~ ~ ~ tp @s 158 64 -617 180 ~

#Route 33 Side
execute @a[score_EscapeRope_min=5,score_EscapeRope=5,score_EscapeRopeUse_min=1] ~ ~ ~ scoreboard players tag @s add EscapeRopeUse
execute @a[score_EscapeRope_min=5,score_EscapeRope=5,score_EscapeRopeUse_min=1] ~ ~ ~ effect @s minecraft:blindness 5 1 true
execute @a[score_EscapeRope_min=5,score_EscapeRope=5,score_EscapeRopeUse_min=1] ~ ~ ~ playsound flee ambient @s ~ ~ ~ 1000 1 1
execute @a[score_EscapeRope_min=5,score_EscapeRope=5,score_EscapeRopeUse_min=1] ~ ~ ~ kill @e[r=20,type=eye_of_ender_signal]
execute @a[score_EscapeRope_min=5,score_EscapeRope=5,score_EscapeRopeUse_min=1] ~ ~ ~ tp @s 130 64 -730 180 ~

#Ruins of Alph north-facing cave side
execute @a[score_EscapeRope_min=6,score_EscapeRope=6,score_EscapeRopeUse_min=1] ~ ~ ~ scoreboard players tag @s add EscapeRopeUse
execute @a[score_EscapeRope_min=6,score_EscapeRope=6,score_EscapeRopeUse_min=1] ~ ~ ~ effect @s minecraft:blindness 5 1 true
execute @a[score_EscapeRope_min=6,score_EscapeRope=6,score_EscapeRopeUse_min=1] ~ ~ ~ playsound flee ambient @s ~ ~ ~ 1000 1 1
execute @a[score_EscapeRope_min=6,score_EscapeRope=6,score_EscapeRopeUse_min=1] ~ ~ ~ kill @e[r=20,type=eye_of_ender_signal]
execute @a[score_EscapeRope_min=6,score_EscapeRope=6,score_EscapeRopeUse_min=1] ~ ~ ~ tp @s 234 64 -177 180 ~

#Ruins of Alph west-facing cave side
execute @a[score_EscapeRope_min=7,score_EscapeRope=7,score_EscapeRopeUse_min=1] ~ ~ ~ scoreboard players tag @s add EscapeRopeUse
execute @a[score_EscapeRope_min=7,score_EscapeRope=7,score_EscapeRopeUse_min=1] ~ ~ ~ effect @s minecraft:blindness 5 1 true
execute @a[score_EscapeRope_min=7,score_EscapeRope=7,score_EscapeRopeUse_min=1] ~ ~ ~ playsound flee ambient @s ~ ~ ~ 1000 1 1
execute @a[score_EscapeRope_min=7,score_EscapeRope=7,score_EscapeRopeUse_min=1] ~ ~ ~ kill @e[r=20,type=eye_of_ender_signal]
execute @a[score_EscapeRope_min=7,score_EscapeRope=7,score_EscapeRopeUse_min=1] ~ ~ ~ tp @s 232 64 -225 -180 ~


#Slowpoke Well
execute @a[x=229,y=0,z=-729,dx=92,dy=60,dz=76,score_EscapeRopeUse_min=1] ~ ~ ~ scoreboard players tag @s add EscapeRopeUse
execute @a[x=229,y=0,z=-729,dx=92,dy=60,dz=76,score_EscapeRopeUse_min=1] ~ ~ ~ effect @s minecraft:blindness 5 1 true
execute @a[x=229,y=0,z=-729,dx=92,dy=60,dz=76,score_EscapeRopeUse_min=1] ~ ~ ~ playsound flee ambient @s ~ ~ ~ 1000 1 1
execute @a[x=229,y=0,z=-729,dx=92,dy=60,dz=76,score_EscapeRopeUse_min=1] ~ ~ ~ kill @e[r=20,type=eye_of_ender_signal]
execute @a[x=229,y=0,z=-729,dx=92,dy=60,dz=76,score_EscapeRopeUse_min=1] ~ ~ ~ tp @s 243 64 -720 180 ~



#Ilex Forest (2 entrances)

#Azalea Entrance
execute @a[score_EscapeRope_min=8,score_EscapeRope=8,score_EscapeRopeUse_min=1] ~ ~ ~ scoreboard players tag @s add EscapeRopeUse
execute @a[score_EscapeRope_min=8,score_EscapeRope=8,score_EscapeRopeUse_min=1] ~ ~ ~ effect @s minecraft:blindness 5 1 true
execute @a[score_EscapeRope_min=8,score_EscapeRope=8,score_EscapeRopeUse_min=1] ~ ~ ~ playsound flee ambient @s ~ ~ ~ 1000 1 1
execute @a[score_EscapeRope_min=8,score_EscapeRope=8,score_EscapeRopeUse_min=1] ~ ~ ~ kill @e[r=20,type=eye_of_ender_signal]
execute @a[score_EscapeRope_min=8,score_EscapeRope=8,score_EscapeRopeUse_min=1] ~ ~ ~ tp @s 429 64 -734

#Goldenrod Area Entrance
execute @a[score_EscapeRope_min=9,score_EscapeRope=9,score_EscapeRopeUse_min=1] ~ ~ ~ scoreboard players tag @s add EscapeRopeUse
execute @a[score_EscapeRope_min=9,score_EscapeRope=9,score_EscapeRopeUse_min=1] ~ ~ ~ effect @s minecraft:blindness 5 1 true
execute @a[score_EscapeRope_min=9,score_EscapeRope=9,score_EscapeRopeUse_min=1] ~ ~ ~ playsound flee ambient @s ~ ~ ~ 1000 1 1
execute @a[score_EscapeRope_min=9,score_EscapeRope=9,score_EscapeRopeUse_min=1] ~ ~ ~ kill @e[r=20,type=eye_of_ender_signal]
execute @a[score_EscapeRope_min=9,score_EscapeRope=9,score_EscapeRopeUse_min=1] ~ ~ ~ tp @s 453 64 -704 0 ~



#Tin Tower
execute @a[x=240,y=67,z=297,dx=33,dy=240,dz=33,score_EscapeRopeUse_min=1] ~ ~ ~ scoreboard players tag @s add EscapeRopeUse
execute @a[x=240,y=67,z=297,dx=33,dy=240,dz=33,score_EscapeRopeUse_min=1] ~ ~ ~ effect @s minecraft:blindness 5 1 true
execute @a[x=240,y=67,z=297,dx=33,dy=240,dz=33,score_EscapeRopeUse_min=1] ~ ~ ~ playsound flee ambient @s ~ ~ ~ 1000 1 1
execute @a[x=240,y=67,z=297,dx=33,dy=240,dz=33,score_EscapeRopeUse_min=1] ~ ~ ~ kill @e[r=20,type=eye_of_ender_signal]
execute @a[x=240,y=67,z=297,dx=33,dy=240,dz=33,score_EscapeRopeUse_min=1] ~ ~ ~ tp @s 265 64 290 180 ~


#Whirl Islands (4 entrances)

#Northwest
execute @a[score_EscapeRope_min=10,score_EscapeRope=10,score_EscapeRopeUse_min=1] ~ ~ ~ scoreboard players tag @s add EscapeRopeUse
execute @a[score_EscapeRope_min=10,score_EscapeRope=10,score_EscapeRopeUse_min=1] ~ ~ ~ effect @s minecraft:blindness 5 1 true
execute @a[score_EscapeRope_min=10,score_EscapeRope=10,score_EscapeRopeUse_min=1] ~ ~ ~ playsound flee ambient @s ~ ~ ~ 1000 1 1
execute @a[score_EscapeRope_min=10,score_EscapeRope=10,score_EscapeRopeUse_min=1] ~ ~ ~ kill @e[r=20,type=eye_of_ender_signal]
execute @a[score_EscapeRope_min=10,score_EscapeRope=10,score_EscapeRopeUse_min=1] ~ ~ ~ tp @s 1082 64 -324 180 ~

#Southwest
execute @a[score_EscapeRope_min=11,score_EscapeRope=11,score_EscapeRopeUse_min=1] ~ ~ ~ scoreboard players tag @s add EscapeRopeUse
execute @a[score_EscapeRope_min=11,score_EscapeRope=11,score_EscapeRopeUse_min=1] ~ ~ ~ effect @s minecraft:blindness 5 1 true
execute @a[score_EscapeRope_min=11,score_EscapeRope=11,score_EscapeRopeUse_min=1] ~ ~ ~ playsound flee ambient @s ~ ~ ~ 1000 1 1
execute @a[score_EscapeRope_min=11,score_EscapeRope=11,score_EscapeRopeUse_min=1] ~ ~ ~ kill @e[r=20,type=eye_of_ender_signal]
execute @a[score_EscapeRope_min=11,score_EscapeRope=11,score_EscapeRopeUse_min=1] ~ ~ ~ tp @s 1082 64 -436 180 ~

#Northeast
execute @a[score_EscapeRope_min=12,score_EscapeRope=12,score_EscapeRopeUse_min=1] ~ ~ ~ scoreboard players tag @s add EscapeRopeUse
execute @a[score_EscapeRope_min=12,score_EscapeRope=12,score_EscapeRopeUse_min=1] ~ ~ ~ effect @s minecraft:blindness 5 1 true
execute @a[score_EscapeRope_min=12,score_EscapeRope=12,score_EscapeRopeUse_min=1] ~ ~ ~ playsound flee ambient @s ~ ~ ~ 1000 1 1
execute @a[score_EscapeRope_min=12,score_EscapeRope=12,score_EscapeRopeUse_min=1] ~ ~ ~ kill @e[r=20,type=eye_of_ender_signal]
execute @a[score_EscapeRope_min=12,score_EscapeRope=12,score_EscapeRopeUse_min=1] ~ ~ ~ tp @s 947 64 -335 180 ~

#Southeast
execute @a[score_EscapeRope_min=13,score_EscapeRope=13,score_EscapeRopeUse_min=1] ~ ~ ~ scoreboard players tag @s add EscapeRopeUse
execute @a[score_EscapeRope_min=13,score_EscapeRope=13,score_EscapeRopeUse_min=1] ~ ~ ~ effect @s minecraft:blindness 5 1 true
execute @a[score_EscapeRope_min=13,score_EscapeRope=13,score_EscapeRopeUse_min=1] ~ ~ ~ playsound flee ambient @s ~ ~ ~ 1000 1 1
execute @a[score_EscapeRope_min=13,score_EscapeRope=13,score_EscapeRopeUse_min=1] ~ ~ ~ kill @e[r=20,type=eye_of_ender_signal]
execute @a[score_EscapeRope_min=13,score_EscapeRope=13,score_EscapeRopeUse_min=1] ~ ~ ~ tp @s 947 64 -481 180 ~



#Mt. Mortar (3 entrances)

#Ecruteak Side
execute @a[score_EscapeRope_min=14,score_EscapeRope=14,score_EscapeRopeUse_min=1] ~ ~ ~ scoreboard players tag @s add EscapeRopeUse
execute @a[score_EscapeRope_min=14,score_EscapeRope=14,score_EscapeRopeUse_min=1] ~ ~ ~ effect @s minecraft:blindness 5 1 true
execute @a[score_EscapeRope_min=14,score_EscapeRope=14,score_EscapeRopeUse_min=1] ~ ~ ~ playsound flee ambient @s ~ ~ ~ 1000 1 1
execute @a[score_EscapeRope_min=14,score_EscapeRope=14,score_EscapeRopeUse_min=1] ~ ~ ~ kill @e[r=20,type=eye_of_ender_signal]
execute @a[score_EscapeRope_min=14,score_EscapeRope=14,score_EscapeRopeUse_min=1] ~ ~ ~ tp @s 191 64 206 180 ~

#Middle
execute @a[score_EscapeRope_min=15,score_EscapeRope=15,score_EscapeRopeUse_min=1] ~ ~ ~ scoreboard players tag @s add EscapeRopeUse
execute @a[score_EscapeRope_min=15,score_EscapeRope=15,score_EscapeRopeUse_min=1] ~ ~ ~ effect @s minecraft:blindness 5 1 true
execute @a[score_EscapeRope_min=15,score_EscapeRope=15,score_EscapeRopeUse_min=1] ~ ~ ~ playsound flee ambient @s ~ ~ ~ 1000 1 1
execute @a[score_EscapeRope_min=15,score_EscapeRope=15,score_EscapeRopeUse_min=1] ~ ~ ~ kill @e[r=20,type=eye_of_ender_signal]
execute @a[score_EscapeRope_min=15,score_EscapeRope=15,score_EscapeRopeUse_min=1] ~ ~ ~ tp @s 90 64 183 180 ~

#Mahogany Side
execute @a[score_EscapeRope_min=16,score_EscapeRope=16,score_EscapeRopeUse_min=1] ~ ~ ~ scoreboard players tag @s add EscapeRopeUse
execute @a[score_EscapeRope_min=16,score_EscapeRope=16,score_EscapeRopeUse_min=1] ~ ~ ~ effect @s minecraft:blindness 5 1 true
execute @a[score_EscapeRope_min=16,score_EscapeRope=16,score_EscapeRopeUse_min=1] ~ ~ ~ playsound flee ambient @s ~ ~ ~ 1000 1 1
execute @a[score_EscapeRope_min=16,score_EscapeRope=16,score_EscapeRopeUse_min=1] ~ ~ ~ kill @e[r=20,type=eye_of_ender_signal]
execute @a[score_EscapeRope_min=16,score_EscapeRope=16,score_EscapeRopeUse_min=1] ~ ~ ~ tp @s -11 64 194 180 ~



#Olivine Lighthouse
execute @a[x=684,y=64,z=-59,dx=43,dy=150,dz=36,score_EscapeRopeUse_min=1] ~ ~ ~ scoreboard players tag @s add EscapeRopeUse
execute @a[x=684,y=64,z=-59,dx=43,dy=150,dz=36,score_EscapeRopeUse_min=1] ~ ~ ~ effect @s minecraft:blindness 5 1 true
execute @a[x=684,y=64,z=-59,dx=43,dy=150,dz=36,score_EscapeRopeUse_min=1] ~ ~ ~ playsound flee ambient @s ~ ~ ~ 1000 1 1
execute @a[x=684,y=64,z=-59,dx=43,dy=150,dz=36,score_EscapeRopeUse_min=1] ~ ~ ~ kill @e[r=20,type=eye_of_ender_signal]
execute @a[x=684,y=64,z=-59,dx=43,dy=150,dz=36,score_EscapeRopeUse_min=1] ~ ~ ~ tp @s 703 64 -61 180 ~


#Ice Path (2 entrances)
execute @a[score_EscapeRope_min=17,score_EscapeRope=17,score_EscapeRopeUse_min=1] ~ ~ ~ scoreboard players tag @s add EscapeRopeUse
execute @a[score_EscapeRope_min=17,score_EscapeRope=17,score_EscapeRopeUse_min=1] ~ ~ ~ effect @s minecraft:blindness 5 1 true
execute @a[score_EscapeRope_min=17,score_EscapeRope=17,score_EscapeRopeUse_min=1] ~ ~ ~ playsound flee ambient @s ~ ~ ~ 1000 1 1
execute @a[score_EscapeRope_min=17,score_EscapeRope=17,score_EscapeRopeUse_min=1] ~ ~ ~ kill @e[r=20,type=eye_of_ender_signal]
execute @a[score_EscapeRope_min=17,score_EscapeRope=17,score_EscapeRopeUse_min=1] ~ ~ ~ tp @s -517 64 194 180 ~

execute @a[score_EscapeRope_min=18,score_EscapeRope=18,score_EscapeRopeUse_min=1] ~ ~ ~ scoreboard players tag @s add EscapeRopeUse
execute @a[score_EscapeRope_min=18,score_EscapeRope=18,score_EscapeRopeUse_min=1] ~ ~ ~ effect @s minecraft:blindness 5 1 true
execute @a[score_EscapeRope_min=18,score_EscapeRope=18,score_EscapeRopeUse_min=1] ~ ~ ~ playsound flee ambient @s ~ ~ ~ 1000 1 1
execute @a[score_EscapeRope_min=18,score_EscapeRope=18,score_EscapeRopeUse_min=1] ~ ~ ~ kill @e[r=20,type=eye_of_ender_signal]
execute @a[score_EscapeRope_min=18,score_EscapeRope=18,score_EscapeRopeUse_min=1] ~ ~ ~ tp @s -743 64 284 180 ~



#Mt. Silver
execute @a[x=-1085,y=0,z=95,dx=247,dy=100,dz=300,score_EscapeRopeUse_min=1] ~ ~ ~ scoreboard players tag @s add EscapeRopeUse
execute @a[x=-1085,y=0,z=95,dx=247,dy=100,dz=300,score_EscapeRopeUse_min=1] ~ ~ ~ effect @s minecraft:blindness 5 1 true
execute @a[x=-1085,y=0,z=95,dx=247,dy=100,dz=300,score_EscapeRopeUse_min=1] ~ ~ ~ playsound flee ambient @s ~ ~ ~ 1000 1 1
execute @a[x=-1085,y=0,z=95,dx=247,dy=100,dz=300,score_EscapeRopeUse_min=1] ~ ~ ~ kill @e[r=20,type=eye_of_ender_signal]
execute @a[x=-1085,y=0,z=95,dx=247,dy=100,dz=300,score_EscapeRopeUse_min=1] ~ ~ ~ tp @s -976 64 93 180 ~


#Victory Road (2 entrances)

#Gate Entrance
execute @a[score_EscapeRope_min=19,score_EscapeRope=19,score_EscapeRopeUse_min=1] ~ ~ ~ scoreboard players tag @s add EscapeRopeUse
execute @a[score_EscapeRope_min=19,score_EscapeRope=19,score_EscapeRopeUse_min=1] ~ ~ ~ effect @s minecraft:blindness 5 1 true
execute @a[score_EscapeRope_min=19,score_EscapeRope=19,score_EscapeRopeUse_min=1] ~ ~ ~ playsound flee ambient @s ~ ~ ~ 1000 1 1
execute @a[score_EscapeRope_min=19,score_EscapeRope=19,score_EscapeRopeUse_min=1] ~ ~ ~ kill @e[r=20,type=eye_of_ender_signal]
execute @a[score_EscapeRope_min=19,score_EscapeRope=19,score_EscapeRopeUse_min=1] ~ ~ ~ tp @s -1258 64 117 180 ~

#Pokemon League Entrance
execute @a[score_EscapeRope_min=20,score_EscapeRope=20,score_EscapeRopeUse_min=1] ~ ~ ~ scoreboard players tag @s add EscapeRopeUse
execute @a[score_EscapeRope_min=20,score_EscapeRope=20,score_EscapeRopeUse_min=1] ~ ~ ~ effect @s minecraft:blindness 5 1 true
execute @a[score_EscapeRope_min=20,score_EscapeRope=20,score_EscapeRopeUse_min=1] ~ ~ ~ playsound flee ambient @s ~ ~ ~ 1000 1 1
execute @a[score_EscapeRope_min=20,score_EscapeRope=20,score_EscapeRopeUse_min=1] ~ ~ ~ kill @e[r=20,type=eye_of_ender_signal]
execute @a[score_EscapeRope_min=20,score_EscapeRope=20,score_EscapeRopeUse_min=1] ~ ~ ~ tp @s -1326 64 114 180 ~



#Diglett's Cave (2 entrances)

#Vermilion City Side
execute @a[score_EscapeRope_min=23,score_EscapeRope=23,score_EscapeRopeUse_min=1] ~ ~ ~ scoreboard players tag @s add EscapeRopeUse
execute @a[score_EscapeRope_min=23,score_EscapeRope=23,score_EscapeRopeUse_min=1] ~ ~ ~ effect @s minecraft:blindness 5 1 true
execute @a[score_EscapeRope_min=23,score_EscapeRope=23,score_EscapeRopeUse_min=1] ~ ~ ~ playsound flee ambient @s ~ ~ ~ 1000 1 1
execute @a[score_EscapeRope_min=23,score_EscapeRope=23,score_EscapeRopeUse_min=1] ~ ~ ~ kill @e[r=20,type=eye_of_ender_signal]
execute @a[score_EscapeRope_min=23,score_EscapeRope=23,score_EscapeRopeUse_min=1] ~ ~ ~ tp @s -2901 64 -46 180 ~

#Pewter City Side
execute @a[score_EscapeRope_min=24,score_EscapeRope=24,score_EscapeRopeUse_min=1] ~ ~ ~ scoreboard players tag @s add EscapeRopeUse
execute @a[score_EscapeRope_min=24,score_EscapeRope=24,score_EscapeRopeUse_min=1] ~ ~ ~ effect @s minecraft:blindness 5 1 true
execute @a[score_EscapeRope_min=24,score_EscapeRope=24,score_EscapeRopeUse_min=1] ~ ~ ~ playsound flee ambient @s ~ ~ ~ 1000 1 1
execute @a[score_EscapeRope_min=24,score_EscapeRope=24,score_EscapeRopeUse_min=1] ~ ~ ~ kill @e[r=20,type=eye_of_ender_signal]
execute @a[score_EscapeRope_min=24,score_EscapeRope=24,score_EscapeRopeUse_min=1] ~ ~ ~ tp @s -1718 64 476 180 ~



#Pokemon Mansion
execute @a[x=-1574,y=0,z=-895,dx=114,dy=63,dz=73,score_EscapeRopeUse_min=1] ~ ~ ~ scoreboard players tag @s add EscapeRopeUse
execute @a[x=-1574,y=0,z=-895,dx=114,dy=63,dz=73,score_EscapeRopeUse_min=1] ~ ~ ~ effect @s minecraft:blindness 5 1 true
execute @a[x=-1574,y=0,z=-895,dx=114,dy=63,dz=73,score_EscapeRopeUse_min=1] ~ ~ ~ playsound flee ambient @s ~ ~ ~ 1000 1 1
execute @a[x=-1574,y=0,z=-895,dx=114,dy=63,dz=73,score_EscapeRopeUse_min=1] ~ ~ ~ kill @e[r=20,type=eye_of_ender_signal]
execute @a[x=-1574,y=0,z=-895,dx=114,dy=63,dz=73,score_EscapeRopeUse_min=1] ~ ~ ~ tp @s -1676 64 -860 180 ~


#Mt. Moon (2 entrances)

#Pewter City Side
execute @a[score_EscapeRope_min=25,score_EscapeRope=25,score_EscapeRopeUse_min=1] ~ ~ ~ scoreboard players tag @s add EscapeRopeUse
execute @a[score_EscapeRope_min=25,score_EscapeRope=25,score_EscapeRopeUse_min=1] ~ ~ ~ effect @s minecraft:blindness 5 1 true
execute @a[score_EscapeRope_min=25,score_EscapeRope=25,score_EscapeRopeUse_min=1] ~ ~ ~ playsound flee ambient @s ~ ~ ~ 1000 1 1
execute @a[score_EscapeRope_min=25,score_EscapeRope=25,score_EscapeRopeUse_min=1] ~ ~ ~ kill @e[r=20,type=eye_of_ender_signal]
execute @a[score_EscapeRope_min=25,score_EscapeRope=25,score_EscapeRopeUse_min=1] ~ ~ ~ tp @s -2200 64 749 180 ~

#Cerulean City Side
execute @a[score_EscapeRope_min=26,score_EscapeRope=26,score_EscapeRopeUse_min=1] ~ ~ ~ scoreboard players tag @s add EscapeRopeUse
execute @a[score_EscapeRope_min=26,score_EscapeRope=26,score_EscapeRopeUse_min=1] ~ ~ ~ effect @s minecraft:blindness 5 1 true
execute @a[score_EscapeRope_min=26,score_EscapeRope=26,score_EscapeRopeUse_min=1] ~ ~ ~ playsound flee ambient @s ~ ~ ~ 1000 1 1
execute @a[score_EscapeRope_min=26,score_EscapeRope=26,score_EscapeRopeUse_min=1] ~ ~ ~ kill @e[r=20,type=eye_of_ender_signal]
execute @a[score_EscapeRope_min=26,score_EscapeRope=26,score_EscapeRopeUse_min=1] ~ ~ ~ tp @s -2263 64 749 180 ~



#Rock Tunnel (2 entrances)

#Rock Tuennel Power Plant Side
execute @a[score_EscapeRope_min=27,score_EscapeRope=27,score_EscapeRopeUse_min=1] ~ ~ ~ scoreboard players tag @s add EscapeRopeUse
execute @a[score_EscapeRope_min=27,score_EscapeRope=27,score_EscapeRopeUse_min=1] ~ ~ ~ effect @s minecraft:blindness 5 1 true
execute @a[score_EscapeRope_min=27,score_EscapeRope=27,score_EscapeRopeUse_min=1] ~ ~ ~ playsound flee ambient @s ~ ~ ~ 1000 1 1
execute @a[score_EscapeRope_min=27,score_EscapeRope=27,score_EscapeRopeUse_min=1] ~ ~ ~ kill @e[r=20,type=eye_of_ender_signal]
execute @a[score_EscapeRope_min=27,score_EscapeRope=27,score_EscapeRopeUse_min=1] ~ ~ ~ tp @s -3264 64 680 180 ~


#Rock Tunnel Lavender Town Side
execute @a[score_EscapeRope_min=28,score_EscapeRope=28,score_EscapeRopeUse_min=1] ~ ~ ~ scoreboard players tag @s add EscapeRopeUse
execute @a[score_EscapeRope_min=28,score_EscapeRope=28,score_EscapeRopeUse_min=1] ~ ~ ~ effect @s minecraft:blindness 5 1 true
execute @a[score_EscapeRope_min=28,score_EscapeRope=28,score_EscapeRopeUse_min=1] ~ ~ ~ playsound flee ambient @s ~ ~ ~ 1000 1 1
execute @a[score_EscapeRope_min=28,score_EscapeRope=28,score_EscapeRopeUse_min=1] ~ ~ ~ kill @e[r=20,type=eye_of_ender_signal]
execute @a[score_EscapeRope_min=28,score_EscapeRope=28,score_EscapeRopeUse_min=1] ~ ~ ~ tp @s -3269 64 494 180 ~



#Cerulean Cave
execute @a[x=-2659,y=0,z=828,dx=124,dy=240,dz=68,score_EscapeRopeUse_min=1] ~ ~ ~ scoreboard players tag @s add EscapeRopeUse
execute @a[x=-2659,y=0,z=828,dx=124,dy=240,dz=68,score_EscapeRopeUse_min=1] ~ ~ ~ effect @s minecraft:blindness 5 1 true
execute @a[x=-2659,y=0,z=828,dx=124,dy=240,dz=68,score_EscapeRopeUse_min=1] ~ ~ ~ playsound flee ambient @s ~ ~ ~ 1000 1 1
execute @a[x=-2659,y=0,z=828,dx=124,dy=240,dz=68,score_EscapeRopeUse_min=1] ~ ~ ~ kill @e[r=20,type=eye_of_ender_signal]
execute @a[x=-2659,y=0,z=828,dx=124,dy=240,dz=68,score_EscapeRopeUse_min=1] ~ ~ ~ tp @s -2641 64 762 180 ~



#Seafoam Islands

#Left Island Entrance
execute @a[score_EscapeRope_min=21,score_EscapeRope=21,score_EscapeRopeUse_min=1] ~ ~ ~ scoreboard players tag @s add EscapeRopeUse
execute @a[score_EscapeRope_min=21,score_EscapeRope=21,score_EscapeRopeUse_min=1] ~ ~ ~ effect @s minecraft:blindness 5 1 true
execute @a[score_EscapeRope_min=21,score_EscapeRope=21,score_EscapeRopeUse_min=1] ~ ~ ~ playsound flee ambient @s ~ ~ ~ 1000 1 1
execute @a[score_EscapeRope_min=21,score_EscapeRope=21,score_EscapeRopeUse_min=1] ~ ~ ~ kill @e[r=20,type=eye_of_ender_signal]
execute @a[score_EscapeRope_min=21,score_EscapeRope=21,score_EscapeRopeUse_min=1] ~ ~ ~ tp @s -2049 64 -884 180 ~

#Right Island Entrance
execute @a[score_EscapeRope_min=22,score_EscapeRope=22,score_EscapeRopeUse_min=1] ~ ~ ~ scoreboard players tag @s add EscapeRopeUse
execute @a[score_EscapeRope_min=22,score_EscapeRope=22,score_EscapeRopeUse_min=1] ~ ~ ~ effect @s minecraft:blindness 5 1 true
execute @a[score_EscapeRope_min=22,score_EscapeRope=22,score_EscapeRopeUse_min=1] ~ ~ ~ playsound flee ambient @s ~ ~ ~ 1000 1 1
execute @a[score_EscapeRope_min=22,score_EscapeRope=22,score_EscapeRopeUse_min=1] ~ ~ ~ kill @e[r=20,type=eye_of_ender_signal]
execute @a[score_EscapeRope_min=22,score_EscapeRope=22,score_EscapeRopeUse_min=1] ~ ~ ~ tp @s -2108 64 -914 180 ~







#Removes EscapeRope and EscapeRopeUse scores
execute @a[tag=EscapeRopeUse] ~ ~ ~ scoreboard players set @s click 1
tellraw @a[tag=EscapeRopeUse] {"text":"You used an Escape Rope!","italic":true,"color":"gray"}
scoreboard players set @a[tag=EscapeRopeUse] EscapeRope 0
scoreboard players set @a[tag=EscapeRopeUse] EscapeRopeUse 0
scoreboard players tag @a[tag=EscapeRopeUse] remove EscapeRopeUse




#Not in area where Escape Rope works
execute @a[score_EscapeRopeUse_min=1] ~ ~ ~ /kill @e[r=20,type=eye_of_ender_signal]
tellraw @a[score_EscapeRopeUse_min=1] ["",{"text":"Mom's words echoed... ","italic":true,"color":"gray"},{"selector":"@p[score_EscapeRopeUse_min=1]","italic":true,"color":"gray"},{"text":"! There's a time and place for everything! But not now.","italic":true,"color":"gray"}]
give @a[score_EscapeRopeUse_min=1] ender_eye 1 0 {display:{Lore:["A long and durable rope.","Use it to escape instantly","from a cave."]}}
scoreboard players set @a[score_EscapeRopeUse_min=1] EscapeRopeUse 0
