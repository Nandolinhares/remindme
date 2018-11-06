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

ActiveRecord::Schema.define(version: 20181106105911) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "atributos", force: :cascade do |t|
    t.string "name"
    t.bigint "requirement_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["requirement_id"], name: "index_atributos_on_requirement_id"
  end

  create_table "databases", force: :cascade do |t|
    t.string "name"
    t.string "author"
    t.text "description"
    t.string "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "requirements", force: :cascade do |t|
    t.string "name"
    t.integer "priority"
    t.text "description"
    t.bigint "database_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "atributo"
    t.string "atributo_radio"
    t.boolean "flag"
    t.index ["database_id"], name: "index_requirements_on_database_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "atributos", "requirements"
  add_foreign_key "requirements", "databases"
end
