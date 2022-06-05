#execute as @a[limit=1,x=513,y=60,z=-793,dx=187,dy=10,dz=228] run function johto:world/farfetchd


#tps the statue to first chase position if statue
execute as @a[x=513,y=0,z=-793,dx=187,dy=240,dz=228,scores={Farfetchd=0},tag=Bugsy] if entity @e[x=-742,y=75,z=-242,distance=..2,type=pixelmon:statue] run tp @e[x=-742,y=75,z=-242,distance=..2,name=Farfetchd,type=pixelmon:statue] 593 64 -717

#tps statue if new person approaches with a 0 score
#execute as @a[x=622,y=63,z=-714,distance=..50,scores={Farfetchd=0},tag=Bugsy] if entity @e[x=622,y=63,z=-714,dy=3,type=pixelmon:statue] run tp @e[x=622,y=63,z=-714,dy=3,type=pixelmon:statue] -742 75 -242

#Zone 6 East Detect
execute as @a[x=588,y=63,z=-701,dx=3,dy=5,dz=5,scores={Farfetchd=0},tag=Bugsy] if entity @e[x=593,y=64,z=-698,distance=..3,type=pixelmon:statue] run tellraw @a[distance=..10] ["",{"text":"<Farfetch'd> "},{"text":"Kwaa!!","italic":true}]
execute as @a[x=588,y=63,z=-701,dx=3,dy=5,dz=5,scores={Farfetchd=0},tag=Bugsy] if entity @e[x=593,y=64,z=-698,distance=..3,type=pixelmon:statue] run playsound farfetchd hostile @a[distance=..10] ~ ~ ~ 100 1 1
execute as @a[x=588,y=63,z=-701,dx=3,dy=5,dz=5,scores={Farfetchd=0},tag=Bugsy] if entity @e[x=593,y=64,z=-698,distance=..3,type=pixelmon:statue] run setblock -827 69 -212 minecraft:redstone_block

#Zone 6 South Detect
execute as @a[x=592,y=63,z=-703,dx=3,dy=5,dz=7,scores={Farfetchd=0},tag=Bugsy] if entity @e[x=593,y=64,z=-698,distance=..3,type=pixelmon:statue] run setblock -828 69 -212 minecraft:redstone_block
execute as @a[x=592,y=63,z=-703,dx=3,dy=5,dz=7,scores={Farfetchd=0},tag=Bugsy] if entity @e[x=593,y=64,z=-698,distance=..3,type=pixelmon:statue] run tellraw @a[distance=..10] ["",{"text":"<Farfetch'd> "},{"text":"Kwaa!!","italic":true}]
execute as @a[x=592,y=63,z=-703,dx=3,dy=5,dz=7,scores={Farfetchd=0},tag=Bugsy] if entity @e[x=593,y=64,z=-698,distance=..3,type=pixelmon:statue] run playsound farfetchd hostile @a[distance=..10] ~ ~ ~ 100 1 1


#Zone 5 West
execute as @a[x=574,y=63,z=-703,dx=5,dy=5,dz=10,scores={Farfetchd=0},tag=Bugsy] if entity @e[x=575,y=64,z=-701,distance=..3,type=pixelmon:statue] run setblock -830 69 -212 minecraft:redstone_block
execute as @a[x=574,y=63,z=-703,dx=5,dy=5,dz=10,scores={Farfetchd=0},tag=Bugsy] if entity @e[x=575,y=64,z=-701,distance=..3,type=pixelmon:statue] run tellraw @a[distance=..10] ["",{"text":"<Farfetch'd> "},{"text":"Kwaa!!","italic":true}]
execute as @a[x=574,y=63,z=-703,dx=5,dy=5,dz=10,scores={Farfetchd=0},tag=Bugsy] if entity @e[x=575,y=64,z=-701,distance=..3,type=pixelmon:statue] run playsound farfetchd hostile @a[distance=..10] ~ ~ ~ 100 1 1

#Zone 5 East
execute as @a[x=569,y=63,z=-703,dx=4,dy=5,dz=10,scores={Farfetchd=0},tag=Bugsy] if entity @e[x=575,y=64,z=-701,distance=..3,type=pixelmon:statue] run setblock -829 69 -212 minecraft:redstone_block
execute as @a[x=569,y=63,z=-703,dx=4,dy=5,dz=10,scores={Farfetchd=0},tag=Bugsy] if entity @e[x=575,y=64,z=-701,distance=..3,type=pixelmon:statue] run tellraw @a[distance=..10] ["",{"text":"<Farfetch'd> "},{"text":"Kwaa!!","italic":true}]
execute as @a[x=569,y=63,z=-703,dx=4,dy=5,dz=10,scores={Farfetchd=0},tag=Bugsy] if entity @e[x=575,y=64,z=-701,distance=..3,type=pixelmon:statue] run playsound farfetchd hostile @a[distance=..10] ~ ~ ~ 100 1 1


