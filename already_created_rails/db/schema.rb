# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_08_12_035058) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "parking_areas", force: :cascade do |t|
    t.string "parking_area_name"
    t.integer "parking_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parking_usage_histories", force: :cascade do |t|
    t.integer "year"
    t.integer "month"
    t.integer "parking_area_id"
    t.integer "parking_user_id"
    t.integer "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parking_users", force: :cascade do |t|
    t.string "parking_user_name"
    t.string "remark"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parkings", force: :cascade do |t|
    t.string "parking_name"
    t.integer "payment_destination_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payment_destinations", force: :cascade do |t|
    t.string "payment_destination_name"
    t.string "institution"
    t.string "account_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payments", force: :cascade do |t|
    t.integer "payment_destination"
    t.integer "year"
    t.integer "month"
    t.integer "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
