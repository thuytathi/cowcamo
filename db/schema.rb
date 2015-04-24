# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150424062418) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "details", force: :cascade do |t|
    t.string   "floor_plan"
    t.string   "area"
    t.string   "balacony"
    t.string   "structure"
    t.string   "floor"
    t.string   "total_unit"
    t.string   "built_year"
    t.string   "renovated_year"
    t.string   "maneger_company"
    t.string   "land_use_right"
    t.string   "access"
    t.string   "price"
    t.string   "loan"
    t.string   "maneger_cost"
    t.string   "repair_reserve"
    t.string   "other_cost"
    t.string   "address"
    t.string   "current_state"
    t.string   "delivery"
    t.string   "other"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "houses", force: :cascade do |t|
    t.string   "title"
    t.binary   "image"
    t.text     "content"
    t.integer  "user_id"
    t.integer  "category_id"
    t.integer  "detail_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "houses", ["category_id"], name: "index_houses_on_category_id", using: :btree
  add_index "houses", ["detail_id"], name: "index_houses_on_detail_id", using: :btree
  add_index "houses", ["user_id"], name: "index_houses_on_user_id", using: :btree

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.binary   "image"
    t.text     "content"
    t.integer  "user_id"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "posts", ["category_id"], name: "index_posts_on_category_id", using: :btree
  add_index "posts", ["user_id"], name: "index_posts_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.text     "introduction"
    t.string   "email"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_foreign_key "houses", "categories"
  add_foreign_key "houses", "details"
  add_foreign_key "houses", "users"
  add_foreign_key "posts", "categories"
  add_foreign_key "posts", "users"
end
