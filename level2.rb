#Challenge 1
#Define a Zombie model
class Zombie < ActiveRecord::Base
end

#Challenge 2
#Validates presence of Name
class Zombie < ActiveRecord::Base
  validates_presence_of :name
end

#Challenge 3
#Add a validation that checks for the uniqueness of a Zombie's name
class Zombie < ActiveRecord::Base
  validates_uniqueness_of :name
end

#Challenge 4
#Validate both the uniqueness and the presence of a Zombie's name on a single line, using the new validation syntax.
class Zombie < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true
end

#Challenge 5
#A Weapon belongs to a Zombie. Create that relationship.
class Weapon < ActiveRecord::Base
  belongs_to :zombie
end

#Challenge 6
#Assuming the models and relationships are properly defined, find all the weapons that belong to Zombie 'Ashley'.
zombie = Zombie.find(1)
zombie.weapons
