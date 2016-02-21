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

ActiveRecord::Schema.define(version: 20160221010536) do

  create_table "campers", force: :cascade do |t|
    t.integer  "family_id"
    t.string   "alt_address1"
    t.string   "alt_address2"
    t.string   "alt_city"
    t.string   "alt_state"
    t.string   "alt_zipcode"
    t.string   "email"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "preferred_name"
    t.string   "pronoun"
    t.date     "birthdate"
    t.string   "faith"
    t.string   "congregation"
    t.string   "house"
    t.string   "house_preference"
    t.string   "house_q1"
    t.string   "house_q2"
    t.string   "house_q3"
    t.string   "friends"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "families", force: :cascade do |t|
    t.string   "parent1_first_name"
    t.string   "parent2_first_name"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.string   "phone"
    t.string   "alt_phone"
    t.string   "trusted_adults"
    t.string   "referral"
    t.text     "notes"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "parent1_last_name"
    t.string   "parent2_last_name"
    t.string   "parent1_email"
    t.string   "parent2_email"
  end

  create_table "payments", force: :cascade do |t|
    t.integer  "family_id"
    t.float    "amount"
    t.string   "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "registrations", force: :cascade do |t|
    t.boolean  "approved"
    t.boolean  "cancelled"
    t.integer  "year"
    t.boolean  "returning"
    t.float    "cost"
    t.string   "insurance"
    t.string   "allergies"
    t.text     "health_details"
    t.string   "shirt_size"
    t.boolean  "before_care"
    t.boolean  "after_care"
    t.time     "dropoff_time"
    t.time     "pickup_time"
    t.boolean  "medical_release"
    t.boolean  "photo_release"
    t.boolean  "philosophy_release"
    t.boolean  "general_release"
    t.text     "notes"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "shirt_orders", force: :cascade do |t|
    t.string   "shirt_size"
    t.integer  "number"
    t.boolean  "fulfilled"
    t.string   "house"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "staff", force: :cascade do |t|
    t.integer  "family_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "preferred_name"
    t.string   "wiogora_name"
    t.string   "phone"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.string   "email"
    t.text     "education_experience"
    t.text     "why_work_here"
    t.string   "availability"
    t.string   "role"
    t.string   "role_category"
    t.string   "shirt_size"
    t.string   "returning_staff"
    t.string   "house"
    t.string   "guiding_class"
    t.text     "food_allergies"
    t.string   "background_check_agreement"
    t.string   "program_philosophy_agreement"
    t.text     "notes"
    t.string   "parent_permission"
    t.string   "parent_email"
    t.string   "entering_grade"
    t.text     "activities"
    t.text     "essay"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "staff_members", force: :cascade do |t|
    t.integer  "family_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "preferred_name"
    t.string   "wiogora_name"
    t.string   "phone"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.string   "email"
    t.text     "education_experience"
    t.text     "why_work_here"
    t.string   "availability"
    t.string   "role"
    t.string   "role_category"
    t.string   "shirt_size"
    t.string   "returning_staff"
    t.string   "house"
    t.string   "guiding_class"
    t.text     "food_allergies"
    t.string   "background_check_agreement"
    t.string   "program_philosophy_agreement"
    t.text     "notes"
    t.string   "parent_permission"
    t.string   "parent_email"
    t.string   "entering_grade"
    t.text     "activities"
    t.text     "essay"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

end
