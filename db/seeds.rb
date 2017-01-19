# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#trainer
trainer = Trainer.create(email: 'trainer@gmail.com', first_name: 'Jared', last_name: 'Swenson', password: 'password')


#templates
threeday = Template.create(name: '3 day workout')
fourday = Template.create(name: '4 day workout')
fiveday = Template.create(name: '5 day workout')

#arms exercises
#bicep
barbell_curls = Exercise.create(name: 'Barbell Bicep Curls', category: "Arms", primary_muscle: "Biceps", secondary_muscle: 'n/a', 
	instruction: "Hold the Barbell shoulder-wide, the back is straight, the shoulders slightly back, the arms are streched. 
	Bend the arms, bringing the weight up, with a fast movement. Without pausing, let down the bar with a slow and controlled movement.")

preacher_curls = Exercise.create(name: 'Preacher Curls', category: "Arms", primary_muscle: "Biceps", secondary_muscle: 'n/a', 
	instruction: "Place the EZ curl bar on the rest handles in front of the preacher bench. Lean over the bench and grab the EZ curl bar with palms up. 
	Sit down on the preacher bench seat so your upper arms rest on top of the pad and your chest is pressed against the pad. Lower the weight until 
	your elbows are extended and arms are straight. Bring the weights back up to the starting point by contracting biceps. Repeat")

hammer_curls = Exercise.create(name: 'Hammer Curls', category: "Arms", primary_muscle: "Biceps", secondary_muscle: 'n/a', 
	instruction: "Hold two dumbbells and sit on a bench with a straight back, the shoulders are slightly rolled backwards. Your pals point to your body.
	 Bend the arms and bring the weight up with a fast movement. Don't rotate your hands, as with the curls. 
	 Without any pause bring the dumbbell down with a slow, controlled movement.")
#tricep
french_press = Exercise.create(name: 'French Press(Skullcrusher)', category: "Arms", primary_muscle: "Triceps", secondary_muscle: 'n/a', 
	instruction: "Hold the SZ-bar and lay down on a flat bench in such a way that around 1/4 of your head is over the edge. Stretch your arms with the 
	bar and bend them so that the bar is lowered. Just before it touches your forehead, push it up")

tricep_extension = Exercise.create(name: 'Dumbell Tricep Extentions', category: "Arms", primary_muscle: "Triceps", secondary_muscle: 'n/a', 
	instruction: "Position one dumbbell over head with both hands under inner plate (heart shaped grip). 
	With elbows over head, lower forearm behind upper arm by flexing elbows. Flex wrists at bottom to avoid hitting dumbbell on back of neck. 
	Raise dumbbell over head by extending elbows while hyperextending wrists. Return and repeat.")

dips = Exercise.create(name: 'Dips', category: "Arms", primary_muscle: "Triceps", secondary_muscle: 'Chest', 
	instruction: "Hold onto the bars at a narrow place (if they are not parallel) and press yourself up, but don't stretch the arms completely, 
	so the muscles stay during the whole exercise under tension. Now bend the arms and go down as much as you can, keeping the elbows always pointing 
	back, At this point, you can make a short pause before repeating the movement.")

#chest exercises
bench_press = Exercise.create(name: 'Bench Press', category: "Chest", primary_muscle: "Chest", secondary_muscle: 'Biceps', 
	instruction: "Lay down on a bench, the bar should be directly above your eyes, the knees are somewhat angled and the feet are firmly on the floor. 
	Concentrate, breath deeply and grab the bar more than shoulder wide. Bring it slowly down till it briefly touches your chest at the height of 
	your nipples. Push the bar up.")

incline_bench_press = Exercise.create(name: 'Incline Bench Press', category: "Chest", primary_muscle: "Chest", secondary_muscle: 'Triceps', 
	instruction: "Lay down on a bench, the bar should be directly above your eyes, the knees are somewhat angled and the feet are firmly on the floor. 
	Concentrate, breath deeply and grab the bar more than shoulder wide. Bring it slowly down till it briefly touches your chest at the height of 
	your nipples. Push the bar up.")

butterfly = Exercise.create(name: 'Butterfly', category: "Chest", primary_muscle: "Chest", secondary_muscle: 'Shoulders', 
	instruction: "Sit on the butterfly machine, the feet have a good contact with the floor, the upper arms are parallel to the floor. 
	Press your arms together till the handles are practically together (but aren't!). Go slowly back. 
	The weights should stay all the time in the air.")

#back exercises
barbell_row = Exercise.create(name: 'Barbell Row', category: "Back", primary_muscle: "Lats", secondary_muscle: 'Shoulders, Biceps', 
	instruction: "Grab the barbell with a wide grip (slightly more than shoulder wide) and lean forward. 
	Your upper body is not quite parallel to the floor, but forms a slight angle. The chest's out during the whole exercise")

lat_pulldown = Exercise.create(name: 'Lat Pulldown', category: "Back", primary_muscle: "Lats", secondary_muscle: 'n/a', 
	instruction: "Grip the pull-down bar with your hands closer than shoulder width apart, with your palms facing away from you. Lean back slightly. 
	Pull the bar down towards your chest, keeping your elbows close to your sides as you come down. 
	Pull your shoulders back at the end of the motion.")

hyperextension = Exercise.create(name: 'Hyperextension', category: "Back", primary_muscle: "Traps", secondary_muscle: 'n/a', 
	instruction: "Lay on the hyperextension pad with the belly button just at the leading edge, the upper body can hang freely. 
	Tense your whole back's muscles and bring your upper body up till it is horizontal, but not more. 
	Go slowly down and don't relax your muscles.")

#leg exercises
squats = Exercise.create(name: 'Squats', category: "Legs", primary_muscle: "Quads", secondary_muscle: 'Glutes', 
	instruction: "Go now slowly down, till your thighs are parallel with the floor, not lower. The knees point outwards, your butt, out. 
	Make a small pause of 1 second and with as much energy as you can, push the weight up. Make a pause of 2 seconds and repeat.")

leg_curls = Exercise.create(name: 'Leg Curls', category: "Legs", primary_muscle: "Hamstrings", secondary_muscle: 'n/a', 
	instruction: "Lay on a bench and put your calves behind the leg holder (better if they are hold on around the lower calves). 
	Hold a grip on the bars to make sure the body is firmly in place. Bend your legs bringing the weight up, go slowly back. 
	During the exercise the body should not move, all work is done by the legs.")

leg_extensions = Exercise.create(name: 'Hyperextension', category: "Legs", primary_muscle: "Quads", secondary_muscle: 'n/a', 
	instruction: "Seated Leg Extension Machine")

#shoulder exercises
shoulder_press = Exercise.create(name: 'Should Press', category: "Shoulders", primary_muscle: "Shoulders", secondary_muscle: 'n/a', 
	instruction: "Sit on a bench, the back rest should be almost vertical. Take a barbell with a shoulder wide grip and bring it up to chest height. 
	Press the weight up, but don't stretch the arms completely. Go slowly down and repeat.")

side_raises = Exercise.create(name: 'Side Raises', category: "Shoulders", primary_muscle: "Shoulders", secondary_muscle: 'n/a', 
	instruction: "Stand up or sit , keep both weights in front against legs or at side. Keep arms at around a 90 degree angle. 
	Lift elbows up slowly and squeese traps when at topmost position. Lower the weights slowly back to starting position.")

shrugs = Exercise.create(name: 'Shrugs', category: "Shoulders", primary_muscle: "Shoulders", secondary_muscle: 'n/a', 
	instruction: "Stand with straight body, the hands are hanging freely on the side and hold each a dumbbell. Lift from this position the shoulders 
	as high as you can, but don't bend the arms during the movement. On the highest point, make a short pause of 1 or 2 seconds before returning 
	slowly to the initial position.")

#core exercises
crunches = Exercise.create(name: 'Crunches', category: "Core", primary_muscle: "Abs", secondary_muscle: 'n/a', 
	instruction: "Lay down on your back a soft surface, the feet are on the floor. Ask a partner or use some other help (barbell, etc.) 
	to keep them fixed, your hands are behind your head. From this position move your upper body up till your head or elbows touch your knees. 
	Do this movement by rolling up your back.")

negative_crunches = Exercise.create(name: 'Negative Crunches', category: "Core", primary_muscle: "Abs", secondary_muscle: 'n/a', 
	instruction: "Sit yourself on the decline bench and fix your legs. Cross your arms over the chest and bring with a rolling movement your upper 
	body up, go now without a pause and with a slow movement down again. Don't let your head move during the exercise.")

leg_raises = Exercise.create(name: 'Leg Raises', category: "Core", primary_muscle: "Abs", secondary_muscle: 'n/a', 
	instruction: "Lay down on a bench and hold onto the recliner with your hands to keep you stable. Hold your legs straight and lift them till 
	they make an angle of about 45°. Make a short pause of 1 sec. and go slowly down to the initial position. 
	To increase the intensity you can make a longer pause of 7 sec. every 5th time.")

steady_cardio = Exercise.create(name: 'Steady Cardio', category: "Core", primary_muscle: "Cardio", secondary_muscle: 'n/a', 
	instruction: "Do steady state cardio for 20-30 minutes. Use the cardio machine of your choice, treadmill, elliptical, stairmaster etc...")

incline_cardio = Exercise.create(name: 'Incline Steady Cardio', category: "Core", primary_muscle: "Cardio", secondary_muscle: 'n/a', 
	instruction: "Do steady state cardio for 20-30 minutes. Use a treadmill with the incline all the way up")

hiit_cardio = Exercise.create(name: 'High Intensity Interval Cardio', category: "Core", primary_muscle: "Cardio", secondary_muscle: 'n/a', 
	instruction: "Do high intensity intervals of 1 minute at about 90% speed and 1 minute at about 50% speed  for 15-20 minutes. 
	Use the cardio machine of your choice, treadmill, elliptical, stairmaster etc...")

rest = Exercise.create(name: 'High Intensity Interval Cardio', category: "Core", primary_muscle: "n/a", secondary_muscle: 'n/a', 
	instruction: "")

active_rest = Exercise.create(name: 'High Intensity Interval Cardio', category: "Core", primary_muscle: "n/a", secondary_muscle: 'n/a', 
	instruction: "If feeling up to it, do some cardio, go on a hike or something a long those lines. Just try to be active.")

#workouts

threeday.workouts.create([
	{ exercise_id: barbell_curls.id, day_number: 1},
	{ exercise_id: preacher_curls.id, day_number: 1},
	{ exercise_id: barbell_row.id, day_number: 1},
	{ exercise_id: lat_pulldown.id, day_number: 1},
	{ exercise_id: steady_cardio.id, day_number: 1},

	{ exercise_id: rest.id, day_number: 2},

	{ exercise_id: squats.id, day_number: 3},
	{ exercise_id: leg_extensions.id, day_number: 3},
	{ exercise_id: shoulder_press.id, day_number: 3},
	{ exercise_id: side_raises.id, day_number: 3},
	{ exercise_id: crunches.id, day_number: 3},
	{ exercise_id: leg_raises.id, day_number: 3},

	{ exercise_id: active_rest.id, day_number: 4},

	{ exercise_id: french_press.id, day_number: 5},
	{ exercise_id: tricep_extension.id, day_number: 5},
	{ exercise_id: bench_press.id, day_number: 5},
	{ exercise_id: butterfly.id, day_number: 5},
	{ exercise_id: hiit_cardio.id, day_number: 5}
	])

fourday.workouts.create([
	{ exercise_id: barbell_curls.id, day_number: 1},
	{ exercise_id: tricep_extension.id, day_number: 1},
	{ exercise_id: shoulder_press.id, day_number: 1},
	{ exercise_id: side_raises.id, day_number: 1},
	
	{ exercise_id: bench_press.id, day_number: 2},
	{ exercise_id: incline_bench_press.id, day_number: 2},
	{ exercise_id: barbell_row.id, day_number: 2},
	{ exercise_id: lat_pulldown.id, day_number: 2},
	{ exercise_id: steady_cardio.id, day_number: 2},

	{ exercise_id: rest.id, day_number: 3},

	{ exercise_id: squats.id, day_number: 4},
	{ exercise_id: leg_extensions.id, day_number: 4},
	{ exercise_id: leg_curls.id, day_number: 4},
	
	{ exercise_id: crunches.id, day_number: 5},
	{ exercise_id: leg_raises.id, day_number: 5},
	{ exercise_id: negative_crunches.id, day_number: 5},
	{ exercise_id: hiit_cardio.id, day_number: 5}
	])

fiveday.workouts.create([
	{ exercise_id: barbell_curls.id, day_number: 1},
	{ exercise_id: preacher_curls.id, day_number: 1},
	{ exercise_id: hammer_curls.id, day_number: 1},
	{ exercise_id: barbell_row.id, day_number: 1},
	{ exercise_id: lat_pulldown.id, day_number: 1},
	{ exercise_id: hyperextension.id, day_number: 1},

	{ exercise_id: shoulder_press.id, day_number: 2},
	{ exercise_id: side_raises.id, day_number: 2},
	{ exercise_id: shrugs.id, day_number: 2},
	{ exercise_id: steady_cardio.id, day_number: 2},
	
	{ exercise_id: bench_press.id, day_number: 3},
	{ exercise_id: incline_bench_press.id, day_number: 3},
	{ exercise_id: butterfly.id, day_number: 3},
	{ exercise_id: tricep_extension.id, day_number: 3},
	{ exercise_id: dips.id, day_number: 3},
	{ exercise_id: french_press.id, day_number: 3},

	{ exercise_id: squats.id, day_number: 4},
	{ exercise_id: leg_extensions.id, day_number: 4},
	{ exercise_id: leg_curls.id, day_number: 4},
	{ exercise_id: incline_cardio.id, day_number: 4},
	
	{ exercise_id: crunches.id, day_number: 5},
	{ exercise_id: leg_raises.id, day_number: 5},
	{ exercise_id: negative_crunches.id, day_number: 5},
	{ exercise_id: hiit_cardio.id, day_number: 5}
	])
