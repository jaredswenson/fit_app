                     Prefix Verb   URI Pattern                       Controller#Action
                    athlete GET    /athletes/info(.:format)          athletes#info
             athlete_update POST   /athletes/update(.:format)        athletes#update
                 home_index GET    /home/index(.:format)             home#index
        new_athlete_session GET    /athletes/sign_in(.:format)       athletes/sessions#new
            athlete_session POST   /athletes/sign_in(.:format)       athletes/sessions#create
    destroy_athlete_session DELETE /athletes/sign_out(.:format)      athletes/sessions#destroy
       new_athlete_password GET    /athletes/password/new(.:format)  devise/passwords#new
      edit_athlete_password GET    /athletes/password/edit(.:format) devise/passwords#edit
           athlete_password PATCH  /athletes/password(.:format)      devise/passwords#update
                            PUT    /athletes/password(.:format)      devise/passwords#update
                            POST   /athletes/password(.:format)      devise/passwords#create
cancel_athlete_registration GET    /athletes/cancel(.:format)        athletes/registrations#cancel
   new_athlete_registration GET    /athletes/sign_up(.:format)       athletes/registrations#new
  edit_athlete_registration GET    /athletes/edit(.:format)          athletes/registrations#edit
       athlete_registration PATCH  /athletes(.:format)               athletes/registrations#update
                            PUT    /athletes(.:format)               athletes/registrations#update
                            DELETE /athletes(.:format)               athletes/registrations#destroy
                            POST   /athletes(.:format)               athletes/registrations#create
        new_trainer_session GET    /trainers/sign_in(.:format)       trainers/sessions#new
            trainer_session POST   /trainers/sign_in(.:format)       trainers/sessions#create
    destroy_trainer_session DELETE /trainers/sign_out(.:format)      trainers/sessions#destroy
       new_trainer_password GET    /trainers/password/new(.:format)  devise/passwords#new
      edit_trainer_password GET    /trainers/password/edit(.:format) devise/passwords#edit
           trainer_password PATCH  /trainers/password(.:format)      devise/passwords#update
                            PUT    /trainers/password(.:format)      devise/passwords#update
                            POST   /trainers/password(.:format)      devise/passwords#create
cancel_trainer_registration GET    /trainers/cancel(.:format)        trainers/registrations#cancel
   new_trainer_registration GET    /trainers/sign_up(.:format)       trainers/registrations#new
  edit_trainer_registration GET    /trainers/edit(.:format)          trainers/registrations#edit
       trainer_registration PATCH  /trainers(.:format)               trainers/registrations#update
                            PUT    /trainers(.:format)               trainers/registrations#update
                            DELETE /trainers(.:format)               trainers/registrations#destroy
                            POST   /trainers(.:format)               trainers/registrations#create
                       root GET    /                                 home#index