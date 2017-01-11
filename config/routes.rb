Rails.application.routes.draw do

  resources :exercises
  resources :templates

  get 'athletes/info' => 'athletes#info', as: 'athlete'

  get 'athletes/index' => 'athletes#index', as: 'athlete_index'

  patch 'athletes/update' => 'athletes#update', as: 'athlete_update'

  post 'exercises/new' => 'exercise#new', as: 'exercise_new'

  get 'home/index'

  devise_for :athletes, controllers: {
        sessions: 'athletes/sessions',
        registrations: 'athletes/registrations'
      }

      devise_for :trainers, controllers: {
        sessions: 'trainers/sessions',
        registrations: 'trainers/registrations'
      }

	root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
