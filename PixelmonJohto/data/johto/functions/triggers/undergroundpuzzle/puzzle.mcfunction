#Each toggle switch on the buttons adds or subtracts a score to an armor stand
#If adding, passes score down the chain of 4 armor stands
#if score is found on fourth armor stand, reset chain and puzzle
#execute if entity @e1 @e2 & @e3, run fill commands for specific combinations

#Entire underground
#@a[x=476,y=46,z=-345,dx=52,dy=7,dz=51]

#execute if entity @a[x=476,y=46,z=-345,dx=52,dy=7,dz=51,limit=1] run function johto:triggers/undergroundpuzzle/undergroundpuzzle


#All Filled
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=0}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=0}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 523 47 -323 520 50 -322 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=0}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=0}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 504 50 -322 507 47 -323 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=0}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=0}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 492 50 -322 495 47 -323 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=0}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=0}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 515 50 -327 514 47 -330 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=0}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=0}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 502 50 -327 503 47 -330 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=0}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=0}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 523 50 -334 520 47 -335 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=0}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=0}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 507 50 -334 504 47 -335 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=0}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=0}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 495 50 -334 492 47 -335 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=0}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=0}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 515 50 -339 514 47 -342 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=0}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=0}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 503 50 -339 502 47 -342 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=0}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=0}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 491 50 -339 490 47 -342 minecraft:light_blue_terracotta


#Button combination 1
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=0}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 523 47 -323 520 50 -322 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=0}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 504 50 -322 507 47 -323 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=0}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 492 50 -322 495 47 -323 minecraft:air
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=0}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 515 50 -327 514 47 -330 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=0}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 502 50 -327 503 47 -330 minecraft:air
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=0}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 523 50 -334 520 47 -335 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=0}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 507 50 -334 504 47 -335 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=0}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 495 50 -334 492 47 -335 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=0}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 515 50 -339 514 47 -342 minecraft:air
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=0}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 503 50 -339 502 47 -342 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=0}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 491 50 -339 490 47 -342 minecraft:light_blue_terracotta


#2
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=0}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 523 47 -323 520 50 -322 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=0}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 504 50 -322 507 47 -323 minecraft:air
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=0}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 492 50 -322 495 47 -323 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=0}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 515 50 -327 514 47 -330 minecraft:air
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=0}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 502 50 -327 503 47 -330 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=0}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 523 50 -334 520 47 -335 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=0}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 507 50 -334 504 47 -335 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=0}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 495 50 -334 492 47 -335 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=0}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 515 50 -339 514 47 -342 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=0}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 503 50 -339 502 47 -342 minecraft:air
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=0}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 491 50 -339 490 47 -342 minecraft:light_blue_terracotta


#3
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=0}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 523 47 -323 520 50 -322 minecraft:air
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=0}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 504 50 -322 507 47 -323 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=0}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 492 50 -322 495 47 -323 minecraft:air
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=0}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 515 50 -327 514 47 -330 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=0}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 502 50 -327 503 47 -330 minecraft:air
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=0}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 523 50 -334 520 47 -335 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=0}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 507 50 -334 504 47 -335 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=0}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 495 50 -334 492 47 -335 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=0}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 515 50 -339 514 47 -342 minecraft:air
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=0}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 503 50 -339 502 47 -342 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=0}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 491 50 -339 490 47 -342 minecraft:light_blue_terracotta

#1, 2
#Commands were missing?

#1, 3
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 523 47 -323 520 50 -322 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 504 50 -322 507 47 -323 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 492 50 -322 495 47 -323 minecraft:air
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 515 50 -327 514 47 -330 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 502 50 -327 503 47 -330 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 523 50 -334 520 47 -335 minecraft:air
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 507 50 -334 504 47 -335 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 495 50 -334 492 47 -335 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 515 50 -339 514 47 -342 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 503 50 -339 502 47 -342 minecraft:air
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 491 50 -339 490 47 -342 minecraft:light_blue_terracotta


