#
#function custom:copycatskins if @a[x=-2722,y=68,z=372,r=20]

#Rolls RNG Score
scoreboard players set @e[x=-864,y=69,z=-202,dy=4,dz=2,type=armor_stand] rng 0
scoreboard players add @r[x=-864,y=69,z=-202,dy=4,dz=2,type=armor_stand] rng 1
scoreboard players add @r[x=-864,y=69,z=-202,dy=4,dz=2,type=armor_stand] rng 2
scoreboard players add @r[x=-864,y=69,z=-202,dy=4,dz=2,type=armor_stand] rng 4
scoreboard players add @r[x=-864,y=69,z=-202,dy=4,dz=2,type=armor_stand] rng 8
scoreboard players add @r[x=-864,y=69,z=-202,dy=4,dz=2,type=armor_stand] rng 16
scoreboard players add @r[x=-864,y=69,z=-202,dy=4,dz=2,type=armor_stand] rng 32
scoreboard players add @r[x=-864,y=69,z=-202,dy=4,dz=2,type=armor_stand] rng 64

scoreboard players operation @e[x=-2722,y=68,z=372,dy=3,type=pixelmon:npc_chatting] rng = @e[x=-864,y=69,z=-200,dy=3] rng


entitydata @e[x=-2722,y=69,z=372,r=1,type=pixelmon:npc_chatting,score_rng_min=0,score_rng=15] {CustomSteveTexture:"piratecaptain.png"}
entitydata @e[x=-2722,y=69,z=372,r=1,type=pixelmon:npc_chatting,score_rng_min=16,score_rng=31] {CustomSteveTexture:"lumberjack.png"}
entitydata @e[x=-2722,y=69,z=372,r=1,type=pixelmon:npc_chatting,score_rng_min=32,score_rng=47] {CustomSteveTexture:"preschooler_f1.png"}
entitydata @e[x=-2722,y=69,z=372,r=1,type=pixelmon:npc_chatting,score_rng_min=48,score_rng=63] {CustomSteveTexture:"policeman.png"}
entitydata @e[x=-2722,y=69,z=372,r=1,type=pixelmon:npc_chatting,score_rng_min=64,score_rng=79] {CustomSteveTexture:"mailman.png"}
entitydata @e[x=-2722,y=69,z=372,r=1,type=pixelmon:npc_chatting,score_rng_min=80,score_rng=95] {CustomSteveTexture:"hexmaniac.png"}
entitydata @e[x=-2722,y=69,z=372,r=1,type=pixelmon:npc_chatting,score_rng_min=96,score_rng=111] {CustomSteveTexture:"battlegirl.png"}
entitydata @e[x=-2722,y=69,z=372,r=1,type=pixelmon:npc_chatting,score_rng_min=112,score_rng=127] {CustomSteveTexture:"jasmine.png"}
