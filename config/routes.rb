Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/routes', to: 'routes#index'
  get '/red', to: 'lines#red'
  get '/blue', to: 'lines#blue'
  get '/orange', to: 'lines#orange'
  get '/silver', to: 'lines#silver'
  get '/yellow', to: 'lines#yellow'
  get '/green', to: 'lines#green'

  resources :station, only: [:show]
end
