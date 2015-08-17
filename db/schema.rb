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

ActiveRecord::Schema.define(version: 20150815025332) do

  create_table "animals", force: :cascade do |t|
    t.date     "dob"
    t.string   "gender"
    t.string   "genotype"
    t.integer  "cage_id"
    t.integer  "tag"
    t.string   "virus"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cages", force: :cascade do |t|
    t.integer  "num_mice"
    t.string   "line"
    t.integer  "num_litters"
    t.string   "pups"
    t.string   "cage_type"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "solutions", force: :cascade do |t|
    t.float    "solute_one"
    t.float    "solute_two"
    t.float    "solute_three"
    t.float    "solute_four"
    t.float    "solute_five"
    t.string   "name"
    t.string   "solute_one_n"
    t.string   "solute_two_n"
    t.string   "solute_three_n"
    t.string   "solute_four_n"
    t.string   "solute_five_n"
    t.float    "final_volume"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.float    "stock_one"
    t.float    "stock_two"
    t.float    "stock_three"
    t.float    "stock_four"
    t.float    "stock_five"
    t.string   "c_metric"
    t.string   "v_metric"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.integer  "role"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
