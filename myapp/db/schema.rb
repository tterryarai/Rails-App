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

ActiveRecord::Schema.define(version: 20160828131612) do

  create_table "authors", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "books", force: :cascade do |t|
    t.string   "title",                          null: false
    t.string   "volume",      default: "(none)"
    t.text     "description"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "status",                         null: false
    t.string   "group1",      default: "(none)"
    t.string   "group2",      default: "(none)"
    t.string   "provider",    default: "(none)"
    t.string   "author",      default: "(none)"
  end

  create_table "groups", force: :cascade do |t|
    t.integer  "app_id",     null: false
    t.string   "group1",     null: false
    t.string   "group2",     null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "leafs", force: :cascade do |t|
    t.string   "title",                          null: false
    t.string   "subtitle"
    t.text     "description"
    t.string   "group1",                         null: false
    t.string   "group2",                         null: false
    t.string   "group3",      default: "(none)"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "modelstocks", force: :cascade do |t|
    t.string   "name",                           null: false
    t.text     "description"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "scale",       default: "(none)"
    t.string   "status",                         null: false
    t.string   "group1",      default: "(none)"
    t.string   "group2",      default: "(none)"
    t.string   "provider",    default: "(none)"
  end

  create_table "providers", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "app_id",     null: false
  end

  create_table "stamps", force: :cascade do |t|
    t.string   "name",                           null: false
    t.string   "issue_date",  default: "(none)"
    t.text     "description"
    t.string   "image_path",  default: "(none)"
    t.string   "remark1",     default: "(none)"
    t.string   "remark2",     default: "(none)"
    t.string   "remark3",     default: "(none)"
    t.string   "area",                           null: false
    t.string   "group1",      default: "(none)"
    t.string   "group2",      default: "(none)"
    t.string   "group3",      default: "(none)"
    t.string   "price",       default: "(none)"
    t.string   "status",                         null: false
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.integer  "leaf_id",     default: 0
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",              default: "", null: false
    t.string   "encrypted_password", default: "", null: false
    t.integer  "sign_in_count",      default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

  create_table "virtual_courses", force: :cascade do |t|
    t.string   "name",        null: false
    t.float    "length",      null: false
    t.text     "description"
    t.string   "image_path"
    t.string   "icon_path"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "virtual_points", force: :cascade do |t|
    t.string   "name",                              null: false
    t.integer  "order",                             null: false
    t.float    "distance",                          null: false
    t.text     "description"
    t.float    "lat"
    t.float    "lng"
    t.string   "image_path"
    t.string   "icon_path"
    t.integer  "virtual_course_id",                 null: false
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.boolean  "goal",              default: false, null: false
  end

  create_table "virtual_runs", force: :cascade do |t|
    t.string   "status",            default: "Start", null: false
    t.float    "length",            default: 0.0,     null: false
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.integer  "virtual_course_id"
    t.float    "last",              default: 0.0
  end

end
