#Challenge 1
#Find Zombie where id = 1 and store it in a variable

zombie = Zombie.find(1)

#Challenge 2
#Create a new zombie
Zombie.create(:id=>1,:name=>"Maria",:graveyard=>"Memorial")

#Challenge 3
#Find the last zombie in the database, but don't use ID's
Zombie.last

#Challenge 4
#Find all Zombies ordered by their names
Zombie.find(:all,:order=>"name")

#Challenge 5
#Update Zombie 3's graveyard to 'Benny Hills Memorial'
Zombie.find(3).update_attribute(:graveyard,"Benny Hills Memorial")

#Challenge 6
#Destroy Zombie where ID = 3
Zombie.find(3).destroy