#2, 1
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 523 47 -323 520 50 -322 minecraft:air
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 504 50 -322 507 47 -323 minecraft:air
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 492 50 -322 495 47 -323 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 515 50 -327 514 47 -330 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 502 50 -327 503 47 -330 minecraft:air
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 523 50 -334 520 47 -335 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 507 50 -334 504 47 -335 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 495 50 -334 492 47 -335 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 515 50 -339 514 47 -342 minecraft:air
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 503 50 -339 502 47 -342 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 491 50 -339 490 47 -342 minecraft:light_blue_terracotta



#2, 3
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 523 47 -323 520 50 -322 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 504 50 -322 507 47 -323 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 492 50 -322 495 47 -323 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 515 50 -327 514 47 -330 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 502 50 -327 503 47 -330 minecraft:air
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 523 50 -334 520 47 -335 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 507 50 -334 504 47 -335 minecraft:air
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 495 50 -334 492 47 -335 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 515 50 -339 514 47 -342 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 503 50 -339 502 47 -342 minecraft:air
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 491 50 -339 490 47 -342 minecraft:light_blue_terracotta



#3, 1
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 523 47 -323 520 50 -322 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 504 50 -322 507 47 -323 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 492 50 -322 495 47 -323 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 515 50 -327 514 47 -330 minecraft:air
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 502 50 -327 503 47 -330 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 523 50 -334 520 47 -335 minecraft:air
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 507 50 -334 504 47 -335 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 495 50 -334 492 47 -335 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 515 50 -339 514 47 -342 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 503 50 -339 502 47 -342 minecraft:air
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 491 50 -339 490 47 -342 minecraft:light_blue_terracotta





#3, 2
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 523 47 -323 520 50 -322 minecraft:air
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 504 50 -322 507 47 -323 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 492 50 -322 495 47 -323 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 515 50 -327 514 47 -330 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 502 50 -327 503 47 -330 minecraft:air
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 523 50 -334 520 47 -335 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 507 50 -334 504 47 -335 minecraft:air
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 495 50 -334 492 47 -335 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 515 50 -339 514 47 -342 minecraft:air
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 503 50 -339 502 47 -342 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=0}] run fill 491 50 -339 490 47 -342 minecraft:light_blue_terracotta



#1, 2, 3
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=3}] run fill 523 47 -323 520 50 -322 minecraft:air
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=3}] run fill 504 50 -322 507 47 -323 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=3}] run fill 492 50 -322 495 47 -323 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=3}] run fill 515 50 -327 514 47 -330 minecraft:air
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=3}] run fill 502 50 -327 503 47 -330 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=3}] run fill 523 50 -334 520 47 -335 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=3}] run fill 507 50 -334 504 47 -335 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=3}] run fill 495 50 -334 492 47 -335 minecraft:air
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=3}] run fill 515 50 -339 514 47 -342 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=3}] run fill 503 50 -339 502 47 -342 minecraft:air
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=3}] run fill 491 50 -339 490 47 -342 minecraft:air


#1, 3, 2
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=2}] run fill 523 47 -323 520 50 -322 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=2}] run fill 504 50 -322 507 47 -323 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=2}] run fill 492 50 -322 495 47 -323 minecraft:air
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=2}] run fill 515 50 -327 514 47 -330 minecraft:air
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=2}] run fill 502 50 -327 503 47 -330 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=2}] run fill 523 50 -334 520 47 -335 minecraft:air
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=2}] run fill 507 50 -334 504 47 -335 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=2}] run fill 495 50 -334 492 47 -335 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=2}] run fill 515 50 -339 514 47 -342 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=2}] run fill 503 50 -339 502 47 -342 minecraft:air
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=2}] run fill 491 50 -339 490 47 -342 minecraft:light_blue_terracotta



#2, 1, 3
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=3}] run fill 523 47 -323 520 50 -322 minecraft:air
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=3}] run fill 504 50 -322 507 47 -323 minecraft:air
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=3}] run fill 492 50 -322 495 47 -323 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=3}] run fill 515 50 -327 514 47 -330 minecraft:air
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=3}] run fill 502 50 -327 503 47 -330 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=3}] run fill 523 50 -334 520 47 -335 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=3}] run fill 507 50 -334 504 47 -335 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=3}] run fill 495 50 -334 492 47 -335 minecraft:air
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=3}] run fill 515 50 -339 514 47 -342 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=3}] run fill 503 50 -339 502 47 -342 minecraft:air
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=3}] run fill 491 50 -339 490 47 -342 minecraft:air



