Rails.application.routes.draw do
  get 'athletes/info' => 'athletes#info', as: 'athlete'

  patch 'athletes/update' => 'athletes#update', as: 'athlete_update'

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
