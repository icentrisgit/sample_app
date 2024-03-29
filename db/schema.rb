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

ActiveRecord::Schema.define(:version => 20130412102715) do

  create_table "admins", :force => true do |t|
    t.string   "username"
    t.string   "password"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "remember_token"
  end

  add_index "admins", ["remember_token"], :name => "index_admins_on_remember_token"

  create_table "employees", :force => true do |t|
    t.string   "emp_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "gender"
    t.string   "email_id"
    t.text     "address"
    t.integer  "phone_number"
    t.integer  "pan_number"
    t.integer  "bank_acc_no"
    t.string   "designation"
    t.string   "grossCTC"
    t.date     "date_of_joining"
    t.date     "date_of_birth"
    t.date     "date_of_relieve"
    t.string   "status"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