#2, 3, 1
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=1}] run fill 523 47 -323 520 50 -322 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=1}] run fill 504 50 -322 507 47 -323 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=1}] run fill 492 50 -322 495 47 -323 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=1}] run fill 515 50 -327 514 47 -330 minecraft:air
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=1}] run fill 502 50 -327 503 47 -330 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=1}] run fill 523 50 -334 520 47 -335 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=1}] run fill 507 50 -334 504 47 -335 minecraft:air
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=1}] run fill 495 50 -334 492 47 -335 minecraft:air
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=1}] run fill 515 50 -339 514 47 -342 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=1}] run fill 503 50 -339 502 47 -342 minecraft:air
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=1}] run fill 491 50 -339 490 47 -342 minecraft:air




#3, 1, 2
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=2}] run fill 523 47 -323 520 50 -322 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=2}] run fill 504 50 -322 507 47 -323 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=2}] run fill 492 50 -322 495 47 -323 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=2}] run fill 515 50 -327 514 47 -330 minecraft:air
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=2}] run fill 502 50 -327 503 47 -330 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=2}] run fill 523 50 -334 520 47 -335 minecraft:air
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=2}] run fill 507 50 -334 504 47 -335 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=2}] run fill 495 50 -334 492 47 -335 minecraft:air
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=2}] run fill 515 50 -339 514 47 -342 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=2}] run fill 503 50 -339 502 47 -342 minecraft:air
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=1}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=2}] run fill 491 50 -339 490 47 -342 minecraft:air



#3, 2, 1 (Solved, emergency switch)
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=1}] run fill 491 50 -339 490 47 -342 minecraft:air
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=1}] run fill 503 50 -339 502 47 -342 minecraft:air
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=1}] run fill 515 50 -339 514 47 -342 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=1}] run fill 495 50 -334 492 47 -335 minecraft:air
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=1}] run fill 507 50 -334 504 47 -335 minecraft:air
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=1}] run fill 523 50 -334 520 47 -335 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=1}] run fill 502 50 -327 503 47 -330 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=1}] run fill 515 50 -327 514 47 -330 minecraft:air
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=1}] run fill 492 50 -322 495 47 -323 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=1}] run fill 504 50 -322 507 47 -323 minecraft:light_blue_terracotta
execute if entity @e[x=487,y=54,z=-319,dy=3,scores={GRUnderground=3}] if entity @e[x=489,y=54,z=-319,dy=3,scores={GRUnderground=2}] if entity @e[x=491,y=54,z=-319,dy=3,scores={GRUnderground=1}] run fill 523 47 -323 520 50 -322 minecraft:air














#tps any player in the maze
execute if entity @e[x=493,y=54,z=-319,dy=3,scores={GRUnderground=1..}] run tp @a[x=477,y=47,z=-344,dx=50,dy=6,dz=22] 481 47 -310
execute if entity @e[x=493,y=54,z=-319,dy=3,scores={GRUnderground=1..}] run tellraw @a[x=477,y=47,z=-344,dx=50,dy=6,dz=47] {"text":"The tiles reset!","italic":true,"color":"gray"}

#Clones switches to off-state
execute if entity @e[x=493,y=54,z=-319,dy=3,scores={GRUnderground=1..}] run clone 506 54 -316 502 58 -318 521 47 -295
execute if entity @e[x=493,y=54,z=-319,dy=3,scores={GRUnderground=1..}] run clone 506 54 -316 502 58 -318 507 47 -295
execute if entity @e[x=493,y=54,z=-319,dy=3,scores={GRUnderground=1..}] run clone 506 54 -316 502 58 -318 495 47 -295

execute if entity @e[x=493,y=54,z=-319,dy=3,scores={GRUnderground=1..}] run scoreboard players set @e[x=487,y=54,z=-319,dx=6,dy=3] GRUnderground 0

#
