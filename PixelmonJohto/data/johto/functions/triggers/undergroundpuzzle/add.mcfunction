#Target > Source

#Waterfalls the scores down the line

#scoreboard players operation @e[x=489,y=54,z=-319,dy=3] GRUnderground = @e[x=487,y=54,z=-319,dy=3] GRUnderground
#scoreboard players operation @e[x=491,y=54,z=-319,dy=3] GRUnderground = @e[x=489,y=54,z=-319,dy=3] GRUnderground
#scoreboard players operation @e[x=493,y=54,z=-319,dy=3] GRUnderground = @e[x=491,y=54,z=-319,dy=3] GRUnderground

#Runs right to left order
scoreboard players operation @e[x=493,y=54,z=-319,dy=3] GRUnderground >< @e[x=491,y=54,z=-319,dy=3] GRUnderground
scoreboard players operation @e[x=491,y=54,z=-319,dy=3] GRUnderground >< @e[x=489,y=54,z=-319,dy=3] GRUnderground
scoreboard players operation @e[x=489,y=54,z=-319,dy=3] GRUnderground >< @e[x=487,y=54,z=-319,dy=3] GRUnderground




#Applies a score based on which buttons are currently pressed
#Switch 1
execute if block 495 48 -297 stone_button[powered=true] run scoreboard players set @e[x=487,y=54,z=-319,dy=3] GRUnderground 1
#Switch 2
execute if block 507 48 -297 stone_button[powered=true] run scoreboard players set @e[x=487,y=54,z=-319,dy=3] GRUnderground 2
#Switch 3
execute if block 521 48 -297 stone_button[powered=true] run scoreboard players set @e[x=487,y=54,z=-319,dy=3] GRUnderground 3




















#
