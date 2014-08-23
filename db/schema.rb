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

ActiveRecord::Schema.define(version: 20140823194614) do

  create_table "loan_logs", force: true do |t|
    t.integer  "lc_loan_id"
    t.integer  "days_since_last_payment"
    t.string   "credit_score_trend"
    t.integer  "remaining_payments"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "loans", force: true do |t|
    t.integer  "lc_loan_id"
    t.string   "status"
    t.string   "fico_end_range"
    t.datetime "date_time_listed"
    t.boolean  "never_late"
    t.string   "klass"
    t.integer  "maturity"
    t.decimal  "interest_rate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "notes", force: true do |t|
    t.integer  "lc_loan_id"
    t.integer  "lc_note_id"
    t.decimal  "original_note_amout"
    t.decimal  "outstanding_principal"
    t.decimal  "accured_interest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: true do |t|
    t.integer  "lc_order_id"
    t.integer  "lc_note_id"
    t.decimal  "ask_price"
    t.decimal  "markup_discount"
    t.datetime "date_time_listed"
    t.decimal  "ytm"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
