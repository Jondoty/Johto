#
#function custom:copycatskins if @a[x=-2722,y=68,z=372,r=20]

#Rolls RNG Score
scoreboard players set @e[x=-864,y=69,z=-202,dy=4,dz=2] rng 0
scoreboard players add @r[x=-864,y=69,z=-202,dy=4,dz=2] rng 1
scoreboard players add @r[x=-864,y=69,z=-202,dy=4,dz=2] rng 2
scoreboard players add @r[x=-864,y=69,z=-202,dy=4,dz=2] rng 4
scoreboard players add @r[x=-864,y=69,z=-202,dy=4,dz=2] rng 8
scoreboard players add @r[x=-864,y=69,z=-202,dy=4,dz=2] rng 16
scoreboard players add @r[x=-864,y=69,z=-202,dy=4,dz=2] rng 32
scoreboard players add @r[x=-864,y=69,z=-202,dy=4,dz=2] rng 64

scoreboard players operation @e[x=-2722,y=68,z=372,dy=3,type=pixelmon:npc_chatting] rng = @e[x=-864,y=69,z=-200,dy=3] rng


data merge entity @e[limit=1,x=-2722,y=69,z=372,distance=..1,type=pixelmon:npc_chatting,scores={rng=0..15}] {CustomSteveTexture:"piratecaptain.png"}
data merge entity @e[limit=1,x=-2722,y=69,z=372,distance=..1,type=pixelmon:npc_chatting,scores={rng=16..31}] {CustomSteveTexture:"lumberjack.png"}
data merge entity @e[limit=1,x=-2722,y=69,z=372,distance=..1,type=pixelmon:npc_chatting,scores={rng=32..47}] {CustomSteveTexture:"preschooler_f1.png"}
data merge entity @e[limit=1,x=-2722,y=69,z=372,distance=..1,type=pixelmon:npc_chatting,scores={rng=48..63}] {CustomSteveTexture:"policeman.png"}
data merge entity @e[limit=1,x=-2722,y=69,z=372,distance=..1,type=pixelmon:npc_chatting,scores={rng=64..79}] {CustomSteveTexture:"mailman.png"}
data merge entity @e[limit=1,x=-2722,y=69,z=372,distance=..1,type=pixelmon:npc_chatting,scores={rng=80..95}] {CustomSteveTexture:"hexmaniac.png"}
data merge entity @e[limit=1,x=-2722,y=69,z=372,distance=..1,type=pixelmon:npc_chatting,scores={rng=96..111}] {CustomSteveTexture:"battlegirl.png"}
data merge entity @e[limit=1,x=-2722,y=69,z=372,distance=..1,type=pixelmon:npc_chatting,scores={rng=112..127}] {CustomSteveTexture:"jasmine.png"}
