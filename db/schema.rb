# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170113185516) do

  create_table "athletes", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "home_gym"
    t.string   "phone"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "trainer_id"
    t.integer  "height"
    t.integer  "weight"
    t.integer  "age"
    t.string   "body_fat"
    t.string   "goal"
    t.integer  "days_per_week"
    t.integer  "goal_weight"
    t.string   "gender"
    t.integer  "template_id"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "calories"
    t.integer  "carbs"
    t.integer  "protein"
    t.integer  "fats"
    t.index ["email"], name: "index_athletes_on_email", unique: true
    t.index ["reset_password_token"], name: "index_athletes_on_reset_password_token", unique: true
    t.index ["template_id"], name: "index_athletes_on_template_id"
    t.index ["trainer_id"], name: "index_athletes_on_trainer_id"
  end

  create_table "conversations", force: :cascade do |t|
    t.integer  "athlete_id"
    t.integer  "trainer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["athlete_id"], name: "index_conversations_on_athlete_id"
    t.index ["trainer_id"], name: "index_conversations_on_trainer_id"
  end

  create_table "exercises", force: :cascade do |t|
    t.string   "name"
    t.string   "category"
    t.string   "primary_muscle"
    t.string   "secondary_muscle"
    t.text     "instruction"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "logged_workouts", force: :cascade do |t|
    t.integer  "athlete_id"
    t.integer  "template_id"
    t.integer  "rep_count"
    t.integer  "sets"
    t.integer  "weight"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.text     "comment"
    t.index ["athlete_id"], name: "index_logged_workouts_on_athlete_id"
    t.index ["template_id"], name: "index_logged_workouts_on_template_id"
  end

  create_table "messages", force: :cascade do |t|
    t.integer  "conversation_id"
    t.text     "content"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["conversation_id"], name: "index_messages_on_conversation_id"
  end

  create_table "templates", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trainers", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_trainers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_trainers_on_reset_password_token", unique: true
  end

  create_table "workouts", force: :cascade do |t|
    t.integer "exercise_id"
    t.integer "template_id"
    t.integer "day_number"
    t.index ["exercise_id"], name: "index_workouts_on_exercise_id"
    t.index ["template_id"], name: "index_workouts_on_template_id"
  end

end
