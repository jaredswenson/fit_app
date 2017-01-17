                     Prefix Verb   URI Pattern                              Controller#Action
                  exercises GET    /exercises(.:format)                     exercises#index
                            POST   /exercises(.:format)                     exercises#create
               new_exercise GET    /exercises/new(.:format)                 exercises#new
              edit_exercise GET    /exercises/:id/edit(.:format)            exercises#edit
                   exercise GET    /exercises/:id(.:format)                 exercises#show
                            PATCH  /exercises/:id(.:format)                 exercises#update
                            PUT    /exercises/:id(.:format)                 exercises#update
                            DELETE /exercises/:id(.:format)                 exercises#destroy
                  templates GET    /templates(.:format)                     templates#index
                            POST   /templates(.:format)                     templates#create
               new_template GET    /templates/new(.:format)                 templates#new
              edit_template GET    /templates/:id/edit(.:format)            templates#edit
                   template GET    /templates/:id(.:format)                 templates#show
                            PATCH  /templates/:id(.:format)                 templates#update
                            PUT    /templates/:id(.:format)                 templates#update
                            DELETE /templates/:id(.:format)                 templates#destroy
                  questions GET    /questions(.:format)                     questions#index
                            POST   /questions(.:format)                     questions#create
               new_question GET    /questions/new(.:format)                 questions#new
              edit_question GET    /questions/:id/edit(.:format)            questions#edit
                   question GET    /questions/:id(.:format)                 questions#show
                            PATCH  /questions/:id(.:format)                 questions#update
                            PUT    /questions/:id(.:format)                 questions#update
                            DELETE /questions/:id(.:format)                 questions#destroy
                   comments GET    /comments(.:format)                      comments#index
                            POST   /comments(.:format)                      comments#create
                new_comment GET    /comments/new(.:format)                  comments#new
               edit_comment GET    /comments/:id/edit(.:format)             comments#edit
                    comment GET    /comments/:id(.:format)                  comments#show
                            PATCH  /comments/:id(.:format)                  comments#update
                            PUT    /comments/:id(.:format)                  comments#update
                            DELETE /comments/:id(.:format)                  comments#destroy
                    athlete GET    /athletes/info(.:format)                 athletes#info
              athlete_index GET    /athletes/index(.:format)                athletes#index
             athlete_update PATCH  /athletes/update(.:format)               athletes#update
               exercise_new POST   /exercises/new(.:format)                 exercise#new
           athletes_workout GET    /athletes/workout/:template_id(.:format) athletes#workout
                log_workout GET    /loggedworkouts(.:format)                logged_workouts#create
            logged_workouts POST   /loggedworkouts(.:format)                logged_workouts#create
              trainer_index GET    /trainers/index(.:format)                trainers#index
           athletes_destroy GET    /athletes/destroy(.:format)              athletes#destroy
              athletes_info PATCH  /athletes/info/:template_id(.:format)    athletes#info
        new_athlete_session GET    /athletes/sign_in(.:format)              athletes/sessions#new
            athlete_session POST   /athletes/sign_in(.:format)              athletes/sessions#create
    destroy_athlete_session DELETE /athletes/sign_out(.:format)             athletes/sessions#destroy
       new_athlete_password GET    /athletes/password/new(.:format)         devise/passwords#new
      edit_athlete_password GET    /athletes/password/edit(.:format)        devise/passwords#edit
           athlete_password PATCH  /athletes/password(.:format)             devise/passwords#update
                            PUT    /athletes/password(.:format)             devise/passwords#update
                            POST   /athletes/password(.:format)             devise/passwords#create
cancel_athlete_registration GET    /athletes/cancel(.:format)               athletes/registrations#cancel
   new_athlete_registration GET    /athletes/sign_up(.:format)              athletes/registrations#new
  edit_athlete_registration GET    /athletes/edit(.:format)                 athletes/registrations#edit
       athlete_registration PATCH  /athletes(.:format)                      athletes/registrations#update
                            PUT    /athletes(.:format)                      athletes/registrations#update
                            DELETE /athletes(.:format)                      athletes/registrations#destroy
                            POST   /athletes(.:format)                      athletes/registrations#create
        new_trainer_session GET    /trainers/sign_in(.:format)              trainers/sessions#new
            trainer_session POST   /trainers/sign_in(.:format)              trainers/sessions#create
    destroy_trainer_session DELETE /trainers/sign_out(.:format)             trainers/sessions#destroy
       new_trainer_password GET    /trainers/password/new(.:format)         devise/passwords#new
      edit_trainer_password GET    /trainers/password/edit(.:format)        devise/passwords#edit
           trainer_password PATCH  /trainers/password(.:format)             devise/passwords#update
                            PUT    /trainers/password(.:format)             devise/passwords#update
                            POST   /trainers/password(.:format)             devise/passwords#create
cancel_trainer_registration GET    /trainers/cancel(.:format)               trainers/registrations#cancel
   new_trainer_registration GET    /trainers/sign_up(.:format)              trainers/registrations#new
  edit_trainer_registration GET    /trainers/edit(.:format)                 trainers/registrations#edit
       trainer_registration PATCH  /trainers(.:format)                      trainers/registrations#update
                            PUT    /trainers(.:format)                      trainers/registrations#update
                            DELETE /trainers(.:format)                      trainers/registrations#destroy
                            POST   /trainers(.:format)                      trainers/registrations#create
                       root GET    /                                        home#index
