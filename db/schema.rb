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

ActiveRecord::Schema.define(version: 20180221033911) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "billables", force: :cascade do |t|
    t.string "item_number"
    t.string "visit_type"
    t.integer "min_visit"
    t.integer "max_visit"
    t.float "core_fee"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "category"
  end

  create_table "claim_data", force: :cascade do |t|
    t.string "provider_full_name"
    t.string "provider_id"
    t.string "date_of_service"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "client_full_name"
    t.string "service"
    t.string "duration"
  end

  create_table "claims", force: :cascade do |t|
    t.string "cnc_hours"
    t.string "cnc_visits"
    t.string "en_hours"
    t.string "en_visits"
    t.string "nss_hours"
    t.string "nss_visits"
    t.string "rn_hours"
    t.string "rn_visits"
    t.string "claim_amount"
    t.string "items"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "client_full_name"
    t.string "status"
  end

  create_table "clients", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "dob"
    t.string "gender"
    t.string "dva_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "accepted_disability"
    t.string "admission_date"
    t.string "discharge_date"
    t.string "break_in_episode_of_care"
    t.string "start_date_break_episode"
    t.string "end_date_break_episode"
    t.string "refer_doctor_first_name"
    t.string "refer_doctor_last_name"
    t.string "refer_doctor_provider_number"
    t.string "refer_date"
    t.string "refer_type"
    t.string "accepted_disability_text"
    t.string "palliative_status"
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.string "item_number"
    t.string "classification"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "role"
    t.string "invitation_token"
    t.datetime "invitation_created_at"
    t.datetime "invitation_sent_at"
    t.datetime "invitation_accepted_at"
    t.integer "invitation_limit"
    t.string "invited_by_type"
    t.integer "invited_by_id"
    t.integer "invitations_count", default: 0
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["invitation_token"], name: "index_users_on_invitation_token", unique: true
    t.index ["invitations_count"], name: "index_users_on_invitations_count"
    t.index ["invited_by_id"], name: "index_users_on_invited_by_id"
    t.index ["invited_by_type", "invited_by_id"], name: "index_users_on_invited_by_type_and_invited_by_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
