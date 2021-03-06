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

ActiveRecord::Schema.define(version: 2018_11_24_121141) do

  create_table "add_fields_to_drugstore_medicines", force: :cascade do |t|
    t.string "street"
    t.string "city"
    t.string "state"
    t.integer "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "add_fields_to_drugstores", force: :cascade do |t|
    t.string "street"
    t.string "city"
    t.string "state"
    t.integer "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "admins", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "doctor_prescriptions", force: :cascade do |t|
    t.integer "doctor_id"
    t.integer "patient_id"
    t.integer "medicine_id"
    t.string "dosage"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["doctor_id"], name: "index_doctor_prescriptions_on_doctor_id"
    t.index ["medicine_id"], name: "index_doctor_prescriptions_on_medicine_id"
    t.index ["patient_id"], name: "index_doctor_prescriptions_on_patient_id"
  end

  create_table "doctors", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.integer "hospital_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_doctors_on_email", unique: true
    t.index ["hospital_id"], name: "index_doctors_on_hospital_id"
    t.index ["reset_password_token"], name: "index_doctors_on_reset_password_token", unique: true
  end

  create_table "drugstore_medicines", force: :cascade do |t|
    t.integer "medicine_id"
    t.decimal "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "drugstore_id"
    t.decimal "promotion_price"
    t.index ["drugstore_id"], name: "index_drugstore_medicines_on_drugstore_id"
    t.index ["medicine_id"], name: "index_drugstore_medicines_on_medicine_id"
  end

  create_table "drugstores", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.integer "cep"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "street"
    t.string "city"
    t.string "state"
    t.integer "number"
  end

  create_table "hospitals", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.integer "cep"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "medicines", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "medicine"
    t.string "how_use"
    t.string "effect"
    t.string "indications"
  end

  create_table "patients", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.integer "cep"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_patients_on_email", unique: true
    t.index ["reset_password_token"], name: "index_patients_on_reset_password_token", unique: true
  end

end
