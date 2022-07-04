#Hall of Fame 2.0
#function custom:halloffame if @a[x=-1300,y=77,z=751,dx=24,dy=10,dz=33,tag=Dialogue97]

#Armor Stand used to track and count the Hall of Fame statues:
#@e[x=-803,y=64,z=-284,dy=3,type=armor_stand]


#turns on Hall of Fame Scanning function:
execute as @e[x=-1300,y=77,z=751,dx=24,dy=10,dz=33,type=pixelmon:pixelmon,tag=!Talked] run function johto:world/halloffame/halloffamescan

#Runs the Hall of Fame trigger function
execute as @a[x=-1300,y=77,z=751,dx=24,dy=10,dz=33,scores={TriggerHOF=1..}] run function johto:world/halloffame/triggerhalloffame



#Adds armor stand a score of StatueSpawn if a statue is found in the spawning chamber
execute if entity @e[x=-874,y=64,z=-275,dy=3,type=pixelmon:statue] run scoreboard players add @e[x=-803,y=64,z=-284,dy=3,type=armor_stand] SpawnStatue 1

#tps Statues into Hall of Fame
execute if entity @e[x=-803,y=64,z=-284,dy=3,type=armor_stand,scores={SpawnStatue=1}] run tp @e[x=-874,y=64,z=-275,dy=3,type=pixelmon:statue] -1282 83 785
execute if entity @e[x=-803,y=64,z=-284,dy=3,type=armor_stand,scores={SpawnStatue=2}] run tp @e[x=-874,y=64,z=-275,dy=3,type=pixelmon:statue] -1284 83 785
execute if entity @e[x=-803,y=64,z=-284,dy=3,type=armor_stand,scores={SpawnStatue=3}] run tp @e[x=-874,y=64,z=-275,dy=3,type=pixelmon:statue] -1286 83 785
execute if entity @e[x=-803,y=64,z=-284,dy=3,type=armor_stand,scores={SpawnStatue=4}] run tp @e[x=-874,y=64,z=-275,dy=3,type=pixelmon:statue] -1290 83 785
execute if entity @e[x=-803,y=64,z=-284,dy=3,type=armor_stand,scores={SpawnStatue=5}] run tp @e[x=-874,y=64,z=-275,dy=3,type=pixelmon:statue] -1292 83 785
execute if entity @e[x=-803,y=64,z=-284,dy=3,type=armor_stand,scores={SpawnStatue=6..}] run tp @e[x=-874,y=64,z=-275,dy=3,type=pixelmon:statue] -1294 83 785



#When 6 statues have been summoned:
execute as @e[x=-803,y=64,z=-284,dy=3,type=armor_stand,scores={SpawnStatue=6..}] run scoreboard players set @a[tag=Dialogue97,x=-1300,y=77,z=751,dx=24,dy=10,dz=33,scores={TalkTime=0}] DialogueTrigger 98
