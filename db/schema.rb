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

ActiveRecord::Schema.define(:version => 20120123205440) do

  create_table "equipment", :force => true do |t|
    t.string   "label"
    t.text     "modele"
    t.text     "marque"
    t.text     "achat"
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

  create_table "equipments_tasks", :id => false, :force => true do |t|
    t.integer "equipment_id"
    t.integer "task_id"
  end

  create_table "groups", :force => true do |t|
    t.text     "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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

  create_table "plots_tasks", :id => false, :force => true do |t|
    t.integer "plot_id"
    t.integer "task_id"
  end

  create_table "tasks", :force => true do |t|
    t.text     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tasks_workers", :id => false, :force => true do |t|
    t.integer "task_id"
    t.integer "worker_id"
  end

  create_table "tasks_works", :id => false, :force => true do |t|
    t.integer "task_id"
    t.integer "work_id"
  end

  create_table "users", :force => true do |t|
    t.string   "login"
    t.string   "password"
    t.text     "email"
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
    t.integer  "worktype_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "works", ["worktype_id"], :name => "index_works_on_worktype_id"

end
