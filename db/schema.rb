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

ActiveRecord::Schema.define(version: 20150723112413) do

  create_table "groups", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "user"
  end

  create_table "instante_messages", force: :cascade do |t|
    t.string   "text"
    t.string   "user_id_sent"
    t.string   "user_id_received"
    t.string   "group_id"
    t.datetime "time"
  end

  create_table "tasks", force: :cascade do |t|
    t.string  "field"
    t.boolean "status"
    t.string  "user_id"
  end

  create_table "user_groups", force: :cascade do |t|
    t.string "group_id"
    t.string "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
  end

end
