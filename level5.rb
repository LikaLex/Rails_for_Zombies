#Challenge 1
# Create a resources route for zombies

TwitterForZombies::Application.routes.draw do
  resources :zombies
end

#Challenge 2
# Create a custom route so that /undead will go to the undead action on the ZombiesController
TwitterForZombies::Application.routes.draw do
  resources :zombies
  get 'undead' => 'zombies#undead'
end

#Challenge 3
# Create redirect /undead to /zombies
TwitterForZombies::Application.routes.draw do
  get '/undead', to: redirect('/zombies')
end

#Challenge 4
# Create a root route to ZombiesController index action
TwitterForZombies::Application.routes.draw do
  root to: 'zombies#index'
end

#Challenge 5
#Create a named route. It should generate a path like '/zombies/:name'
# where :name is a parameter, and points to the index action in ZombiesController.
# Name the route 'graveyard'

TwitterForZombies::Application.routes.draw do
  get '/zombies/:name', to: 'zombies#index', :as => 'graveyard'
end
