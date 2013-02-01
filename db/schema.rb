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

ActiveRecord::Schema.define(:version => 20130128133318) do

  create_table "books", :force => true do |t|
    t.integer  "proprietary_id"
    t.integer  "vehicle_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hypothecs", :force => true do |t|
    t.string   "applicant",           :limit => 50
    t.string   "contract_document",   :limit => 70
    t.float    "value"
    t.float    "outsanding"
    t.string   "dept_origin",         :limit => 50
    t.float    "interest_rate"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "process_register_id"
  end

  create_table "main_registers", :force => true do |t|
    t.string   "vehicle_provenience"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "process_register_id"
  end

  create_table "phones", :force => true do |t|
    t.integer  "country_code"
    t.integer  "prefix_code",    :limit => 8
    t.integer  "number"
    t.integer  "proprietary_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "process_registers", :force => true do |t|
    t.integer  "proprietary_id",               :null => false
    t.integer  "vehicle_id",                   :null => false
    t.string   "register_type",  :limit => 50
    t.string   "process_status", :limit => 50
    t.text     "notes"
    t.string   "documents"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "proprietaries", :force => true do |t|
    t.integer  "nuit",                     :null => false
    t.string   "name",       :limit => 70, :null => false
    t.date     "birth_day"
    t.string   "occupation", :limit => 50
    t.text     "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "proprietary_registers", :force => true do |t|
    t.date     "aquire_date"
    t.string   "register_dute",       :limit => 50
    t.float    "value"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "process_register_id"
  end

  create_table "sale_registers", :force => true do |t|
    t.integer  "process_register_id", :null => false
    t.date     "buy_date"
    t.float    "value"
    t.integer  "seller_id",           :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vehicles", :force => true do |t|
    t.string   "name",               :limit => 30,  :null => false
    t.string   "mark",               :limit => 50,  :null => false
    t.string   "model",              :limit => 50,  :null => false
    t.string   "frame_number",       :limit => 50,  :null => false
    t.string   "engine_number",      :limit => 50,  :null => false
    t.integer  "cylinders",          :limit => 8,   :null => false
    t.integer  "cylinders_cc",                      :null => false
    t.string   "petrol",             :limit => 50,  :null => false
    t.string   "transmission",       :limit => 50,  :null => false
    t.string   "pneumatic_measures", :limit => 30,  :null => false
    t.float    "gross_weight"
    t.float    "tare",                              :null => false
    t.integer  "stocking",                          :null => false
    t.string   "color",              :limit => 50,  :null => false
    t.string   "service",            :limit => 100, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
