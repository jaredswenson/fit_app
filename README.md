# README

Ruby version - 2.3.3

To start the app run rails db:migrate followed by rails db:seed

rails db:seed will create a trainer, basic list of excercises and also the basic workout templates

afterwards you will be able to start the app up.

Trainer can:
* Create workout templates for premium athletes
* Create new excercises
* View their current athletes
* Go to their athletes dashboard to view their logged workouts
* Receive quetsions from the athletes
* Unread comments will show on the trainers dashboard, once the trainer has commented on the question it will no longer be unread.


Athlete can:
* Create profile, set goals, etc...
* View their workout template
* Start a workout from their template
* Log workouts
* View logged workouts
* Ask trainer questions
* View macro nutrition goals
* Log daily macros(in a cookie, resets daily)
* Workout template is assigned based on days per week and goals
* Macro nutrition is assigned based on weight and goals
