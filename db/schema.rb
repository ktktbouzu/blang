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

ActiveRecord::Schema[7.1].define(version: 2024_08_28_140656) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "expense_items", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "is_mon_exp", limit: 2, comment: "Is monthly expense"
    t.bigint "finance_profile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["finance_profile_id"], name: "index_expense_items_on_finance_profile_id"
  end

  create_table "finance_profiles", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_finance_profiles_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "expense_items", "finance_profiles"
  add_foreign_key "finance_profiles", "users"
end
