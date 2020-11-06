# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_07_26_110709) do

  create_table "learning_resources", force: :cascade do |t|
    t.text "url"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "study_group_attendances", force: :cascade do |t|
    t.integer "study_group_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "host"
    t.index ["study_group_id"], name: "index_study_group_attendances_on_study_group_id"
    t.index ["user_id"], name: "index_study_group_attendances_on_user_id"
  end

  create_table "study_group_event_attendances", force: :cascade do |t|
    t.integer "study_group_attendance_id", null: false
    t.integer "study_group_event_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["study_group_attendance_id"], name: "index_sg_event_attendances_on_sg_attendance_id"
    t.index ["study_group_event_id"], name: "index_study_group_event_attendances_on_study_group_event_id"
  end

  create_table "study_group_events", force: :cascade do |t|
    t.datetime "date"
    t.integer "study_group_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["study_group_id"], name: "index_study_group_events_on_study_group_id"
  end

  create_table "study_groups", force: :cascade do |t|
    t.integer "learning_resource_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "finished"
    t.text "zoom_meeting_join_url"
    t.index ["learning_resource_id"], name: "index_study_groups_on_learning_resource_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.text "zoom_oauth_data"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "provider"
    t.string "uid"
    t.string "name"
    t.string "zoom_user_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "study_group_attendances", "study_groups"
  add_foreign_key "study_group_attendances", "users"
  add_foreign_key "study_group_event_attendances", "study_group_attendances"
  add_foreign_key "study_group_event_attendances", "study_group_events"
  add_foreign_key "study_groups", "learning_resources"
end
