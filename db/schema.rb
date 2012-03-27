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

ActiveRecord::Schema.define(:version => 20120308092927) do

  create_table "equipment", :force => true do |t|
    t.string   "label"
    t.string   "modele"
    t.string   "marque"
    t.string   "achat"
    t.integer  "equipment_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "equipment", ["equipment_type_id"], :name => "index_equipment_on_equipment_type_id"

  create_table "equipment_types", :force => true do |t|
    t.string   "label"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "groups", :force => true do |t|
    t.text     "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "join_tables", :force => true do |t|
    t.integer  "plot_id"
    t.integer  "work_id"
    t.integer  "worker_id"
    t.integer  "equipment_id"
    t.integer  "task_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "join_tables", ["plot_id", "work_id", "worker_id", "equipment_id", "task_id"], :name => "index_jointure", :unique => true

  create_table "plot_informations", :force => true do |t|
    t.text     "surface"
    t.text     "commune"
    t.integer  "section"
    t.integer  "numero"
    t.text     "gps"
    t.integer  "location"
    t.integer  "plot_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "plot_informations", ["plot_id"], :name => "index_plot_informations_on_plot_id"

  create_table "plots", :force => true do |t|
    t.string   "label"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tasks", :force => true do |t|
    t.datetime "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "login"
    t.string   "password_hash"
    t.string   "password_salt"
    t.string   "email"
    t.integer  "group_id"
    t.integer  "disabled"
    t.text     "created"
    t.text     "modified"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["group_id"], :name => "index_users_on_group_id"

  create_table "work_types", :force => true do |t|
    t.string   "label"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "workers", :force => true do |t|
    t.string   "nom"
    t.string   "prenom"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "works", :force => true do |t|
    t.string   "label"
    t.integer  "work_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "works", ["work_type_id"], :name => "index_works_on_work_type_id"

end
