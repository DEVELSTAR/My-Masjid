# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_12_08_073211) do
  create_table "bethhs", force: :cascade do |t|
    t.string "munji"
    t.string "gehun"
    t.date "filling_date"
    t.string "comments"
    t.integer "masjids_member_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["masjids_member_id"], name: "index_bethhs_on_masjids_member_id"
  end

  create_table "masjids", force: :cascade do |t|
    t.string "name"
    t.string "city"
    t.string "village"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "status"
    t.string "mutawalli"
    t.string "imam"
    t.string "sub_admin"
    t.index ["user_id"], name: "index_masjids_on_user_id"
  end

  create_table "masjids_members", force: :cascade do |t|
    t.string "name"
    t.string "father_name"
    t.integer "masjid_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["masjid_id"], name: "index_masjids_members_on_masjid_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.integer "phone"
    t.string "city"
    t.string "village"
    t.boolean "imam"
    t.string "status"
    t.boolean "is_admin", default: false
    t.boolean "mutawalli"
    t.string "sub_admin"
    t.string "qualifications"
    t.string "experience"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bethhs", "masjids_members"
  add_foreign_key "masjids", "users"
  add_foreign_key "masjids_members", "masjids"
end