#Zone 4 North
execute as @a[x=545,y=63,z=-702,dx=5,dy=5,dz=6,scores={Farfetchd=0},tag=Bugsy] if entity @e[x=547,y=64,z=-701,distance=..3,type=pixelmon:statue] run setblock -832 69 -212 minecraft:redstone_block
execute as @a[x=545,y=63,z=-702,dx=5,dy=5,dz=6,scores={Farfetchd=0},tag=Bugsy] if entity @e[x=547,y=64,z=-701,distance=..3,type=pixelmon:statue] run tellraw @a[distance=..10] ["",{"text":"<Farfetch'd> "},{"text":"Kwaa!!","italic":true}]
execute as @a[x=545,y=63,z=-702,dx=5,dy=5,dz=6,scores={Farfetchd=0},tag=Bugsy] if entity @e[x=547,y=64,z=-701,distance=..3,type=pixelmon:statue] run playsound farfetchd hostile @a[distance=..10] ~ ~ ~ 100 1 1


#Zone 4 South
execute as @a[x=545,y=63,z=-707,dx=3,dy=5,dz=4,scores={Farfetchd=0},tag=Bugsy] if entity @e[x=547,y=64,z=-701,distance=..3,type=pixelmon:statue] run setblock -831 69 -212 minecraft:redstone_block
execute as @a[x=545,y=63,z=-707,dx=3,dy=5,dz=4,scores={Farfetchd=0},tag=Bugsy] if entity @e[x=547,y=64,z=-701,distance=..3,type=pixelmon:statue] run tellraw @a[distance=..10] ["",{"text":"<Farfetch'd> "},{"text":"Kwaa!!","italic":true}]
execute as @a[x=545,y=63,z=-707,dx=3,dy=5,dz=4,scores={Farfetchd=0},tag=Bugsy] if entity @e[x=547,y=64,z=-701,distance=..3,type=pixelmon:statue] run playsound farfetchd hostile @a[distance=..10] ~ ~ ~ 100 1 1


#Zone 3 West
execute as @a[x=551,y=63,z=-730,dx=4,dy=5,dz=10,scores={Farfetchd=0},tag=Bugsy] if entity @e[x=547,y=64,z=-725,distance=..3,type=pixelmon:statue] run setblock -833 69 -212 minecraft:redstone_block
execute as @a[x=551,y=63,z=-730,dx=4,dy=5,dz=10,scores={Farfetchd=0},tag=Bugsy] if entity @e[x=547,y=64,z=-725,distance=..3,type=pixelmon:statue] run tellraw @a[distance=..10] ["",{"text":"<Farfetch'd> "},{"text":"Kwaa!!","italic":true}]
execute as @a[x=551,y=63,z=-730,dx=4,dy=5,dz=10,scores={Farfetchd=0},tag=Bugsy] if entity @e[x=547,y=64,z=-725,distance=..3,type=pixelmon:statue] run playsound farfetchd hostile @a[distance=..10] ~ ~ ~ 100 1 1


#Zone 3 North
execute as @a[x=544,y=63,z=-723,dx=6,dy=5,dz=3,scores={Farfetchd=0},tag=Bugsy] if entity @e[x=547,y=64,z=-725,distance=..3,type=pixelmon:statue] run setblock -834 69 -212 minecraft:redstone_block
execute as @a[x=544,y=63,z=-723,dx=6,dy=5,dz=3,scores={Farfetchd=0},tag=Bugsy] if entity @e[x=547,y=64,z=-725,distance=..3,type=pixelmon:statue] run tellraw @a[distance=..10] ["",{"text":"<Farfetch'd> "},{"text":"Kwaa!!","italic":true}]
execute as @a[x=544,y=63,z=-723,dx=6,dy=5,dz=3,scores={Farfetchd=0},tag=Bugsy] if entity @e[x=547,y=64,z=-725,distance=..3,type=pixelmon:statue] run playsound farfetchd hostile @a[distance=..10] ~ ~ ~ 100 1 1


#Zone 3 South
execute as @a[x=544,y=63,z=-730,dx=6,dy=5,dz=6,scores={Farfetchd=0},tag=Bugsy] if entity @e[x=547,y=64,z=-725,distance=..3,type=pixelmon:statue] run setblock -833 69 -212 minecraft:redstone_block
execute as @a[x=544,y=63,z=-730,dx=6,dy=5,dz=6,scores={Farfetchd=0},tag=Bugsy] if entity @e[x=547,y=64,z=-725,distance=..3,type=pixelmon:statue] run tellraw @a[distance=..10] ["",{"text":"<Farfetch'd> "},{"text":"Kwaa!!","italic":true}]
execute as @a[x=544,y=63,z=-730,dx=6,dy=5,dz=6,scores={Farfetchd=0},tag=Bugsy] if entity @e[x=547,y=64,z=-725,distance=..3,type=pixelmon:statue] run playsound farfetchd hostile @a[distance=..10] ~ ~ ~ 100 1 1


