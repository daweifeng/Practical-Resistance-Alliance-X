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

ActiveRecord::Schema.define(version: 2019_05_07_131530) do

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_categories_on_name", unique: true
  end

  create_table "intermediates", id: false, force: :cascade do |t|
    t.integer "category_id"
    t.integer "toolkit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_intermediates_on_category_id"
    t.index ["toolkit_id"], name: "index_intermediates_on_toolkit_id"
  end

  create_table "ssteps", force: :cascade do |t|
    t.string "content"
    t.integer "number"
    t.integer "stoolkit_id"
  end

  create_table "steps", force: :cascade do |t|
    t.string "content"
    t.integer "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "toolkit_id"
  end

  create_table "stoolkits", force: :cascade do |t|
    t.string "title"
    t.string "author"
    t.text "overview"
    t.integer "toolkit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "toolkits", force: :cascade do |t|
    t.string "title"
    t.string "author"
    t.text "overview"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.string "firstName"
    t.string "lastName"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
