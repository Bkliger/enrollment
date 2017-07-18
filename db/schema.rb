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

ActiveRecord::Schema.define(version: 20170716180845) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "enrollment_students", force: :cascade do |t|
    t.integer  "enrollment_id"
    t.integer  "student_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.text     "first_name"
    t.text     "last_name"
    t.text     "student_num"
  end

  add_index "enrollment_students", ["enrollment_id"], name: "index_enrollment_students_on_enrollment_id", using: :btree
  add_index "enrollment_students", ["student_id"], name: "index_enrollment_students_on_student_id", using: :btree

  create_table "enrollments", force: :cascade do |t|
    t.string   "therapist_name"
    t.string   "date"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "student_num"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "therapists", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "enrollment_students", "enrollments"
  add_foreign_key "enrollment_students", "students"
end
