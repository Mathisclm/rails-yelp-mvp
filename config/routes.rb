Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


get "restaurants", to: "restaurants#index"

get "restaurants/new", to: "restaurants#new"
post "restaurants", to: "restaurants#create" #rediriger vers la page de ce nouveau resto

get "restaurants/:id", to: "restaurants#show"

#get "restaurants/:id/reviews/new"
#post "restaurants/:id/reviews"

end
