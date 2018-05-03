#Challenge 1
#Create the show action for the
# ZombiesController which finds a Zombie based on params[:id].
# Store the Zombie object to an instance variable named @zombie.
def show
  @zombie = Zombie.find(params[:id])
end

#Challenge 2
#Finish the respond_to block so the action returns the XML of the @zombie record
def show
  @zombie = Zombie.find(params[:id])

  respond_to do |format|
    format.xml { render :xml =>@zombie }
  end
end

#Challenge 3
#Write a create action that will create
# a new Zombie from the params and then redirect to the created Zombie's show page.
# Make sure to use Rails 4 strong_parameters.
# params = {zombie: {name: 'Gregg', graveyard: 'TBA'}
class ZombiesController < ApplicationController
  def create
    @zombie = Zombie.create(zombie_params)
    redirect_to zombie_path(@zombie)

  end

  private

  def zombie_params
    params.require(:zombie).permit(:name, :graveyard)
  end
end


#Challenge 4
#Add a before_action that calls a method to check if a Zombie has tweets.
# Redirect to zombies_path if the zombie doesn't have tweets, only on show.
class ZombiesController < ApplicationController
  before_action :find_zombie
  before_action :has_tweets, only: :show

  def show
    render action: :show
  end

  def find_zombie
    @zombie = Zombie.find params[:id]
  end

  def has_tweets
    if @zombie.tweets.size == 0
      redirect_to zombies_path
    end
  end
end