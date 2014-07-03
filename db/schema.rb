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

ActiveRecord::Schema.define(:version => 20140703053230) do

  create_table "employees", :force => true do |t|
    t.string   "name"
    t.date     "date_of_birth"
    t.integer  "age"
    t.string   "gender"
    t.text     "address"
    t.string   "city"
    t.string   "designation"
    t.string   "branch"
    t.date     "employee_start_date"
    t.date     "employee_end_date"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.string   "employee_category"
    t.string   "employee_code"
  end

  create_table "salaries", :force => true do |t|
    t.integer  "employeesalary_paisas",   :default => 0,     :null => false
    t.string   "employeesalary_currency", :default => "INR", :null => false
    t.integer  "basic_paisas",            :default => 0,     :null => false
    t.string   "basic_currency",          :default => "INR", :null => false
    t.integer  "da_paisas",               :default => 0,     :null => false
    t.string   "da_currency",             :default => "INR", :null => false
    t.date     "effective_from"
    t.date     "effective_to"
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
    t.integer  "hra_paisas",              :default => 0,     :null => false
    t.string   "hra_currency",            :default => "INR", :null => false
    t.integer  "ca_paisas",               :default => 0,     :null => false
    t.string   "ca_currency",             :default => "INR", :null => false
    t.integer  "sa_paisas",               :default => 0,     :null => false
    t.string   "sa_currency",             :default => "INR", :null => false
    t.integer  "employee_id"
  end

end
