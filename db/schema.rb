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

ActiveRecord::Schema.define(version: 20150626073437) do

  create_table "categories", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "details", force: :cascade do |t|
    t.string   "floor_plan",      limit: 255
    t.string   "area",            limit: 255
    t.string   "balacony",        limit: 255
    t.string   "structure",       limit: 255
    t.string   "floor",           limit: 255
    t.string   "total_unit",      limit: 255
    t.string   "built_year",      limit: 255
    t.string   "renovated_year",  limit: 255
    t.string   "maneger_company", limit: 255
    t.string   "land_use_right",  limit: 255
    t.string   "access",          limit: 255
    t.string   "price",           limit: 255
    t.string   "loan",            limit: 255
    t.string   "maneger_cost",    limit: 255
    t.string   "repair_reserve",  limit: 255
    t.string   "other_cost",      limit: 255
    t.string   "address",         limit: 255
    t.string   "current_state",   limit: 255
    t.string   "delivery",        limit: 255
    t.string   "other",           limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "houses", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.binary   "image",       limit: 65535
    t.text     "content",     limit: 65535
    t.integer  "user_id",     limit: 4
    t.integer  "category_id", limit: 4
    t.integer  "detail_id",   limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "houses", ["category_id"], name: "index_houses_on_category_id", using: :btree
  add_index "houses", ["detail_id"], name: "index_houses_on_detail_id", using: :btree
  add_index "houses", ["user_id"], name: "index_houses_on_user_id", using: :btree

  create_table "posts", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.binary   "image",       limit: 65535
    t.text     "content",     limit: 65535
    t.integer  "user_id",     limit: 4
    t.integer  "category_id", limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "posts", ["category_id"], name: "index_posts_on_category_id", using: :btree
  add_index "posts", ["user_id"], name: "index_posts_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name",            limit: 255
    t.string   "email",           limit: 255
    t.string   "introduction",    limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "password_digest", limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

  add_foreign_key "posts", "categories"
end
