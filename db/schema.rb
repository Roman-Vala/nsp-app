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

ActiveRecord::Schema.define(version: 20160807085441) do

  create_table "customers", force: :cascade do |t|
    t.string   "company_name"
    t.string   "contact_name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "post_code"
    t.string   "phone"
    t.string   "phone2"
    t.string   "email"
    t.string   "email2"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "measurements", force: :cascade do |t|
    t.integer  "lenght"
    t.integer  "width"
    t.integer  "amount"
    t.integer  "paint_job_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.float    "square"
    t.index ["paint_job_id"], name: "index_measurements_on_paint_job_id"
  end

  create_table "paint_jobs", force: :cascade do |t|
    t.string   "customer"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.date     "date_in"
  end

end
