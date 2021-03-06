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

ActiveRecord::Schema.define(version: 20170204024440) do

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

  create_table "finishes", force: :cascade do |t|
    t.text     "description"
    t.decimal  "price",       precision: 8, scale: 2
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  create_table "measurements", force: :cascade do |t|
    t.integer  "lenght"
    t.integer  "width"
    t.integer  "amount"
    t.float    "square"
    t.integer  "paint_job_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["paint_job_id"], name: "index_measurements_on_paint_job_id"
  end

  create_table "paint_jobs", force: :cascade do |t|
    t.string   "paint_job_customer"
    t.text     "description"
    t.date     "date_in"
    t.integer  "customer_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "paint_job_finish"
    t.index ["customer_id"], name: "index_paint_jobs_on_customer_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.boolean  "admin",                  default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