#Zone 2 North
execute as @a[x=568,y=63,z=-723,dx=6,dy=5,dz=4,scores={Farfetchd=0},tag=Bugsy] if entity @e[x=570,y=64,z=-725,distance=..3,type=pixelmon:statue] run setblock -835 69 -212 minecraft:redstone_block
execute as @a[x=568,y=63,z=-723,dx=6,dy=5,dz=4,scores={Farfetchd=0},tag=Bugsy] if entity @e[x=570,y=64,z=-725,distance=..3,type=pixelmon:statue] run tellraw @a[distance=..10] ["",{"text":"<Farfetch'd> "},{"text":"Kwaa!!","italic":true}]
execute as @a[x=568,y=63,z=-723,dx=6,dy=5,dz=4,scores={Farfetchd=0},tag=Bugsy] if entity @e[x=570,y=64,z=-725,distance=..3,type=pixelmon:statue] run playsound farfetchd hostile @a[distance=..10] ~ ~ ~ 100 1 1


#Zone 2 South
execute as @a[x=565,y=63,z=-729,dx=9,dy=5,dz=5,scores={Farfetchd=0},tag=Bugsy] if entity @e[x=570,y=64,z=-725,distance=..3,type=pixelmon:statue] run setblock -836 69 -212 minecraft:redstone_block
execute as @a[x=565,y=63,z=-729,dx=9,dy=5,dz=5,scores={Farfetchd=0},tag=Bugsy] if entity @e[x=570,y=64,z=-725,distance=..3,type=pixelmon:statue] run tellraw @a[distance=..10] ["",{"text":"<Farfetch'd> "},{"text":"Kwaa!!","italic":true}]
execute as @a[x=565,y=63,z=-729,dx=9,dy=5,dz=5,scores={Farfetchd=0},tag=Bugsy] if entity @e[x=570,y=64,z=-725,distance=..3,type=pixelmon:statue] run playsound farfetchd hostile @a[distance=..10] ~ ~ ~ 100 1 1


#Zone 1 East
#,x=588,y=63,z=-720,dx=4,dy=5,dz=6
execute as @a[x=593,y=63,z=-722,dx=5,dy=5,dz=6,scores={Farfetchd=0},tag=Bugsy] if entity @e[x=593,y=64,z=-717,distance=..3,type=pixelmon:statue] run setblock -826 69 -212 minecraft:redstone_block
execute as @a[x=593,y=63,z=-722,dx=5,dy=5,dz=6,scores={Farfetchd=0},tag=Bugsy] if entity @e[x=593,y=64,z=-717,distance=..3,type=pixelmon:statue] run tellraw @a[distance=..10] ["",{"text":"<Farfetch'd> "},{"text":"Kwaa!!","italic":true}]
execute as @a[x=593,y=63,z=-722,dx=5,dy=5,dz=6,scores={Farfetchd=0},tag=Bugsy] if entity @e[x=593,y=64,z=-717,distance=..3,type=pixelmon:statue] run playsound farfetchd hostile @a[distance=..10] ~ ~ ~ 100 1 1


#Zone 1 North
#x=592,y=63,z=-713,dx=6,dy=5,dz=5
execute as @a[x=593,y=63,z=-722,dx=5,dy=5,dz=6,scores={Farfetchd=0},tag=Bugsy] if entity @e[x=593,y=64,z=-717,distance=..3,type=pixelmon:statue] run setblock -825 69 -212 minecraft:redstone_block
execute as @a[x=593,y=63,z=-722,dx=5,dy=5,dz=6,scores={Farfetchd=0},tag=Bugsy] if entity @e[x=593,y=64,z=-717,distance=..3,type=pixelmon:statue] run tellraw @a[distance=..10] ["",{"text":"<Farfetch'd> "},{"text":"Kwaa!!","italic":true}]
execute as @a[x=593,y=63,z=-722,dx=5,dy=5,dz=6,scores={Farfetchd=0},tag=Bugsy] if entity @e[x=593,y=64,z=-717,distance=..3,type=pixelmon:statue] run playsound farfetchd hostile @a[distance=..10] ~ ~ ~ 100 1 1



#Zone 1 South
execute as @a[x=593,y=63,z=-722,dx=5,dy=5,dz=6,scores={Farfetchd=0},tag=Bugsy] if entity @e[x=593,y=64,z=-717,distance=..3,type=pixelmon:statue] run setblock -837 69 -212 minecraft:redstone_block
execute as @a[x=593,y=63,z=-722,dx=5,dy=5,dz=6,scores={Farfetchd=0},tag=Bugsy] if entity @e[x=593,y=64,z=-717,distance=..3,type=pixelmon:statue] run tellraw @a[distance=..10] ["",{"text":"<Farfetch'd> "},{"text":"Kwaa!!","italic":true}]
execute as @a[x=593,y=63,z=-722,dx=5,dy=5,dz=6,scores={Farfetchd=0},tag=Bugsy] if entity @e[x=593,y=64,z=-717,distance=..3,type=pixelmon:statue] run playsound farfetchd hostile @a[distance=..10] ~ ~ ~ 100 1 1






#
