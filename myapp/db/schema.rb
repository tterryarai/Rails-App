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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20160221030300) do

  create_table "authors", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "books", :force => true do |t|
    t.string   "title",                         :null => false
    t.string   "volume",       :default => "-", :null => false
    t.text     "description"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
    t.integer  "publisher_id"
    t.integer  "series_id"
    t.integer  "author_id"
    t.string   "status"
    t.string   "realm"
  end

  create_table "modelstocks", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "publisher_id"
    t.integer  "series_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.string   "scale"
    t.string   "status"
    t.string   "realm"
  end

  create_table "publishers", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "app_id"
  end

  create_table "series", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "app_id"
  end

  create_table "stamps", :force => true do |t|
    t.string   "name",        :default => "(none)", :null => false
    t.string   "issue_date"
    t.text     "description"
    t.string   "image_path"
    t.string   "remark1"
    t.string   "remark2"
    t.string   "remark3"
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
    t.integer  "region"
    t.integer  "status"
    t.string   "group1"
    t.string   "group2"
    t.string   "group3"
    t.string   "price"
  end

end
