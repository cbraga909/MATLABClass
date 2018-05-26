load planetdata

names=char(planet.name)
t=struct2table(planet)

average_velocity=sum([planet.orbit])/length([planet.orbit])