Rails.application.routes.draw do

  resources :exercises
  resources :templates
  resources :questions
  resources :comments

  get 'athletes/info' => 'athletes#info', as: 'athlete'

  get 'athletes/index' => 'athletes#index', as: 'athlete_index'

  patch 'athletes/update' => 'athletes#update', as: 'athlete_update'

  post 'exercises/new' => 'exercise#new', as: 'exercise_new'

  get 'athletes/workout/:template_id' => 'athletes#workout', as: 'athletes_workout'

  get 'loggedworkouts' => 'logged_workouts#create', as: 'log_workout'

  post 'loggedworkouts' => 'logged_workouts#create', as: 'logged_workouts'

  get 'trainers/index' => 'trainers#index', as: 'trainer_index'

  get 'athletes/destroy' => 'athletes#destroy', as: 'athletes_destroy'

  patch 'athletes/info/:template_id' => 'athletes#info', as: 'athletes_info'

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
