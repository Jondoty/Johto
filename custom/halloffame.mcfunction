#Hall of Fame 2.0
#function custom:halloffame if @a[x=-1300,y=77,z=751,dx=24,dy=10,dz=33,tag=Dialogue97]

#Armor Stand used to track and count the Hall of Fame statues:
#@e[x=-803,y=64,z=-284,dy=3,type=armor_stand]


#turns on Hall of Fame Scanning function:
function custom:halloffamescan if @e[x=-1300,y=77,z=751,dx=24,dy=10,dz=33,type=pixelmon:pixelmon,tag=!Talked]

#Runs the Hall of Fame trigger function
function custom:triggerhalloffame if @a[x=-1300,y=77,z=751,dx=24,dy=10,dz=33,score_TriggerHOF_min=1]



#Adds armor stand a score of StatueSpawn if a statue is found in the spawning chamber
execute @e[x=-874,y=64,z=-275,r=3,type=pixelmon:statue,c=1] ~ ~ ~ scoreboard players add @e[x=-803,y=64,z=-284,dy=3,type=armor_stand,score_SpawnStatue_min=0,score_SpawnStatue=5] SpawnStatue 1

#tps Statues into Hall of Fame
execute @e[x=-803,y=64,z=-284,dy=3,type=armor_stand,score_SpawnStatue_min=1,score_SpawnStatue=1] ~ ~ ~ tp @e[x=-874,y=64,z=-275,r=3,type=pixelmon:statue] -1282 83 785
execute @e[x=-803,y=64,z=-284,dy=3,type=armor_stand,score_SpawnStatue_min=2,score_SpawnStatue=2] ~ ~ ~ tp @e[x=-874,y=64,z=-275,r=3,type=pixelmon:statue] -1284 83 785
execute @e[x=-803,y=64,z=-284,dy=3,type=armor_stand,score_SpawnStatue_min=3,score_SpawnStatue=3] ~ ~ ~ tp @e[x=-874,y=64,z=-275,r=3,type=pixelmon:statue] -1286 83 785
execute @e[x=-803,y=64,z=-284,dy=3,type=armor_stand,score_SpawnStatue_min=4,score_SpawnStatue=4] ~ ~ ~ tp @e[x=-874,y=64,z=-275,r=3,type=pixelmon:statue] -1290 83 785
execute @e[x=-803,y=64,z=-284,dy=3,type=armor_stand,score_SpawnStatue_min=5,score_SpawnStatue=5] ~ ~ ~ tp @e[x=-874,y=64,z=-275,r=3,type=pixelmon:statue] -1292 83 785
execute @e[x=-803,y=64,z=-284,dy=3,type=armor_stand,score_SpawnStatue_min=6,score_SpawnStatue=6] ~ ~ ~ tp @e[x=-874,y=64,z=-275,r=3,type=pixelmon:statue] -1294 83 785



#When 6 statues have been summoned:
execute @e[x=-803,y=64,z=-284,dy=3,type=armor_stand,score_SpawnStatue_min=6,score_SpawnStatue=6] ~ ~ ~ scoreboard players set @a[tag=Dialogue97,x=-1300,y=77,z=751,dx=24,dy=10,dz=33,score_TalkTime=0] DialogueTrigger 98
